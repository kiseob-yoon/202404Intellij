package com.ks._sb0401.controller;

import com.ks._sb0401.entity.Memo;
import com.ks._sb0401.service.MemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController //값을 페이지에 넣는 것(json과 같음)
public class MyController {

    @Autowired
    MemoService memoService;

    @GetMapping("/")
    public Memo root() {
        memoService.emInsert();
        return memoService.emSelectOne(10L);
    }

}