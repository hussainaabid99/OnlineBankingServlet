<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>
</head>
<body>
    <h2>Error!</h2>
    <p>An error occurred during the process. Please try again later.</p>
    <p><a href="login.jsp">Go to Login Page</a></p>

    <c:if test="${not empty param.error}">
        <p style="color:red;">Error: ${param.error}</p>
    </c:if>
</body>
</html>
