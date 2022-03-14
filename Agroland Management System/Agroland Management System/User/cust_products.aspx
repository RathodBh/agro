<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMenu.Master" AutoEventWireup="true" CodeBehind="cust_products.aspx.cs" Inherits="Agroland_Management_System.User.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">


<link rel="stylesheet" href="../css/products.css" />
<link rel="stylesheet" href="../fa6pro/css/all.css" />

<form id="Form1" runat=server>

    <nav class="p_mainTitle" style="background:green;">
        <h2>All products from seller</h2>
    </nav>
    <div class="container">
        <div class="info">
            <p>From Sellers</p>
            <div class="search_box">

                <asp:TextBox ID="search1" class="search" placeholder="Search.." runat="server" />
                <%--<input type="text" id="search1" class="search" placeholder="Search..">--%>
                    <asp:Button ID="Button1" class="button" runat="server" Text="SEARCH" onclick="Button1_Click" />

            </div>
        </div>


        <hr>
        <asp:Label ID="notFound1" runat="server" Text=""></asp:Label>
        <div class="cards" ID="cards1" runat="server">

            <asp:Repeater ID="r1" runat="server">

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
                            <p class="sub_title" style="height: 19%;">
                                <%#Eval("description") %>
                            </p>
                            <p class="sub_city" style="height: 19%;">
                               City: <%#Eval("ct") %>
                            </p>
                            <hr style="color: black">
                            <p class="price">Price: <%#Eval("price") %>
                            </p>
                            <button class="btn1"><a href="cust_more_info.aspx?id=<%#Eval("id") %>">MORE INFO</a></button>
                        </div>
                    </div>

                </ItemTemplate>

            </asp:Repeater>

        </div>

    </div>


  
</form>
</asp:Content>