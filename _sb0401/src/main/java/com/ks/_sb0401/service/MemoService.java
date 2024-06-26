package com.ks._sb0401.service;

import com.ks._sb0401.entity.Memo;
import org.springframework.stereotype.Service;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Service
public class MemoService {
    @PersistenceContext
    EntityManager em;
    @Transactional
    public void emInsert(){
        Memo memo = Memo.builder()
                .memoText("이것은 테스트")
                .build();
        em.persist(memo); //insert
    }

    public Memo emSelectOne(Long mno){
        return em.find(Memo.class,mno);
    }
}
