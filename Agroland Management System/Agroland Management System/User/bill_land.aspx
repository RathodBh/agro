<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMenu.Master" AutoEventWireup="true" CodeBehind="bill_land.aspx.cs" Inherits="Agroland_Management_System.User.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">
    <style>
        .bill_hold
        {
            width: 100%;
            display: grid;
            place-items: center;
            padding: 30px;
        }
        .bill
        {
            width: 70%;
            padding: 20px;
        }
        table tr th, table tr td
        {
            padding: 15px;
        }
    </style>
    <div class="bill_hold">
        <div class="bill">
            <h2 class="text-center text-primary">AGROLAND MANAGEMENT SYSTEM</h2>
            <br /><br />
            <div id="Div2" runat="server">
  <table id="Table2" width="100%" >
  
    <asp:Repeater runat="server" ID="r2">
    
    
       
            <ItemTemplate>
             <tr>
                <th colspan=2 style="color: white;background:gray;"><center><h3>E-BILL</h3></center></th>
            </tr>
            <tr>
                <th>Land Name</th>
                <td><%#Eval("l_name") %></td>
            </tr>
            <tr>
                <th>Address</th>
                <td><%#Eval("l_add") %></td>
            </tr>
            
            <tr>
                <th>Seller name</th>
                <td><%#Eval("name") %></td>
            </tr>
            <tr>
                <th>Seller Mobile No.</th>
                <td><%#Eval("ph") %></td>
            </tr>
            <tr>
                <th>&nbsp;
                </th>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <th class="text-primary">Total Price</th>
                <th class="text-primary"><%#Eval("l_price") %></th>
            </tr>
            </ItemTemplate>
            
    </asp:Repeater>

     </table>
        <center><h4>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label></h4></center>
</div>
        </div>
    </div>
</asp:Content>
