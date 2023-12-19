package com.springmvc.chap06;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/home")
public class Example03Controller {
    @GetMapping("/exam03/{bookId}")
    public String requestMethod(@PathVariable String bookId, @MatrixVariable String category, Model model){
        System.out.println("도서 ID : " + bookId);
        System.out.println("도서 분야 : " + category);
        model.addAttribute("data", "도서 ID : " + bookId + "<br>" + "도서 분야 : " + category);
        return "webpage06";
    }
}
