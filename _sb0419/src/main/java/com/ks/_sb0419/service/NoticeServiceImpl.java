package com.ks._sb0419.service;

import com.ks._sb0419.entity.Notice;
import com.ks._sb0419.repository.NoticeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class NoticeServiceImpl implements NoticeService{
    private final NoticeRepository noticeRepository; //Autowired 대체법(효율 더 좋음)

    @Override
    public Notice saveNotice(Notice notice){
        noticeRepository.insertNotice(notice);
        return notice;
    }

}
