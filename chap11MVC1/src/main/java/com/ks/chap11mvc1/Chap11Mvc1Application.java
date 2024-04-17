package com.ks.chap11mvc1;

import com.ks.chap11mvc1.entity.MemberEntity;
import com.ks.chap11mvc1.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import javax.annotation.PostConstruct;
import java.time.LocalDateTime;

@SpringBootApplication
public class Chap11Mvc1Application {

    @Autowired
    MemberRepository memberRepository;


    public static void main(String[] args) {
        SpringApplication.run(Chap11Mvc1Application.class, args);
    }

    @PostConstruct
    private void init(){
        MemberEntity member = MemberEntity.builder()
                .email("admin@koread.com")
                .name("강하나")
                .password("1234")
                .regdate(LocalDateTime.now())
                .build();
        memberRepository.save(member);
    }

}
