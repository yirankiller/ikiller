package com.flower.entity.item;

import com.flower.entity.BaseEntity;

import javax.persistence.*;

/**
 * Created by eason on 14-12-25.
 */
@Entity
public class ItemPropertyOption extends BaseEntity {
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "item_property_id")
    private ItemProperty itemProperty;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "item_id")
    private Item item;
    private String displayName;
    private String displayPictureUrl;

    public ItemProperty getItemProperty() {
        return itemProperty;
    }

    public void setItemProperty(ItemProperty itemProperty) {
        this.itemProperty = itemProperty;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getDisplayPictureUrl() {
        return displayPictureUrl;
    }

    public void setDisplayPictureUrl(String displayPictureUrl) {
        this.displayPictureUrl = displayPictureUrl;
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }
}
