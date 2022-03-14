<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="welcome_page.aspx.cs" Inherits="Agroland_Management_System.welcome_page" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WELCOME</title>

    <link rel="stylesheet" href="css/welcome.css" />
    <link rel="stylesheet" href="fa6pro/css/all.css" />

</head>
<body>
    
    <nav>
        <div class="bars"><i class="fa fa-tasks fa-2x"></i></div>
        <ul class="ul">
            <li><a href="#">HOME</a></li>
            <li><a href="User/user_login.aspx">USER LOGIN</a></li>
            <li><a href="Admin/admin_login.aspx">ADMIN LOGIN</a></li>
            <li><a href="User/user_signup.aspx">REGISTRATION</a></li>
            <li><a href="contact_us.aspx">CONTACT US</a></li>
            <%--<li><a href="about_us.aspx">ABOUT US</a></li>--%>
        </ul>
        
    </nav>

    <div class="container">
        <h3>Welcome to </h3>
        <h1>Agroland Management System </h1>
    </div>

    <script>
        var bar = document.querySelector(".bars");
        var ul = document.querySelector(".ul");

        bar.addEventListener('click',() => {
            ul.classList.toggle("active");
        });
    </script>
</body>
</html>
