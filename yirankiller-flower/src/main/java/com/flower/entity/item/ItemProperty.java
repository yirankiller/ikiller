package com.flower.entity.item;

import com.flower.entity.BaseEntity;

import javax.persistence.*;

/**
 * Created by eason on 14-12-25.
 */
@Entity
public class ItemProperty extends BaseEntity {
    private String propertyName;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "item_property_type_id")
    private ItemPropertyType itemPropertyType;

    public String getPropertyName() {
        return propertyName;
    }

    public void setPropertyName(String propertyName) {
        this.propertyName = propertyName;
    }

    public ItemPropertyType getItemPropertyType() {
        return itemPropertyType;
    }

    public void setItemPropertyType(ItemPropertyType itemPropertyType) {
        this.itemPropertyType = itemPropertyType;
    }
}
