package com.flower.dao;

import com.flower.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by eason on 14-10-23.
 */
public interface UserDao extends JpaRepository<User,Integer> {
    public User save(User user);
    public User findByUsername(String user);
}
