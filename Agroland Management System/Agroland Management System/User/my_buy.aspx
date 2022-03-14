<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMenu.Master" AutoEventWireup="true" CodeBehind="my_buy.aspx.cs" Inherits="Agroland_Management_System.User.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">

<div id="Div1" runat="server">
  <table id="Table1" width="100%" border=1>
  
    <asp:Repeater runat="server" ID="r1">
    
    
       
            <HeaderTemplate>
             <tr>
                <td colspan=8 style="color: white;background:gray;"><center><h3>My Purchased Products from seller</h3></center></td>
            </tr>
            <tr>
                <th>Product Name</th>
                <th>Desc.</th>
                <th>Price</th>
                <th>Category</th>
                <th>Your Phone No.</th>
                <th>Seller Email</th>
                <th>Seller Address</th>
                <th>Bill</th>
            </tr></HeaderTemplate>
            <ItemTemplate>
            <tr>
                <td><%#Eval("pname") %></td>
                <td><%#Eval("description") %></td>
                <td><%#Eval("price") %></td>
                <td><%#Eval("category") %></td>
                <td><%#Eval("phno") %></td>
                <td>
                    <%#Eval("email") %></td>
                <td>
                    <%#Eval("full_add") %></td>
                <td><a href="bill_prod.aspx?id=<%#Eval("id") %>" class="text-danger text-center">Bill</a></td>
            </tr></ItemTemplate>
            
      
   
    
    </asp:Repeater>
     </table>
      <center><h4>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label></h4></center>

</div>
<hr />
<div id="Div2" runat="server">
  <table id="Table2" width="100%" border=1>
  
    <asp:Repeater runat="server" ID="r2">
    
    
       
            <HeaderTemplate>
             <tr>
                <td colspan=5 style="color: white;background:gray;"><center><h3>My Purchased Products from shop</h3></center></td>
            </tr>
            <tr>
                <th>Product Name</th>
                <th>Desc.</th>
                <th>Price</th>
                <th>Category</th>
                <th>Bill</th>
            </tr></HeaderTemplate>
            <ItemTemplate>
            <tr>
                <td><%#Eval("pname") %></td>
                <td><%#Eval("description") %></td>
                <td><%#Eval("price") %></td>
                <td><%#Eval("category") %></td>
                <td><a href="bill_shop.aspx?id=<%#Eval("id") %>" class="text-danger text-center">Bill</a></td>
            </tr>
            </ItemTemplate>
            
    </asp:Repeater>

     </table>
        <center><h4>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label></h4></center>
</div>
</asp:Content>
