package com.ks.youtube.entity;


import lombok.*;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class contents_manage {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    String conName;
    String conNum;
    String conPlayTime;
    String description;
    String lecName;
    String thumbUrl;
    String videoId;

}
