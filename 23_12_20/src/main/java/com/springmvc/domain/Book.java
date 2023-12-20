package com.springmvc.domain;

import lombok.*;

@Getter
@Setter
@NoArgsConstructor
public class Book {
    private String bookId;
    private String name;
    private int unitPrice;
    private String author;
    private String description; //설명
    private String publisher; //출판사
    private String category;
    private long unitsInStock; //재고 수
    private String releaseDate; // 출판일(월/년)
    private String condition; //신규도서 또는 중고도서 또는 전자책

    public Book(String bookId, String name, int unitPrice) {
        this.bookId = bookId;
        this.name = name;
        this.unitPrice = unitPrice;
    }
}
