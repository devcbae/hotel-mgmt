package com.devcbae.hotel.jdbc.persistence;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name="`mgmt_item`")
public class Item implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="item_id")
    private Integer itemId;

    @Column(name="item_name")
    private String itemName;

    @Column(name="item_cate_id")
    private String itemCateId;

    public Item() {
    }

    public Integer getItemId() {
        return itemId;
    }

    public String getItemName() {
        return itemName;
    }

    public String getItemCateId() {
        return itemCateId;
    }
}
