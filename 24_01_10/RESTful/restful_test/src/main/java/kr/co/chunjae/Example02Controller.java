package kr.co.chunjae;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/exam02")
public class Example02Controller {

    @GetMapping
    public @ResponseBody Person submit(){
        Person person = new Person();
        person.setName("홍길동");
        person.setAge("20");
        person.setEmail("Hong@naver.com");
        System.out.println(person);
        return person;
    }


}
