package com.ks.chap11mvc1.repository;

import com.ks.chap11mvc1.spring.Member;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface IMemberDao {

    @Select("select count(*) from member")
    int countMember();

    @Select("select * from member where email = #{email}")
    public Member selectByEmail(String email);

    @Insert("insert into member(EMAIL, PASSWORD, NAME, REGDATE) values(#{email},#{password},#{name},#{registerDateTime})")
    public void insert(Member member);

    @Update("update member set email=#{email},password=#{password},name=#{name} where email =#{email}")
    public void update(Member member);

    @Select("select * from MEMBER")
    public List<Member> selectAll();

}
