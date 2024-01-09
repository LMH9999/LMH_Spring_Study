package kr.co.chunjae;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.*;

@Getter
@Setter
public class Product {

    @NotBlank
    @Size(min = 4, max = 10, message = "4자~10자 이내로 입력해 주세요")
    private String name;

    @NotNull
    @Min(value = 0)
    private Integer price;

}
