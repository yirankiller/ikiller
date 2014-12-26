package com.flower.dao;

import com.flower.entity.item.Item;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by eason on 14-12-25.
 */
public interface ItemDao extends JpaRepository<Item,Integer> {
    public Item findById(int id);
}
