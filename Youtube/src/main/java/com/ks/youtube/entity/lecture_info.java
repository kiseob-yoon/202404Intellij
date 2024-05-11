package com.ks.youtube.entity;

import lombok.*;


import java.time.LocalDate;


@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class lecture_info {
    private String lec_num;
    private LocalDate lec_start_date;
    private LocalDate lec_end_date;
    private String lec_name;
    private String lec_ex;
}
