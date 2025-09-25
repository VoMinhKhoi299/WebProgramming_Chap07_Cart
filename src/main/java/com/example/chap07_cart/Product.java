package com.example.chap07_cart;

import java.io.Serializable;

import java.io.Serializable;
import java.math.BigDecimal;

public class Product implements Serializable {
    private String id;
    private String description;
    private BigDecimal price;

    public Product() {}

    public Product(String id, String description, BigDecimal price) {
        this.id = id;
        this.description = description;
        this.price = price;
    }

    public String getId() { return id; }
    public void setId(String id) { this.id = id; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public BigDecimal getPrice() { return price; }
    public void setPrice(BigDecimal price) { this.price = price; }
}