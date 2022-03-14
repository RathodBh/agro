<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_login.aspx.cs" Inherits="Agroland_Management_System.Customers.login" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>

    <link rel="stylesheet" href="../css/login.css">
    <link rel="stylesheet" href="../fa6pro/css/all.css">

</head>

<body runat="server">
<form runat="server">
    <div class="main">
        <h1>USER - LOGIN</h1>

        <div class="input-hold">
            <asp:TextBox ID="email" type="email" placeholder="EMAIL" class="input" runat="server"></asp:TextBox>
            <i class="fas fa-user i1"></i>
            <asp:TextBox ID="pwd" type="password" name="" placeholder="PASSWORD" class="input" runat="server"></asp:TextBox>
            <i class="fas fa-lock i2"></i>
        </div>

        <asp:Button ID="btn_login" class="btn b1" runat="server" Text="LOGIN" 
            onclick="btn_login_Click" />
        <a class="forget" href="user_forget_password.aspx">Forget password?</a>

        <p class="new">New user? Registration now</p>
        <a href="user_signup.aspx" class="btn b2" >SIGN UP</a>
     

    </div>
</form>

</body>

</html>
