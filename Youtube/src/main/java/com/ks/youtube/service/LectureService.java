package com.ks.youtube.service;

import com.ks.youtube.entity.lecture_info;
import com.ks.youtube.mapper.LectureMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LectureService {
    @Autowired
    private LectureMapper lectureMapper;

    public List<lecture_info> lectureList(){
        return lectureMapper.lectureList();
    }

}
