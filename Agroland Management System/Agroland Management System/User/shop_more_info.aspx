<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMenu.Master" AutoEventWireup="true" CodeBehind="shop_more_info.aspx.cs" Inherits="Agroland_Management_System.User.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">

<link rel="stylesheet" href="../css/more.css" />
 <asp:Repeater ID="r2" runat="server">

 <ItemTemplate>
<div class="main">
        <div class="pic">
            <img src='<%#Eval("img") %>' />
        </div>
        <div>
            <table border=1>
                <tr>
                    <td>Name:  </td>
                    <td><%#Eval("pname") %></td>
                </tr>
                <tr>
                    <td>Price:  </td>
                    <td><%#Eval("price") %></td>
                </tr>
                 <tr>
                    <td>Category:  </td>
                    <td><%#Eval("category") %></td>
                </tr>
                <tr>
                    <td>Description:  </td>
                    <td><%#Eval("description") %></td>
                </tr>
                <tr>
                    <td>Contact for BUY: </td>
                    <td>+91 9898989898</td>
                </tr>
                <tr>
                    <td colspan="2">
                        <a href="req_shop.aspx?id=<%#Eval("id") %>"  class="btn1 btn-primary btn  btn-block mx-auto"> Request</a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </ItemTemplate>

            </asp:Repeater>

</asp:Content>
