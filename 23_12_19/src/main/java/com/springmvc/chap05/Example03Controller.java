package com.springmvc.chap05;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//@Controller
public class Example03Controller {
    @RequestMapping(value = "/exam03", method = RequestMethod.GET)
    public void requestMethod(){
        System.out.println("@RequestMapping입니다..");
        System.out.println("웹 요청 URL은 /exam03입니다.");
    }
}
