package com.ks.restapi0516.repository;


import com.ks.restapi0516.entity.TodoEntity;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TodoRepository extends JpaRepository<TodoEntity, String> {
  List<TodoEntity> findByUserId(String userId);

  @Query("SELECT t FROM TodoEntity t WHERE t.userId = ?1")
  TodoEntity findByUserIdQuery(String userId);

}
