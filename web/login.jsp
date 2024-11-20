<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Banking Login</title>
    <link rel="stylesheet" href="styles.css"> <!-- Optional, for custom styling -->
</head>
<body>
    <h2>Login to Your E-Banking Account</h2>
    <form action="LoginServlet" method="POST">
        <label for="username">Username:</label><br>
        <input type="text" id="username" name="username" required><br><br>

        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required><br><br>

        <button type="submit">Login</button>
    </form>

    <!-- Display error message if any -->
    <c:if test="${not empty param.error}">
        <p style="color:red;">${param.error}</p>
    </c:if>
</body>
</html>
