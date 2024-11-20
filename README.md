Banking System
This is a simple Online Banking System project developed using Java Servlets, Oracle Database, and JSP (without JSTL). It allows users to perform basic operations like fund transfers and view transaction history.

Features:
User Authentication (Login)
Fund Transfer between accounts
Transaction History retrieval
Prerequisites:
Before setting up the project, ensure you have the following installed:

JDK 1.8 or above (for compiling and running Java code)
Apache Tomcat 9.x or above (for running the web application)
Oracle Database 10g Express Edition (XE) (for the database)
NetBeans IDE or any Java IDE of your choice
Git (for cloning the repository)
Setup Instructions:
Step 1: Clone the Repository
First, clone the repository to your local machine:

bash
Copy code
git clone https://github.com/your-repository-url.git
Step 2: Set Up Oracle Database
You need to set up your Oracle Database with the following tables and constraints.

1. Create Users Table:
sql
Copy code
CREATE TABLE Users (
    USER_ID NUMBER PRIMARY KEY,
    USERNAME VARCHAR2(50) NOT NULL,
    PASSWORD VARCHAR2(50) NOT NULL
);
2. Create Transactions Table:
sql
Copy code
CREATE TABLE Transactions (
    TRANSACTION_ID NUMBER PRIMARY KEY,
    FROM_ACCOUNT VARCHAR2(50),
    TO_ACCOUNT VARCHAR2(50),
    AMOUNT NUMBER,
    TIMESTAMP DATE,
    FROM_USER_ID NUMBER,
    TO_USER_ID NUMBER,
    FOREIGN KEY (FROM_USER_ID) REFERENCES Users(USER_ID),
    FOREIGN KEY (TO_USER_ID) REFERENCES Users(USER_ID)
);
Step 3: Configure Database Connection
DBUtil.java: Update the connection details in the DBUtil class to match your local Oracle Database configuration (username, password, host, and port).
java
Copy code
public class DBUtil {
    private static final String URL = "jdbc:oracle:thin:@localhost:1521:XE";  // Update the URL
    private static final String USERNAME = "your_username"; // Replace with your DB username
    private static final String PASSWORD = "your_password"; // Replace with your DB password
}
Step 4: Set Up Apache Tomcat
Download and install Apache Tomcat 9.x from here.
Configure Tomcat to work with NetBeans or your IDE by setting the server paths.
Step 5: Import Project in IDE
Open NetBeans IDE (or your preferred IDE).
Go to File → Open Project.
Select the folder where the repository is cloned and open it.
Step 6: Build and Deploy the Application
Compile the project (in NetBeans or your IDE) to ensure there are no errors.
Deploy the project on the Apache Tomcat server through the IDE or manually by copying the web/ folder into the webapps directory of your Tomcat installation.
Start Tomcat.
Step 7: Access the Application
Open your browser and go to:

bash
Copy code
http://localhost:8080/your-project-name/login.html
Login with a username and password (make sure you've added users to the Users table).

After logging in, users can:

View their transaction history.
Transfer funds between different accounts.
Step 8: Troubleshooting
Transaction history not showing: Ensure that both FROM_USER_ID and TO_USER_ID are correctly inserted into the Transactions table. Run a query like:

sql
Copy code
SELECT * FROM Transactions WHERE FROM_USER_ID = [userId];
Database connection issues: Check your Oracle DB username, password, and connection URL in the DBUtil.java file.

File Structure:
bash
Copy code
/src
  /com
    /banking
      /dao
        - TransactionDAO.java
        - UserDAO.java
      /model
        - Transaction.java
      /servlets
        - HistoryServlet.java
        - LoginServlet.java
        - TransferServlet.java
  /web
    /WEB-INF
      - web.xml
    - login.html
    - dashboard.html
    - history.jsp
    - transfer.jsp
    - styles.css
Contributing
Fork the repository
Create a new branch
Make your changes and commit
Push to the branch and create a pull request
License
This project is licensed under the MIT License.







