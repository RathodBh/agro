<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact_us.aspx.cs" Inherits="Agroland_Management_System.contact_us" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="css/contact.css" />

</head>
<body>
    <form ID="f1" runat="server">
   
    <div class="main-container">
        <h1>Contact Us</h1>
   
        <div class="input-hold">
            <asp:TextBox ID="name" placeholder="Name" class="input" runat="server"></asp:TextBox>
            <%--<input type="text" ID="name" placeholder="Name" class="input">--%>
            
            <asp:TextBox ID="phno" placeholder="Contact Number" class="input" runat="server"></asp:TextBox>
            <%--<input type="text" ID="phno" placeholder="Contact Number" class="input">--%>
            
            <asp:TextBox type="email" ID="email" placeholder="Email ID" class="input" runat="server"></asp:TextBox>
           <%-- <input type="email" ID="email" placeholder="Email ID" class="input">--%>

            <asp:TextBox ID="msgg" runat="server" placeholder="Type your message.."  
                class="input msgg" TextMode="MultiLine" ></asp:TextBox>
            
            <asp:Button class="btnOK" ID="btnOK" runat="server" Text="SUBMIT" 
                onclick="btnOK_Click" />
           <%-- <input type="button" value="SUBMIT" class="btnOK">--%>

        </div>
    </div> 
    
    </form>
</body>
</html>