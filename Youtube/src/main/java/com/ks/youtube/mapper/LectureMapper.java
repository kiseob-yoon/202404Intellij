package com.ks.youtube.mapper;


import com.ks.youtube.entity.lecture_info;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface LectureMapper {
    List<lecture_info> lectureList();
    void insertLectureInfo(lecture_info lectureInfo);
    lecture_info selectLecture(String lecNum);

}
