package com.ks.sb_project;

import com.ks.sb_project.service.MenuService;
import com.ks.sb_project.service.StoreService;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class SbProjectApplicationTests {

    @Autowired
    private StoreService storeService;

    @Autowired
    private MenuService menuService;
    @Test
    void contextLoads() {
        storeService.selectFormattedNumber(1);
    }
    @Test
    @DisplayName("포맷 테스트")
    void format(){
        menuService.selectFormattedNumbers(1);
    }

}
