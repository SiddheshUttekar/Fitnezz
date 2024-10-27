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
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            width: 400px;
            text-align: center;
            padding: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            margin: 10px 0;
            text-align: left;
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
            width: 100%;
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

        /* Style for invalid input */
        input:invalid {
            border: 1px solid red;
        }

        .error-message {
            color: red;
            margin-top: -10px;
            margin-bottom: 10px;
            text-align: left;
        }
    </style>
    <title>User Registration</title>
</head>
<body>
    <div class="container">
        <form id="userRegistrationForm" action="URegistrationServlet" method="post" onsubmit="return validateForm()">
            <h2>User Registration</h2>
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="age">Age:</label>
            <input type="number" id="age" name="age" required>

            <label for="mobile">Mobile Number:</label>
            <input type="text" id="mobile" name="mobile" required pattern="[0-9]{10}" title="Enter a valid 10-digit mobile number">

            <label for="email">Email ID:</label>
            <input type="email" id="email" name="email" required pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" title="Enter a valid email address">

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required pattern=".{6,}" title="Password must be at least 6 characters">

            <div class="error-message" id="password-error"></div>

            <button type="submit">Register</button>
        </form>

        <p>Already registered? <a href="user_login.jsp">Login here</a></p>

        <script>
            function validateForm() {
                var password = document.getElementById("password").value;
                var passwordError = document.getElementById("password-error");

                // Basic password length validation
                if (password.length < 7) {
                    passwordError.innerHTML = "Password must be at least 7 characters.";
                    return false;
                } else {
                    passwordError.innerHTML = "";
                }

                // Email validation
                var email = document.getElementById("email").value;
                var emailPattern = /[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
                if (!emailPattern.test(email)) {
                    alert("Enter a valid email address.");
                    return false;
                }

                // Mobile number validation
                var mobile = document.getElementById("mobile").value;
                var mobilePattern = /[0-9]{10}/;
                if (!mobilePattern.test(mobile)) {
                    alert("Enter a valid 10-digit mobile number.");
                    return false;
                }

                return true;
            }
        </script>
    </div>
</body>
</html>
