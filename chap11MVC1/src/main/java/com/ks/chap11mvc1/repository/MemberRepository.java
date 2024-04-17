package com.ks.chap11mvc1.repository;

import com.ks.chap11mvc1.entity.MemberEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MemberRepository extends JpaRepository<MemberEntity, Long> {
}
