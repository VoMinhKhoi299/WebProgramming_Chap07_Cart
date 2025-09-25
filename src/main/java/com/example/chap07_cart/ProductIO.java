package com.example.chap07_cart;

import com.example.chap07_cart.Product;
import java.io.*;
import java.util.*;


import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

public class ProductIO {
    private static final Map<String, Product> products = new HashMap<>();

    static {
        products.put("36", new Product("36", "Macbook Pro 2099", new BigDecimal("36000")));
        products.put("99", new Product("99", "Chứng chỉ TOEIC rep 1:1", new BigDecimal("990")));
        products.put("01", new Product("01", "Anh da den", new BigDecimal("1")));
    }

    public static Product getProduct(String id) {
        return products.get(id);
    }
}