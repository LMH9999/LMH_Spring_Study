package com.springmvc.chap07;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@NoArgsConstructor
@Setter
@Getter
public class Member {
    private int id;
    private String password;
    private String city;
    private String sex;
    private String[] hobby;
    private Date birth;

}
