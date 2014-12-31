package com.flower.util;

import com.flower.entity.item.ItemPropertyOption;
import com.flower.entity.item.ItemPropertyType;
import com.flower.vo.ItemPropertyOptionList;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by eason on 14-12-31.
 */
public class ItemHelper {
    /**
     * Group by different property type.
     * @param itemPropertyOptionList
     * @return the grouped map.
     */
    public static Map<ItemPropertyType,ItemPropertyOptionList> group(List<ItemPropertyOption> itemPropertyOptionList){
        Map<ItemPropertyType,ItemPropertyOptionList> itemPropertyOptionGroupMap = new HashMap();
        if(!CollectionUtils.isEmpty(itemPropertyOptionList)){
            for(ItemPropertyOption itemPropertyOption : itemPropertyOptionList){
                ItemPropertyType itemPropertyType = itemPropertyOption.getItemProperty().getItemPropertyType();
                // if exist,then add to the list.
                if(itemPropertyOptionGroupMap.containsKey(itemPropertyType)){
                    itemPropertyOptionGroupMap.get(itemPropertyType).getItemPropertyOptionList().add(itemPropertyOption);
                }else{ // if not exist,create a ItemPropertyOptionMap,and add to the list.
                    ItemPropertyOptionList itemPropertyOptions = new ItemPropertyOptionList();
                    List<ItemPropertyOption> optionList = new ArrayList<ItemPropertyOption>();
                    optionList.add(itemPropertyOption);
                    itemPropertyOptions.setItemPropertyOptionList(optionList);
                    itemPropertyOptionGroupMap.put(itemPropertyType,itemPropertyOptions);
                }
            }
        }
        return itemPropertyOptionGroupMap;
    }
}
