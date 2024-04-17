package com.ks.chap11mvc1.spring;

import com.ks.chap11mvc1.repository.IMemberDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;

@Service
public class MemberRegisterService {

	@Autowired
	private MemberDao memberDao;

	@Autowired
	private IMemberDao iMemberDao;

	public Long regist(RegisterRequest req) {
		Member member = iMemberDao.selectByEmail(req.getEmail());
		if (member != null) {
			throw new DuplicateMemberException("dup email " + req.getEmail());
		}
		Member newMember = new Member(
				req.getEmail(), req.getPassword(), req.getName(), 
				LocalDateTime.now());
		iMemberDao.insert(newMember);
		return newMember.getId();
	}
}
