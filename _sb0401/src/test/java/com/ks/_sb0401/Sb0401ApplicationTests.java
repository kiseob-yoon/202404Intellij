package com.ks._sb0401;

import com.ks._sb0401.entity.Memo;
import com.ks._sb0401.repository.MemoRepository;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.stream.IntStream;

@SpringBootTest
class Sb0401ApplicationTests {

    @Autowired
    MemoRepository memoRepository;

    @PersistenceContext
    private EntityManager em;

    @Test
    void emTest(){
        Memo memo = em.find(Memo.class,2L);
        System.out.println(memo);
    }
    @Test
    void emTest2(){
        List<Memo> list
                = em.createQuery("from Memo m where m.mno >5",Memo.class)
                .getResultList();
        list.stream().forEach(e->{
            System.out.println(e);
        });
    }
    @Test
    @Transactional
    void emInsert(){
        Memo memo = Memo.builder()
                .memoText("이것은 테스트")
                .build();
        em.persist(memo); //insert를 persist로 하면 적용됨
    }

    @Test
    void contextLoads() {
        System.out.println(memoRepository.getClass().getName());
    }

    @Test
    @DisplayName("메모 입력 테스트")
    void insertMemo(){
        Memo memo = Memo.builder().memoText("하이").build();
        memoRepository.save(memo);
    }

    @Test
    @DisplayName("메모 입력 테스트")
    void insertMemos(){
        IntStream.rangeClosed(1,10).forEach(i->{
            Memo memo = Memo.builder().memoText("하이"+i).build();
            memoRepository.save(memo);
        });

    }
    @Test
    @Transactional
    @DisplayName("메모 select 테스트")
    void seletcMemos(){
        Long mno = 10L;
        Memo memo = memoRepository.getOne(mno);
        System.out.println(memo);
    }

}
