<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit User</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

    <h2>Edit User</h2>

    <form action="<%=request.getContextPath()%>/admin?action=edit" method="post">
        <input type="hidden" name="id" value="${user.id}">

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${user.name}" required><br>

        <label for="phoneNumber">Phone Number:</label>
        <input type="text" id="phoneNumber" name="phoneNumber" value="${user.phoneNumber}" required><br>

        <label for="location">Location:</label>
        <input type="text" id="location" name="location" value="${user.location}" required><br>

        <label for="date">Date:</label>
        <input type="text" id="date" name="date" value="${user.date}" required><br>

        <input type="submit" value="Update User">
    </form>

    <p><a href="<%=request.getContextPath()%>/admin">Back to User List</a></p>

</body>
</html>
