package com.tan.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tan.model.Book;
import com.tan.service.BookService;

@Controller
@RequestMapping("/book.do")
public class BookController {
    @Autowired
    private BookService bookService;
    @RequestMapping(params = "addbook")
    public String add(Book book){
        System.out.println("bookname:"+book.getName());
        System.out.println("author:"+book.getAuthor());
        bookService.add(book);
        return "success";
    }
    @RequestMapping(params = "method=update")
    public String update(Book book) {
        bookService.update(book);
        return "success";
    }
}