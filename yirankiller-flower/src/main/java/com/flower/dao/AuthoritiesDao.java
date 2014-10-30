package com.flower.dao;

import com.flower.entity.Authorities;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by eason on 14-10-23.
 */
public interface AuthoritiesDao extends JpaRepository<Authorities,Integer> {
    public Authorities save(Authorities authorities);
}
