package com.flower.entity.item;

import com.flower.entity.BaseEntity;

import javax.persistence.*;

/**
 * Created by eason on 14-12-25.
 */
@Entity
@org.hibernate.annotations.Proxy(lazy = false)
public class ItemPropertiesOption extends BaseEntity {
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumns({@JoinColumn(name = "item_property_id")})
    private ItemProperty itemProperty;
    private String displayName;

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
}
