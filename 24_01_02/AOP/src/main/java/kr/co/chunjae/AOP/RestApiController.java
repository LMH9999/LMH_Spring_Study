package kr.co.chunjae.AOP;

import kr.co.chunjae.AOP.annotation.Timer;
import org.springframework.util.StopWatch;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/aoptest")
public class RestApiController {

//    @GetMapping("/get/{id}")
//    public String get(@PathVariable Long id,
//                      @RequestParam String name) {
//        System.out.println("get method");
//        // System.out.println("get method " + id);
//        // System.out.println("get method " + name);
//        return id + " " + name;
//    }
//
//    @PostMapping("/post")
//    public User post(@RequestBody User user) {
//        System.out.println("post method : " + user);
//        return user;
//    }
    @PostMapping("/post")
    public User post(@RequestBody User user) throws InterruptedException {
        StopWatch stopWatch = new StopWatch();
        stopWatch.start();
        System.out.println("post method : " + user);
        Thread.sleep(1000 * 2);
        System.out.println("total time : " + stopWatch.getTotalTimeSeconds());
        return user;
    }

    @Timer
    @DeleteMapping("/delete")
    public void delete() throws InterruptedException {

        Thread.sleep(1000 * 2);

    }
}