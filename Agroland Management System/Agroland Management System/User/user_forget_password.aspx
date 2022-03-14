<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_forget_password.aspx.cs" Inherits="Agroland_Management_System.User.forget_password" %>

<!DOCTYPE html>
<html lang="en">

<head id="Head1" runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forget Password</title>

    <link rel="stylesheet" href="../css/login.css" />
    <link rel="stylesheet" href="../fa6pro/css/all.css" />
    <style>
        .i1
        { top:13% !important;border:none !important;}
        .i2
        { top:46% !important;border:none !important;}
        .i3
        { bottom:13% !important;left: 18% !important;border:none !important;}
    </style>
</head>

<body id="Body1" runat="server">
<form id="Form1" runat="server">
    <div class="main">
        <h1>RESET PASSWORD</h1>

        <div class="input-hold">
            <asp:TextBox ID="email" type="email" placeholder="Email ID" class="input" runat="server"></asp:TextBox>
            <i class="fas fa-user i1"></i>
            <asp:TextBox ID="sq" type="text" placeholder="Security Question's Answer" class="input" runat="server"></asp:TextBox>
            <i class="fas fa-lock-open i2"></i>
            <asp:TextBox ID="pwd" type="password" name="" placeholder="New password" class="input" runat="server"></asp:TextBox>
            <i class="fas fa-lock i3"></i>
        </div>

        <asp:Button ID="btn_fp" class="btn b1" runat="server" Text="OK" onclick="btn_fp_Click" 
            />
        
        <a href="user_login.aspx" class="btn b2">GO BACK</a>
     

    </div>
</form>

</body>

</html>
