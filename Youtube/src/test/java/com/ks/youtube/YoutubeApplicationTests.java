package com.ks.youtube;

import com.ks.youtube.entity.contents_manage;
import com.ks.youtube.service.ContentService;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class YoutubeApplicationTests {

    @Autowired
    private ContentService contentService;


    @Test
    void contextLoads() {
        contentService.selectAll();
    }


}
