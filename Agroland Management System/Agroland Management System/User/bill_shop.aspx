<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMenu.Master" AutoEventWireup="true" CodeBehind="bill_shop.aspx.cs" Inherits="Agroland_Management_System.User.WebForm17" %>
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
                <th colspan="2"> 
                <div style="display: flex; flex-direction:row ; justify-content: space-between;">
                    <div>
                    <%--Name:<asp:Label ID="lbl3" runat="server" Text="Label"></asp:Label>--%>
                    </div>
                    <div>
                    Bill no.: <span class="text-primary">S1<%#Eval("id") %></span> 
                    </div>
                </div>
                </th>
             </tr>
             <tr>
                <th colspan=2 style="color: white;background:gray;"><center><h3>E-BILL</h3></center></th>
            </tr>
            <tr>
                <th>Name</th>
                <td><%#Eval("pname") %></td>
            </tr>
            <tr>
                <th>Description</th>
                <td><%#Eval("description") %></td>
            </tr>
            <tr>
                <th>Category</th>
                <td><%#Eval("category") %></td>
            </tr>
            <tr>
                <th>Purchased from</th>
                <td>Shop</td>
            </tr>
           
            <tr>
                <th>&nbsp;
                </th>
                <td>&nbsp;
                </td>
            </tr>
            <tr>
                <th class="text-primary">Total Price</th>
                <th class="text-primary"><%#Eval("price") %></th>
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

