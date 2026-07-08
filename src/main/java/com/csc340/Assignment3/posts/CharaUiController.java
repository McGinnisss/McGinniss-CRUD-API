package com.csc340.Assignment3.posts;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

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
        model.addAttribute("character", character);

        return "details";
    }
}
