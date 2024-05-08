package com.ks.youtube.controller;

import com.ks.youtube.entity.contents_manage;
import com.ks.youtube.service.ContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class YoutubeController {

    @Autowired
    private ContentService contentService;

    @GetMapping("/")
    public String main(){
        return "test";
    }

    @GetMapping("content")
    public String content(Model model){
        model.addAttribute("contentList",contentService.selectAll());
        return "content";
    }

    @PostMapping("insertContent")
    public String insertContent(contents_manage contentsManage){
        contentService.insertContent(contentsManage);
        return "redirect:/content";
    }

    @GetMapping("updateContent")
    public String updateContent(contents_manage contentsManage){
        contentService.updateContent(contentsManage);
        return "redirect:/content";
    }
    @GetMapping("deleteContent")
    public String deleteContent(int id){
        contentService.deleteContent(id);
        return "redirect:/content";
    }

    @GetMapping("selectContent")
    @ResponseBody
    public contents_manage selectContent(@RequestParam("conNum") String conNum,Model model){
//        model.addAttribute("selectContent", contentService.selectContent(conNum));
//        return "content";
        return contentService.selectContent(conNum);
    }



}
