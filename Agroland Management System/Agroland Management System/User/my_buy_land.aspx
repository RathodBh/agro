<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMenu.Master" AutoEventWireup="true" CodeFile="my_buy_land.aspx.cs" Inherits="Agroland_Management_System.User.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">

  
<div id="Div2" runat="server">
  <table id="Table2" width="100%" border=1>
  
    <asp:Repeater runat="server" ID="r2">
    
    
       
            <HeaderTemplate>
             <tr>
                <td colspan=6 style="color: white;background:gray;"><center><h3>My Purchased Land</h3></center></td>
            </tr>
            <tr>
                <th>Land Name</th>
                <th>Address</th>
                <th>Price</th>
                <th>Seller name</th>
                <th>Seller Mobile No.</th>
                <th>Bill</th>
            </tr></HeaderTemplate>
            <ItemTemplate>
            <tr>
                <td><%#Eval("l_name") %></td>
                <td><%#Eval("l_add") %></td>
                <td><%#Eval("l_price") %></td>
                <td><%#Eval("name") %></td>
                <td><%#Eval("ph") %></td>
                <td><a href="bill_land.aspx?id=<%#Eval("id") %>" class="text-danger">Bill</a></td>
            </tr>
            </ItemTemplate>
            
    </asp:Repeater>

     </table>
        <center><h4>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label></h4></center>
</div>
</asp:Content>
