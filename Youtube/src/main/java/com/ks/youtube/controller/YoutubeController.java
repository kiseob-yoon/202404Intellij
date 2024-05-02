package com.ks.youtube.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class YoutubeController {

    @GetMapping("/")
    public String main(){
        return "test";
    }

    @GetMapping("content")
    public String content(){
        return "content";
    }
}
