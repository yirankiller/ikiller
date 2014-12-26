package com.flower.entity.item;

import com.flower.entity.BaseEntity;

import javax.persistence.*;

/**
 * Created by eason on 14-12-25.
 */
@Entity
@org.hibernate.annotations.Proxy(lazy = false)
public class ItemPicture extends BaseEntity {
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumns({@JoinColumn(name = "picture_id")})
    private Picture picture;
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumns({@JoinColumn(name = "item_id")})
    private Item item;

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public Picture getPicture() {
        return picture;
    }

    public void setPicture(Picture picture) {
        this.picture = picture;
    }
}
