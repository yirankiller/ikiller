package com.flower.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by eason on 14-11-4.
 */
@Entity
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public class BaseEntity implements Serializable{
    @TableGenerator(name = "PK_SEQ",
            table = "SEQUENCE_TABLE_FLOWER",
            pkColumnName  = "s_name",
            valueColumnName  = "s_count")

    @Id
    @GeneratedValue(strategy= GenerationType.TABLE,generator="PK_SEQ")
    protected int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
