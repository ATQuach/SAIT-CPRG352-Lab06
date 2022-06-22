<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <form method="post" action="ShoppingList">
            <label>Username:</label>
            <input type="text" name="username" value="">
            <input type="hidden" name="action" value="register">
            <input type="submit" value="Register name">
        </form>
        <p>${message}</p>
    </body>
</html>
