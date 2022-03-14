<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMenu.Master" AutoEventWireup="true" CodeBehind="accept_member.aspx.cs" Inherits="Agroland_Management_System.Admin.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Show all contacts</strong>
                        </div>
                        <div class="card-body">

                            <asp:Repeater ID="r1" runat="server">
                                <HeaderTemplate>
                                    <table class="table border" style="background:gainsboro;color:black;">
                                        <thead>         
                                         <tr style="background:black;color:gainsboro;">
                                            <th scope="col">Email</th>
                                            <th scope="col">money</th>
                                            <th scope="col">Accept</th>
                                         </tr>
                                     
                                        <tbody>
                                </HeaderTemplate>


                                <ItemTemplate>
                                    <tr>                 
                                       <td><%#Eval("uemail") %></td>
                                        <td><%#Eval("money") %></th>
                                        <td><a href="mem.aspx?id=<%#Eval("id") %>" class="text-info">Accept</a> </td>
                                    </tr>
                                   
                                </ItemTemplate>


                                <FooterTemplate> 
                                </thead>
                                    </tbody>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>

                        </div>
                    </div>
                </div>

   
</asp:Content>

