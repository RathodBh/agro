<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMenu.Master" AutoEventWireup="true" CodeBehind="cust_more_info.aspx.cs" Inherits="Agroland_Management_System.User.WebForm19" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">

<link rel="stylesheet" href="../css/more.css" />
 <asp:Repeater ID="r2" runat="server">

                <ItemTemplate>
<div class="main">
        <div class="pic">
            <img src='<%#Eval("img") %>' />
        </div>
        <div>
            <table >
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
                    <td>Seller name: </td>
                    <td><%#Eval("unm") %></td>
                </tr>
                <tr>
                    <td>Contact for BUY: </td>
                    <td><%#Eval("phno") %></td>
                </tr>
                  <tr>
                    <td colspan="2">
                    <div id="show_hide" runat="server">
                        <asp:Label ID="Label1" runat="server" Text="Label">
                        <a id="myhref" href="req_cust.aspx?id=<%#Eval("id") %>"  class="btn1 btn-primary btn  btn-block mx-auto"> Request</a></asp:Label>
                    </div>
                        
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </ItemTemplate>

            </asp:Repeater>

</asp:Content>
