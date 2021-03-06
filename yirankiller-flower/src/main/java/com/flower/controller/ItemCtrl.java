package com.flower.controller;

import com.flower.entity.item.Item;
import com.flower.entity.item.ItemPropertyType;
import com.flower.service.ItemService;
import com.flower.vo.ItemPropertyOptionList;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

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
    public String findItemById(@PathVariable int id,Model model){
        Item item = itemService.findItemById(id);
        model.addAttribute("item",item);
        model.addAttribute("itemPictureList",item.getItemPictureList());
        return "item";
    }

    @RequestMapping(value = "/j/{id}")
    public @ResponseBody Map<ItemPropertyType,ItemPropertyOptionList> fetchPropertyOption(@PathVariable int id){
        Map<ItemPropertyType,ItemPropertyOptionList> itemPropertyOptionMap;
        itemPropertyOptionMap = itemService.getItemPropertyOptionListById(id);
        return itemPropertyOptionMap;
    }
}
