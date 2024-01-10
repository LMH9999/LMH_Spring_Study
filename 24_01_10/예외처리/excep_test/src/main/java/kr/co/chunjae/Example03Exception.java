package kr.co.chunjae;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@SuppressWarnings("serial")
public class Example03Exception extends RuntimeException {

    private String errMsg;
    public Example03Exception() {
        this.errMsg = "Example03Exception 메시지입니다.";
    }

    public String getErrMsg() {
        return errMsg;
    }

    public void setErrMsg(String errMsg) {
        this.errMsg = errMsg;
    }
}
