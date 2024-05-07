package com.ks.youtube.mapper;




import com.ks.youtube.entity.contents_manage;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;


@Mapper
public interface ContentMapper {
    int selectCount();
    List<contents_manage> selectList();
    void insertContent(contents_manage contentsManage);
    contents_manage selectContent(String conNum);





}
