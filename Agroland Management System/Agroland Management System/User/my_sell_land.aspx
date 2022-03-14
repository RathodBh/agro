<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMenu.Master" AutoEventWireup="true" CodeBehind="my_sell_land.aspx.cs" Inherits="Agroland_Management_System.User.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">

<div id="Div1" runat="server">
  <table id="Table1" width="100%" border=1>
  
    <asp:Repeater runat="server" ID="r2">
    
    
       
            <HeaderTemplate>
             <tr>
                <td colspan=7 style="color: white;background:gray;"><center><h3>My Land for selling</h3></center></td>
            </tr>
            <tr>
                <th>Name</th>
                <th>Price</th>
                <th>Add</th>
                <th>Edit</th>
                <th>Sell</th>
                <th>Delete</th>
            </tr></HeaderTemplate>
            <ItemTemplate>
            <tr>
                <td><%#Eval("l_name") %></td>
                <td><%#Eval("l_price") %></td>
                <td><%#Eval("l_add") %></td>
                <td>
                    <a href="edit_sell_land.aspx?id=<%#Eval("id") %>" style="color:brown;" >Edit</a>
               </td>
                <td>
                    <a href="sell_l.aspx?id=<%#Eval("id") %>" style="color:green;" >Sell</a>
               </td>
               <td></td>
            </tr></ItemTemplate>
           
    </asp:Repeater>
      <asp:Label Text="" ID="label1" runat="server" />
     </table>
</div>
</asp:Content>

