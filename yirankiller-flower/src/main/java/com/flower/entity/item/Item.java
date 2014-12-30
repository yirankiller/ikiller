package com.flower.entity.item;

import com.flower.entity.BaseEntity;

import javax.persistence.*;
import java.util.List;

/**
 * Created by eason on 14-12-25.
 */
@Entity
public class Item extends BaseEntity {
    private String name;
    private String displayName;
    private double currentPrice;
    private double marketPrice;
    @OneToMany(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinColumn(name = "item_id")
    private List<ItemPicture> itemPictureList;
    @OneToMany(cascade = CascadeType.ALL)
    @JoinColumn(name = "item_id")
    private List<ItemPropertiesOption> itemPropertiesOptionList;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<ItemPropertiesOption> getItemPropertiesOptionList() {
        return itemPropertiesOptionList;
    }

    public void setItemPropertiesOptionList(List<ItemPropertiesOption> itemPropertiesOptionList) {
        this.itemPropertiesOptionList = itemPropertiesOptionList;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public double getCurrentPrice() {
        return currentPrice;
    }

    public void setCurrentPrice(double currentPrice) {
        this.currentPrice = currentPrice;
    }

    public double getMarketPrice() {
        return marketPrice;
    }

    public void setMarketPrice(double marketPrice) {
        this.marketPrice = marketPrice;
    }

    public List<ItemPicture> getItemPictureList() {
        return itemPictureList;
    }

    public void setItemPictureList(List<ItemPicture> itemPictureList) {
        this.itemPictureList = itemPictureList;
    }
}
