package com.springmvc.chap07;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class Example03Controller {

    @GetMapping("/exam03")
    public String showForm(){
        return "webpage07_03";
    }

    @ModelAttribute("title")
    public String setTitle(){
        return "@ModelAttribute 유형";
    }

    @ModelAttribute("subtitle")
    public String setSubTitle(){
        return "메소드에 @ModelAttribute 에너테이션 적용하기123";
    }

//    @ModelAttribute
//    public void setsubTitle(Model model){
//        model.addAttribute("subtitle", "메소드에 @ModelAttribute 에너테이션 적용하기");
//    }
}
