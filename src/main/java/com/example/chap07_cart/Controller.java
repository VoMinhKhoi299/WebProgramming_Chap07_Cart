package com.example.chap07_cart;


import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.annotation.WebServlet;
import java.io.IOException;
import jakarta.servlet.http.HttpSession;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet("/cart")
public class Controller extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
        }

        if ("addToCart".equals(action)) {
            String productId = request.getParameter("productId");
            Product product = ProductIO.getProduct(productId);
            if (product != null) {
                cart.addItem(product);
            }
        } else if ("updateCart".equals(action)) {
            String productId = request.getParameter("productId");
            int quantity = Integer.parseInt(request.getParameter("quantity"));
            cart.updateItem(productId, quantity);
        }

        session.setAttribute("cart", cart);
        getServletContext().getRequestDispatcher("/cart.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }
}