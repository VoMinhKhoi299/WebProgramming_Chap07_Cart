<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link rel="stylesheet" href="styles/main.css">
</head>
<body>
    <header class="header">
        <h1>CD List</h1>
    </header>
    <table>
        <tr>
            <th>Description</th>
            <th>Price</th>
            <th></th>
        </tr>
        <tr>
            <td>Macbook Pro 2099</td>
            <td class="price">$36.000</td>
            <td>
                <form action="cart" method="post">
                    <input type="hidden" name="action" value="addToCart">
                    <input type="hidden" name="productId" value="36">
                    <input type="submit" value="Add To Cart">
                </form>
            </td>
        </tr>
        <tr>
            <td>Chứng chỉ TOEIC rep 1:1</td>
            <td class="price">$990</td>
            <td>
                <form action="cart" method="post">
                    <input type="hidden" name="action" value="addToCart">
                    <input type="hidden" name="productId" value="99">
                    <input type="submit" value="Add To Cart">
                </form>
            </td>
        </tr>
        <tr>
            <td>Anh da den</td>
            <td class="price">$1</td>
            <td>
                <form action="cart" method="post">
                    <input type="hidden" name="action" value="addToCart">
                    <input type="hidden" name="productId" value="01">
                    <input type="submit" value="Add To Cart">
                </form>
            </td>
        </tr>
    </table>

</body>
</html>