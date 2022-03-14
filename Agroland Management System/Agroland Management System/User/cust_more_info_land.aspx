<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMenu.Master" AutoEventWireup="true" CodeBehind="cust_more_info_land.aspx.cs" Inherits="Agroland_Management_System.User.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">

    <link rel="stylesheet" href="../css/more.css" />
 <asp:Repeater ID="r2" runat="server">

                <ItemTemplate>
<div class="main">
        <div class="pic">
            <img src='<%#Eval("path") %>' />
        </div>
        <div>
            <table >
              <tr>
                    <td>Land name:  </td>
                    <td><%#Eval("l_name") %></td>
                </tr>
                <tr>
                    <td>Price:  </td>
                    <td><%#Eval("l_price") %></td>
                </tr>
                 <tr>
                    <td>Area:  </td>
                    <td><%#Eval("l_area") %></td>
                </tr>
                
                 <tr>
                    <td>Land address:  </td>
                    <td><%#Eval("l_add") %></td>
                </tr>
                <tr>
                    <td>Seller name: </td>
                    <td><%#Eval("name") %></td>
                </tr>
                <tr>
                    <td>Contact for BUY: </td>
                    <td><%#Eval("ph") %></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <a href="req_cust.aspx?id=<%#Eval("id") %>" class="btn1 btn-block btn btn-primary mx-auto"> Request</a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    </ItemTemplate>

            </asp:Repeater>

</asp:Content>

