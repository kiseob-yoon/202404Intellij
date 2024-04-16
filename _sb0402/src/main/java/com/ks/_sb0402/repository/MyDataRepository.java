package com.ks._sb0402.repository;

import com.ks._sb0402.entity.MyData;
import org.springframework.data.jpa.repository.JpaRepository;

public interface MyDataRepository extends JpaRepository<MyData,Long> {
}
