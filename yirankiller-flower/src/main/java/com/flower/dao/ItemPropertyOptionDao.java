package com.flower.dao;

import com.flower.entity.item.Item;
import com.flower.entity.item.ItemPropertyOption;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by eason on 14-12-30.
 */
public interface ItemPropertyOptionDao extends JpaRepository<ItemPropertyOption,Integer> {
    public List<ItemPropertyOption> getOptionsByItem(Item item);
}
