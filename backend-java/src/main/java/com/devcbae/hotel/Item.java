package com.devcbae.hotel;

import javax.persistence.*;

@Entity
@Table(name="`mgmt_item`")
public class Item {

    @Id
    @Column(name="item_id")
    private Integer id;

    @Column(name="item_name")
    private String name;

    public Item() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
