package com.ks.youtube.service;



import com.ks.youtube.entity.contents_manage;
import com.ks.youtube.mapper.ContentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class ContentService {

    @Autowired
    private ContentMapper contentMapper;

    public int selectCount(){
        return contentMapper.selectCount();
    }
    public List<contents_manage> selectAll(){
        return contentMapper.selectList();
    }
    public void insertContent(contents_manage contentsManage){
        contentMapper.insertContent(contentsManage);
    }
    public void updateContent(contents_manage contentsManage){
        contentMapper.updateContent(contentsManage);
    }
    public void deleteContent(int id){
        contentMapper.deleteContent(id);
    }

    public contents_manage selectContent(String conNum){
        return contentMapper.selectContent(conNum);
    }
}
