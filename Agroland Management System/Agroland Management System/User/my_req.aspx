<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMenu.Master" AutoEventWireup="true" CodeBehind="my_req.aspx.cs" Inherits="Agroland_Management_System.User.WebForm26" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">

    <div id="Div1" runat="server">
  <table id="Table1" width="100%" border=1>
  
    <asp:Repeater runat="server" ID="r2">
    
    
       
            <HeaderTemplate>
             <tr>
                <td colspan=7 style="color: white;background:gray;"><center><h3>My Products for selling</h3></center></td>
            </tr>
            <tr>
                <th>Product Name</th>
                <th>Desc.</th>
                <th>Price</th>
                <th>Category</t,h>
                <th>Your Phone No.</th>
                <%--<th>Edit</th>--%>
                <th>Sell</th>
            </tr></HeaderTemplate>
            <ItemTemplate>
            <tr>
                <td><%#Eval("pname") %></td>
                <td><%#Eval("description") %></td>
                <td><%#Eval("price") %></td>
                <td><%#Eval("category") %></td>
                <td><%#Eval("phno") %></td>
                <%--<td>
                    <a href="edit_sell.aspx?id=<%#Eval("id") %>" style="color:brown;" >Edit</a>
               </td>--%>
                <td>
                    <a href="sl.aspx?id=<%#Eval("id") %>" style="color:green;" >Sell</a>
               </td>
            </tr></ItemTemplate>
           
    </asp:Repeater>
      <asp:Label Text="" ID="label1" runat="server" />
     </table>
</div>
</asp:Content>
