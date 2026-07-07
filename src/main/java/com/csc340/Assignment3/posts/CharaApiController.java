package com.csc340.crud_api.posts;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/characters")
public class CharaApiController {

  private final CharaService charaService;

  public CharaApiController(CharaService charaService) {
    this.charaService = charaService;
  }

  @GetMapping("/hello")
  public String hello() {
    return "Hello from CharaController!";
  }

  @GetMapping
  public ResponseEntity<List<Character>> getAllCharacters() {
    List<Character> characters = charaService.getAllCharacters();
    return ResponseEntity.ok(characters);
  }

  @GetMapping("/{id}")
  public ResponseEntity<Character> getCharacterById(@PathVariable long id) {
    Character character = charaService.getCharacterById(id);
    if (character != null) {
      return ResponseEntity.ok(character);
    } else {
      return ResponseEntity.notFound().build();
    }
  }

  @PostMapping
  public ResponseEntity<Character> createCharacter(@RequestBody Character character) {
    Character createdCharacter = charaService.createCharacter(character);
    return ResponseEntity.ok(createdCharacter);
  }

  @PutMapping("/{id}")
  public ResponseEntity<Character> updateCharacter(@PathVariable long id, @RequestBody Character updatedCharacter) {
    Character character = charaService.updateCharacter(id, updatedCharacter);
    if (character != null) {
      return ResponseEntity.ok(character);
    } else {
      return ResponseEntity.notFound().build();
    }
  }

  @DeleteMapping("/{id}")
  public ResponseEntity<Void> deleteCharacter(@PathVariable long id) {
    boolean deleted = charaService.deleteCharacter(id);
    if (deleted) {
      return ResponseEntity.noContent().build();
    } else {
      return ResponseEntity.notFound().build();
    }
  }

  @GetMapping("/search")
  public ResponseEntity<List<Character>> searchCharacters(@RequestParam String query) {
    List<Character> characters = charaService.searchCharacters(query);
    return ResponseEntity.ok(characters);
  }

  @GetMapping("/name")
  public ResponseEntity<List<Character>> getCharactersByName(@RequestParam String name) {
    List<Character> characters = charaService.getCharactersByName(name);
    return ResponseEntity.ok(characters);
  }

}