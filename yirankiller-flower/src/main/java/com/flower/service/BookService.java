package com.flower.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.flower.dao.BookDao;
import com.flower.entity.Book;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class BookService {
    @Autowired
    private BookDao bookDao;

    public void add(Book book){
        bookDao.save(book);
    }

    public List<Book> findAllBook(){
        return bookDao.findAll();
    }

}