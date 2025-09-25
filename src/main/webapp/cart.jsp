<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Cart</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<header>
    <h1>My Super Cart</h1>
</header>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Description</th>
        <th>Price</th>
        <th>Quantity</th>
    </tr>
    <c:forEach var="item" items="${cart.items}">
        <tr>
            <td>${item.product.id}</td>
            <td>${item.product.description}</td>
            <td>${item.product.price}</td>
            <td>
                <form action="cart" method="post">
                    <input type="hidden" name="action" value="updateCart">
                    <input type="hidden" name="productId" value="${item.product.id}">
                    <input type="text" name="quantity" value="${item.quantity}">
                    <input type="submit" value="Update">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

<br/>

<!-- Nút điều hướng -->
<form action="index.jsp" method="get" style="display:inline;">
    <input type="submit" value="Continue Shopping">
</form>

<form action="checkout" method="get" style="display:inline;">
    <input type="submit" value="Checkout">
</form>

</body>
</html>
