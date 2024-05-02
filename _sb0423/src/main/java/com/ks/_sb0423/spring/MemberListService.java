package com.ks._sb0423.spring;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MemberListService {

    private final MemberDao memberDao;

    public List<Member> getMemberList() {
        return memberDao.selectAll();
    }
}
