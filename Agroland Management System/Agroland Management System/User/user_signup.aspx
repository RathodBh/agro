<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_signup.aspx.cs" Inherits="Agroland_Management_System.Customers.signup" %>

<!DOCTYPE html>
<html lang="en">

<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>User-SignUp</title>

    <link rel="stylesheet" href="../css/login.css" /> 
    <link rel="stylesheet" href="../fa6pro/css/all.css" />
    <style>
        .input{
            margin: 6px !important;
        }
        .b2{
            bottom: 3% !important;
        }
        .new{
            bottom: 13% !important;
        }
        i{
            border: none !important;
        }
        .i11{
            top: 6%;
        }
        .i12{
            top:20%;
        }
        .i13{
            top:34%;
        }
        .i14{
            top:48%;
        }
        .i15{
            top:62%;
        }
        .i16{
            top:76.5%;
        }
        .i17{
            top:90.6%;
        }
    </style>
</head>

<body runat="server">
    <form  method="post" runat="server">
    
    <div class="main" style="height: 90vh;">
        <h1>REGISTRATION</h1>

        <div class="input-hold" >
            <asp:TextBox ID="name" placeholder="Your name" class="input" runat="server"></asp:TextBox>
            <i class="fas fa-user i2 i11"></i>
            <asp:TextBox ID="cno"   placeholder="Contact Number" class="input"  runat="server"> </asp:TextBox>
            <i class="fas fa-phone-alt i2 i12"></i>
            <asp:TextBox ID="email" type="email" placeholder="Email ID" class="input" runat="server"></asp:TextBox>
            <i class="fas fa-envelope i2 i13"></i>
            <asp:TextBox ID="ct" runat="server" placeholder="City" class="input"></asp:TextBox>
            <i class="fas fa-address-card i2 i14"></i>
            <asp:TextBox ID="sq" placeholder="Security Question: Favourite place/ Nickname" class="input " runat="server"></asp:TextBox>
            <i class="fas fa-lock-open i2 i15"></i>
            <asp:TextBox ID="pwd" type="password" placeholder="Password" class="input" runat="server"></asp:TextBox>
            <i class="fas fa-lock i2 i16"></i>
            <asp:TextBox ID="add" runat="server" placeholder="Address" class="input"></asp:TextBox>
            <i class="fas fa-address-card i2 i17"></i>


        </div>
        <asp:Button ID="btn_signup" class="btn b1" Text="SIGN UP"  runat="server" 
            onclick="btn_signup_Click"/>

        <p class="new">already sign-up?</p>
        <asp:Button ID="btn_login" class="btn b2" runat="server" Text="LOGIN" 
            onclick="btn_login_Click" />

    </div>
    </form>
</body>

</html>
