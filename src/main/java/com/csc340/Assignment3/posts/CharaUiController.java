package com.csc340.Assignment3.posts;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

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
}
