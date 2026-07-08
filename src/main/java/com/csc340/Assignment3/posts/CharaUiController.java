package com.csc340.Assignment3.posts;

import org.springframework.stereotype.Controller;

@Controller
public class CharaUiController {

    // Datafield
    private final CharaService charaService;

    public CharaUiController(CharaService charaService) {
        this.charaService = charaService;
    }

    
}
