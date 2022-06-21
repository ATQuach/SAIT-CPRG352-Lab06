<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        Hello, ${username} 
        <a href=ShoppingList?action=logout>Logout</a>
        <br>
        <h2>List</h2>
        <form method="post" action="ShoppingList">
            <label>Add item:</label>
            <input type="text" name="item">
            <input type="hidden" name="action" value="add">
            <input type="submit" value="Add">
        </form>
        <br>
        <c:if test="${not empty itemList}">
            <form method="post" action="ShoppingList">
                <c:forEach var="itemList" items="${itemList}">
                    <input type="radio" name="item" value="${itemList}">${itemList}<br>
                </c:forEach>
                <input type="hidden" name="action" value="delete">
                <input type="submit" value="Delete">         
            </form>
        </c:if>
    </body>
</html>
