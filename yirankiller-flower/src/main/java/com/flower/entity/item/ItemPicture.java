package com.flower.entity.item;

import com.flower.entity.BaseEntity;

import javax.persistence.*;

/**
 * Created by eason on 14-12-25.
 */
@Entity
public class ItemPicture extends BaseEntity {
    @ManyToOne(cascade = CascadeType.ALL,fetch = FetchType.EAGER)
    @JoinColumn(name = "picture_id")
    private Picture picture;

    public Picture getPicture() {
        return picture;
    }

    public void setPicture(Picture picture) {
        this.picture = picture;
    }
}
