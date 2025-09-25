<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Checkout</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
<header>
    <h1>Checkout Page</h1>
</header>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>Your order summary:</h3>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Description</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Subtotal</th>
    </tr>
    <c:forEach var="item" items="${cart.items}">
        <tr>
            <td>${item.product.id}</td>
            <td>${item.product.description}</td>
            <td>${item.product.price}</td>
            <td>${item.quantity}</td>
            <td>${item.total}</td>
        </tr>
    </c:forEach>
</table>

<br/>
<a href="index.jsp">Back to Shopping</a>
</body>
</html>
