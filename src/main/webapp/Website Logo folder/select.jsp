<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            background-image: url('gym_background.jpg');
            background-size: cover;
        }

        .container {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }

        h2 {
            color: #333;
        }

        .login-options {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }

        a {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            margin: 5px 0;
            width: 200px;
            text-align: center;
            text-decoration: none;
            cursor: pointer;
        }

        a:hover {
            background-color: #45a049;
        }
    </style>
    <title>Gym System</title>
</head>
<body>

    <div class="container">
        <h2>Welcome to Gym System</h2>
        
        <div class="login-options">
            <a href="user_login.html">Login as User</a>
            <a href="admin_login.html">Login as Admin</a>
        </div>
    </div>

</body>
</html>
