package com.springmvc.repository;

import com.springmvc.domain.Book;

import java.util.List;

public interface BookRepository {

    List<Book> getAllBookList();

    List<Book> getBookListByCategory(String category);
    Book getBookById(String bookId);
}
