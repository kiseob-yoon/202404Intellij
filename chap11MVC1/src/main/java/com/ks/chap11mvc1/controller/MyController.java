package com.ks.chap11mvc1.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyController {

    @GetMapping("/")
    public String main(){
        return "main";
    }

    @GetMapping("main2")
    public String main2(){
        return "main2";
    }
}
