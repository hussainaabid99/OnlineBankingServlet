<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Account Overview</title>
    <link rel="stylesheet" href="styles.css"> <!-- Optional, for custom styling -->
</head>
<body>
    <h2>Welcome, ${sessionScope.username}</h2> <!-- Display username from session -->
    <p>Balance: $${balance}</p> <!-- Display account balance -->

    <form action="TransactionServlet" method="POST">
        <label for="amount">Amount:</label><br>
        <input type="number" id="amount" name="amount" min="1" required><br><br>

        <button type="submit" name="action" value="deposit">Deposit</button>
        <button type="submit" name="action" value="withdraw">Withdraw</button>
    </form>

    <a href="logout.jsp">Logout</a>
</body>
</html>
