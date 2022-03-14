<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome.aspx.cs" Inherits="Agroland_Management_System.other.welcome" %>
<!DOCTYPE html>
<html lang="en">
<head  runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Welcome page</title>

    <link rel="stylesheet" href="../css/welcome.css" />

</head>
<body runat="server">

<form  runat="server">
   
    <nav>
        <ul>
            <li><a href="#">HOME</a></li>
            <li><a href="../User/login.aspx">USER LOGIN</a></li>
            <li><a href="../Admin/admin_login.aspx">ADMIN LOGIN</a></li>
            <li><a href="../User/signup.aspx">REGISTRATION</a></li>
        </ul>
    </nav>

    <div class="container">
        <h3>Welcome to </h3>   
        <h1>Agroland Management System </h1>
    </div>
</form>

</body>
</html>