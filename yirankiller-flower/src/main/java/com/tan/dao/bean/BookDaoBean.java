package com.tan.dao.bean;

import com.tan.dao.BookDao;
import com.tan.model.Book;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 * Created by yiran on 5/6/2014.
 */
@Repository
public class BookDaoBean implements BookDao{
    @PersistenceContext
    private EntityManager em;
    @Override
    public void add(Book book) {
        em.merge(book);
    }

    @Override
    public void update(Book book) {
        em.merge(book);
    }
}
