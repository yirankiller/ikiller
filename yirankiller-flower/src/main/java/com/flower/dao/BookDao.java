package com.flower.dao;


import com.flower.entity.Book;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BookDao extends JpaRepository<Book,Integer>{

    public Book save(Book book);
    public List<Book> findAll();
}