package com.flower.service.impl;

import com.flower.dao.ItemDao;
import com.flower.dao.ItemPropertyOptionDao;
import com.flower.entity.item.Item;
import com.flower.entity.item.ItemPropertyOption;
import com.flower.entity.item.ItemPropertyType;
import com.flower.service.ItemService;
import com.flower.util.ItemHelper;
import com.flower.vo.ItemPropertyOptionList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * Created by eason on 14-12-25.
 */
@Transactional
@Service
public class ItemServiceImpl implements ItemService{
    @Autowired
    private ItemDao itemDao;
    @Autowired
    private ItemPropertyOptionDao itemPropertyOptionDao;

    @Override
    public Item findItemById(int id) {
        Item item = itemDao.findById(id);
        return item;
    }

    @Override
    public Map<ItemPropertyType,ItemPropertyOptionList> getItemPropertyOptionListById(int itemId) {
        Item item = new Item();
        item.setId(itemId);
        List<ItemPropertyOption> itemPropertyOptionList = itemPropertyOptionDao.getOptionsByItem(item);
        Map<ItemPropertyType,ItemPropertyOptionList> itemPropertyOptionGroupMap = ItemHelper.group(itemPropertyOptionList);
        return itemPropertyOptionGroupMap;
    }
}
