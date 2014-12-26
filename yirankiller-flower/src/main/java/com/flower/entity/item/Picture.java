package com.flower.entity.item;

import com.flower.entity.BaseEntity;

import javax.persistence.Entity;

/**
 * Created by eason on 14-12-26.
 */
@Entity
public class Picture extends BaseEntity {
    private String url;
    private boolean enable;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public boolean isEnable() {
        return enable;
    }

    public void setEnable(boolean enable) {
        this.enable = enable;
    }
}
