package com.csc340.Assignment3.posts;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CharaService {

    private final CharaRepository charaRepository;

    CharaService(CharaRepository charaRepository) {
        this.charaRepository = charaRepository;
    }

    public List<Character> getAllCharacters() {
        return charaRepository.findAll();
    }
    public Character getCharacterById(long id) {
        return charaRepository.findById(id).orElse(null);
    }
    public Character createCharacter(Character chara) {
        return charaRepository.save(chara);
    }

    public Character updateCharacter(long id, Character updatedCharacter) {
        Character existingCharacter = charaRepository.findById(id).orElse(null);
        if (existingCharacter != null) {
            existingCharacter.setName(updatedCharacter.getName());
            existingCharacter.setRace(updatedCharacter.getRace());
            existingCharacter.setChClass(updatedCharacter.getChClass());
            existingCharacter.setDescription(updatedCharacter.getDescription());
            return charaRepository.save(existingCharacter);
        }
        return null;
    }

    public boolean deleteCharacter(long id) {
        if (charaRepository.existsById(id)) {
            charaRepository.deleteById(id);
            return true;
        }
        return false;
    }
    @Transactional(readOnly = true)
    public List<Character> searchCharacters(String keyword) {
        return charaRepository.findByNameContainingIgnoreCaseOrRaceContainingIgnoreCaseOrChClassContainingIgnoreCase(keyword, keyword, keyword);
    }

    public List<Character> getCharactersByName(String name) {
        return charaRepository.findByNameContainingIgnoreCase(name);
    }

}