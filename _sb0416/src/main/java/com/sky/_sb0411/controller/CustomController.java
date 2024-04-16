package com.sky._sb0411.controller;

import com.sky._sb0411.custom.FormCommand;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/custom/form")
@Slf4j
public class CustomController {
    @GetMapping
    public String form(Model model, FormCommand formCommand){
        List<String> loginTypes = new ArrayList<String>();
        loginTypes.add("일반회원");
        loginTypes.add("기업회원");
        loginTypes.add("헤드헌터회원");

        model.addAttribute("loginTypes",loginTypes);
        return "/custom/form";
    }

    @PostMapping
    public String result(){
        return "/custom/result";
    }
}
