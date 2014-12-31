package com.flower.service;

import com.flower.entity.item.Item;
import com.flower.entity.item.ItemPropertyType;
import com.flower.vo.ItemPropertyOptionList;
import org.springframework.transaction.annotation.Transactional;

import java.util.Map;

/**
 * Created by eason on 14-12-25.
 */
@Transactional
public interface ItemService {
    public Item findItemById(int id);
    public Map<ItemPropertyType,ItemPropertyOptionList> getItemPropertyOptionListById(int itemId);
}
