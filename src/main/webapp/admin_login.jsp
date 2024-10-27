<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url('./images/bggym.jpg');
            background-size: cover;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 300px; /* Adjust the width as needed */
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            margin: 10px 0;
        }

        input {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            box-sizing: border-box;
        }

        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
        }

        a {
            color: #2196F3;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
    <title>Admin Login</title>
</head>
<body>
    <div class="container">
        <form id="adminLoginForm" action="AdminLoginServlet" method="post">
            <h2>Admin Login</h2>
            <label for="adminUsername">Username:</label>
            <input type="text" id="adminUsername" name="adminUsername" required>

            <label for="adminPassword">Password:</label>
            <input type="password" id="adminPassword" name="adminPassword" required>

            <button type="submit">Login</button>
        </form>

        <!-- You can add a link to the admin registration page if needed -->
    </div>
</body>
</html>
