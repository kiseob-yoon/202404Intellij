package com.ks._sb0419;

import com.ks._sb0419.entity.Notice;
import com.ks._sb0419.repository.NoticeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

import javax.annotation.PostConstruct;
import java.util.stream.IntStream;

@RequiredArgsConstructor
@SpringBootApplication
public class Sb0419Application {

    private final NoticeRepository noticeRepository;

    public static void main(String[] args) {
        SpringApplication.run(Sb0419Application.class, args);
    }

    @PostConstruct
    private void init(){
        IntStream.rangeClosed(1,100).forEach(i->{
            Notice notice = Notice.builder()
                    .title("제목"+i)
                    .content("내용"+i)
                    .build();
            noticeRepository.insertNotice(notice);
        });

    }
}
