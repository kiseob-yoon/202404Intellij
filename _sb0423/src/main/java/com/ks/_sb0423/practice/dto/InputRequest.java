package com.ks._sb0423.practice.dto;


import lombok.Data;

import javax.validation.constraints.*;

@Data

public class InputRequest {
 //   @NotEmpty
    @NotBlank
    private String name;
    @NotNull
    @Min(value = 18,message = "18세 이하여야 합니다.")
    @Max(value = 100,message = "100세 이하여야 합니다.")
    private Integer age;
    @Pattern(regexp = "^[0-9]{3}[-]+[0-9]{4}[-]+[0-9]{4}$",message = "전화번호 형식이 틀립니다.")
    private String phone;
    @Pattern(regexp = "^[\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,4}$",message = "이메일 형식이 맞지 않습니다.")
    private String email;
    private String addr;
}
