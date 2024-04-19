package com.ks._sb0419.service;

import com.ks._sb0419.entity.Notice;
import com.ks._sb0419.repository.NoticeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class DetailServiceImpl implements DetailService{
    private final NoticeRepository noticeRepository;

    @Override
    public Notice detail(Long seq){
        Notice notice = noticeRepository
                .findById(seq).orElseThrow();
        return notice;
    }

}
