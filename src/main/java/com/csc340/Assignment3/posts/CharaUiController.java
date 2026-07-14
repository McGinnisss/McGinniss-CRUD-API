package com.csc340.Assignment3.posts;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class CharaUiController {

    // Datafield
    private final CharaService charaService;

    public CharaUiController(CharaService charaService) {
        this.charaService = charaService;
    }

    @GetMapping("/about")
    public String about(){
        return "about";
    }

    @GetMapping("/characters/{id}")
    public String getCharaById(@PathVariable Long id, Model model) {
        Character character = charaService.getCharacterById(id);
        if (character == null) {
            return "redirect:/";
        }
        model.addAttribute("character", character);

        return "details";
    }

      @GetMapping()
    public String getAllPosts(Model model) {
        model.addAttribute("characterList", charaService.getAllCharacters());
        model.addAttribute("pageTitle", "Frieren Character Gallery");
        
        return "index";
  }
    
    @GetMapping("/characters/add/new")
    public String showNewCharacterForm() {
        return "new-character-form"; 
    }

    @PostMapping("/characters/add/new")
    public String createCharacterFromForm(
            @RequestParam("name") String name,
            @RequestParam("race") String race,
            @RequestParam("chClass") String chClass,
            @RequestParam("description") String description,
            @RequestParam(value = "imageFile", required = false) MultipartFile imageFile) {

        byte[] imageData = null;

        if (imageFile != null && !imageFile.isEmpty()) {
            try {
                    imageData = imageFile.getBytes();
            } catch (IOException e) {
                System.err.println("Failed to read image bytes: " + e.getMessage());
            }
        }
        Character newCharacter = new Character(name, race, chClass, description, imageData);

        try {
            charaService.createCharacter(newCharacter);
        } catch (Exception e) {
            System.err.println("Database save failed. Check if Neon is connected or constraints are violated: " + e.getMessage());
            e.printStackTrace();
            return "redirect:/characters/add/new?error";
        }
        return "redirect:/";
    }

    @GetMapping("/characters/edit/{id}")
    public String showUpdateForm(@PathVariable Long id, Model model) {
        Character character = charaService.getCharacterById(id);
        if (character == null) {
            return "redirect:/";
        }
        model.addAttribute("character", character);
        model.addAttribute("pageTitle", "Update Character: " + character.getName());
        return "character-update";
    }

    @PostMapping("/characters/edit/{id}")
    public String updateCharacterFromForm(
            @PathVariable Long id,
            @RequestParam("name") String name,
            @RequestParam("race") String race,
            @RequestParam("chClass") String chClass,
            @RequestParam("description") String description,
            @RequestParam("imageFile") MultipartFile imageFile) {

        Character existingCharacter = charaService.getCharacterById(id);
        
        if (existingCharacter != null) {
            existingCharacter.setName(name);
            existingCharacter.setRace(race);
            existingCharacter.setChClass(chClass);
            existingCharacter.setDescription(description);

            try {
                if (!imageFile.isEmpty()) {
                    existingCharacter.setImageData(imageFile.getBytes());
                }
            } catch (IOException e) {
                e.printStackTrace();
            }

            charaService.updateCharacter(id, existingCharacter);
        }

        return "redirect:/characters/" + id;
    }


    @GetMapping("/characters/delete/{id}")
    public String deleteCharacter(@PathVariable Long id) {
        boolean isDeleted = charaService.deleteCharacter(id);
        if (isDeleted) {
        return "redirect:/";
        }
        return "redirect:/characters/" + id + "?error=true";
    }
}
