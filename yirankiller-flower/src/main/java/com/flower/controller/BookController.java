package com.flower.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.flower.entity.Book;
import com.flower.service.BookService;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/book.do")
public class BookController {
    Logger logger = LoggerFactory.getLogger(Book.class);
    @Autowired
    private BookService bookService;
    @RequestMapping(params = "addbook")
    public String add(Book book,Model model){
        logger.info("bookname:" + book.getName());
        logger.info("author:" + book.getAuthor());
        bookService.add(book);
        model.addAttribute("bookList",bookService.findAllBook());
        return "index";
    }
    @RequestMapping(params = "method=update")
    public String update(Book book) {
        return "succ2ess";
    }
}