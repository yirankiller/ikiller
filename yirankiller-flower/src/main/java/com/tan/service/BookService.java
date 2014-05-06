package com.tan.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.tan.dao.BookDao;
import com.tan.model.Book;
import org.springframework.transaction.annotation.Transactional;

@Component
public class BookService {
    @Autowired
    private BookDao bookDao;

    public void add(Book book){
        bookDao.add(book);
    }
    public void update(Book book){
        bookDao.update(book);
    }

}