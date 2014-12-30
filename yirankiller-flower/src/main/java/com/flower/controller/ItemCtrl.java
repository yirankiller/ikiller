package com.flower.controller;

import com.flower.entity.item.Item;
import com.flower.service.ItemService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.text.NumberFormat;

/**
 * Created by eason on 14-12-25.
 */
@Controller
@RequestMapping(value = "/item")
public class ItemCtrl {
    Logger logger = LoggerFactory.getLogger(ItemCtrl.class);
    @Autowired
    private ItemService itemService;

    @RequestMapping(value = "/f/{id}.html")
    public String findItemById(@PathVariable String id,Model model){
        int itemId;
        try{
            itemId = Integer.parseInt(id);
            Item item = itemService.findItemById(itemId);
            model.addAttribute("item",item);
            model.addAttribute("itemPictureList",item.getItemPictureList());
        }catch (NumberFormatException e){
            logger.error("Not valid item id: "+id,e);
            return "index";
        }catch (Exception e){
            logger.error("Not exist item id: "+id,e);
            return "index";
        }

        return "item";
    }
}
