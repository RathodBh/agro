<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMenu.Master" AutoEventWireup="true" CodeBehind="show_my_agriculture_product.aspx.cs" Inherits="Agroland_Management_System.Admin.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">

<link rel="stylesheet" href="../css/products.css" />
<link rel="stylesheet" href="../fa6pro/css/all.css" />

<form id="Form1" runat=server>

    <nav class="p_mainTitle">
        <h2>Product : Agricultural Products</h2>
    </nav>
    <div class="container">
        <div class="info">
            <p>New</p>
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
                            <p class="sub_title">
                                <%#Eval("description") %>
                            </p>
                            <hr style="color: black">
                            <p class="price">Price: <%#Eval("price") %>
                            </p>
                             <a href="edit.aspx?id=<%#Eval("id") %>"><button class="btn1">EDIT</button></a>
                        </div>
                    </div>

                </ItemTemplate>

            </asp:Repeater>

        </div>

    </div>


  
</form>
</asp:Content>