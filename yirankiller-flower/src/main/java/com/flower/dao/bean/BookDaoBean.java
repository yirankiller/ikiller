package com.flower.dao.bean;

import com.flower.dao.BookDao;
import com.flower.model.Book;
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
        em.persist(book);
    }

    @Override
    public void update(Book book) {
        em.merge(book);
    }
}
