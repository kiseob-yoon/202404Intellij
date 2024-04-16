package com.ks._sb0402;

import com.ks._sb0402.entity.MyData;
import com.ks._sb0402.repository.MyDataRepository;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;
import java.util.Optional;
import java.util.stream.IntStream;

@SpringBootTest
class Sb0402ApplicationTests {

    @Autowired
    MyDataRepository myDataRepository;

//  @Test
    void contextLoads() {
        IntStream.rangeClosed(1,10).forEach(i->{
            MyData myData = MyData.builder()
                    .age(25+i)
                    .mail("kim"+i+"@korea.com")
                    .memo("이것은 메모"+i)
                    .name("kim"+i)
                    .build();
            myDataRepository.save(myData);
        });
    }
    //@Test
    void updateMyData(){
        MyData myData = MyData.builder()
                .id(1L)
                .age(31)
                .mail("kim31@korea.com")
                .memo("이것은 메모31")
                .name("kim31")
                .build();
        myDataRepository.save(myData);
    }
    @Test
    void selectAllMyData(){ //allselector
        List<MyData> list = myDataRepository.findAll();
        list.stream().forEach(m->{
            System.out.println(m);
        });
//        for(MyData myData : list){
//            System.out.println(myData);
//        }
    }
    @Test
    void deleteOne(){
        myDataRepository.deleteById(11L); //아이디로 삭제하는 메서드
    }

    @Test
    void selectOne(){
        Optional<MyData> myData = myDataRepository.findById(1L); //Optional로 nullpointerException 방지
        if(myData.isPresent()){
            System.out.println(myData.get());
        } else{
            System.out.println("자료 없음");
        }
    }


    //@Test
    @DisplayName("입력 테스트")
    void insertMyData(){
        MyData myData = MyData.builder()
                .age(25)
                .mail("www@naver.com")
                .memo("반가워")
                .name("더블유")
                .build();
        myDataRepository.save(myData);
    }

    @Test
    void find2(){
        List<MyData> list = myDataRepository.findByIdBetween(3L,7L);
        list.stream().forEach(m->{
            System.out.println(m);
        });
//        for(MyData myData : list){
//            System.out.println(myData);
//        }
    }
    @Test
    void find3(){
        List<MyData> list = myDataRepository.findAll2();
        list.stream().forEach(m->{
            System.out.println(m);
        });
    }




}
