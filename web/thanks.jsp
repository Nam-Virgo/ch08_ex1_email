<%@ page contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Murach's Java Servlets and JSP</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>    
</head>

<body>
    <h1>Thanks for joining our email list</h1>

    <p>Here is the information that you entered:</p>

    <label>Email:</label>
    <span>${sessionScope.user.email}</span><br>

    <label>First Name:</label>
    <span>${sessionScope.user.firstName}</span><br>

    <label>Last Name:</label>
    <span>${sessionScope.user.lastName}</span><br>

    <p>To enter another email address, click on the Back 
    button in your browser or the Return button shown 
    below.</p>

    <form action="" method="get">
        <input type="hidden" name="action" value="join">
        <input type="submit" value="Return">
    </form>
    
    <p>Current date: ${requestScope.currentDate}</p>

    <h2>First two users in the list:</h2>
    <p>1. ${users[0].firstName} ${users[0].lastName} (${users[0].email})</p>
    <p>2. ${users[1].firstName} ${users[1].lastName} (${users[1].email})</p>

    <p>If you have questions, please contact our customer service at:
        <strong>${initParam.custServEmail}</strong>
    </p>

</body>
</html>