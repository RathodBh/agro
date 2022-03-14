<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMenu.Master" AutoEventWireup="true" CodeBehind="requested_products.aspx.cs" Inherits="Agroland_Management_System.Admin.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

<link rel="stylesheet" href="../css/products.css" />
<link rel="stylesheet" href="../fa6pro/css/all.css" />

<form id="Form1" runat=server>

    <nav class="p_mainTitle">
        <h2>Sell products</h2>
    </nav>
    <div class="container">
        <div class="info">
            <div class="search_box">

                <asp:TextBox ID="search1" class="search" placeholder="Search.." runat="server" />
                <%--<input type="text" id="search1" class="search" placeholder="Search..">--%>
                    <asp:Button ID="Button1" class="button" runat="server" Text="SEARCH" onclick="Button1_Click" />

            </div>
        </div>

        <hr>
        <asp:Label ID="notFound1" runat="server" Text=""></asp:Label>
        <div class="cards" ID="cards1" runat="server">

            <asp:Repeater ID="r1" runat="server" >

                <ItemTemplate>
                    <div class="card">
                        <div class="img">
                            <%#checkimg(Eval("img"),Eval("id") ) %>
                        </div>
                        <div class="content">
                            <p class="card_title">
                                <%#Eval("pname") %>
                            </p>
                            <hr style="color: black">
                           
                            <hr style="color: black">
                            <p class="price">Price: <%#Eval("price") %>
                             <p class="price">From: <%#Eval("ph") %>
                            </p>
                           <a class="btn1 btn-block mx-auto" href="sell_from_shop.aspx?id=<%#Eval("id") %>">SELL</a>
                        </div>
                    </div>

                </ItemTemplate>

            </asp:Repeater>

        </div>

    </div>

</form>
</asp:Content>

