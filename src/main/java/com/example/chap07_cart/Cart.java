package com.example.chap07_cart;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Cart implements Serializable {
    private List<LineProduct> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public List<LineProduct> getItems() {
        return items;
    }

    public void addItem(Product product) {
        for (LineProduct lp : items) {
            if (lp.getProduct().getId().equals(product.getId())) {
                lp.setQuantity(lp.getQuantity() + 1);
                return;
            }
        }
        items.add(new LineProduct(product, 1));
    }

    public void updateItem(String productId, int quantity) {
        items.removeIf(lp -> lp.getProduct().getId().equals(productId) && quantity <= 0);
        for (LineProduct lp : items) {
            if (lp.getProduct().getId().equals(productId)) {
                lp.setQuantity(quantity);
                return;
            }
        }
    }
}