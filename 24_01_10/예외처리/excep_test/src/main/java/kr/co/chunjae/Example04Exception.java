package kr.co.chunjae;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice(basePackages = {"kr.co.chunjae"})
public class Example04Exception {

    @ExceptionHandler(value = {RuntimeException.class})
    public ModelAndView handleErrorMethod(Exception ex) {
        ModelAndView model = new ModelAndView();
        model.addObject("errorMessage", "Example04Exception 메시지 입니다");
        model.addObject("exception", ex);
        model.setViewName("webpage10_03");
        return model;
    }
}
