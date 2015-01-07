package com.flower.entity.item;

import com.flower.entity.BaseEntity;

import javax.persistence.Entity;

/**
 * Created by eason on 14-12-25.
 */
@Entity
public class ItemPropertyType extends BaseEntity {
    private String typeName;
    private String displayLabelName;

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public String getDisplayLabelName() {
        return displayLabelName;
    }

    public void setDisplayLabelName(String displayLabelName) {
        this.displayLabelName = displayLabelName;
    }

    @Override
    public String toString() {
        return getDisplayLabelName()+"---"+getId();
    }
}
