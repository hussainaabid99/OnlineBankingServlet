<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout</title>
</head>
<body>
    <h2>You have successfully logged out!</h2>
    <p><a href="login.jsp">Click here to log in again</a></p>

    <% 
        // Invalidate the session
        session.invalidate();
    %>
</body>
</html>
