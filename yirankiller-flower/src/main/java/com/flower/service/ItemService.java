package com.flower.service;

import com.flower.entity.item.Item;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by eason on 14-12-25.
 */
@Transactional
public interface ItemService {
    public Item findItemById(int id);
}
