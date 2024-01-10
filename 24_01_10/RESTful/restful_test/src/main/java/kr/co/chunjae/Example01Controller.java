package kr.co.chunjae;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/exam01")
public class Example01Controller {

    @GetMapping
    public String showForm(){
        return "webpage14_01";
    }

    @PostMapping
    public String submit(@RequestBody String param, Model model) {
        model.addAttribute("title", "@RequestBody로 정보 받기");
        model.addAttribute("result", param);
        return "webpage_result";
    }
}
