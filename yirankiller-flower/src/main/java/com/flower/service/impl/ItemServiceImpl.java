package com.flower.service.impl;

import com.flower.dao.ItemDao;
import com.flower.entity.item.Item;
import com.flower.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by eason on 14-12-25.
 */
@Transactional
@Service
public class ItemServiceImpl implements ItemService{
    @Autowired
    private ItemDao itemDao;

    @Override
    public Item findItemById(int id) {
        Item item = itemDao.findById(id);
        return item;
    }
}
