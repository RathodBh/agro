<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMenu.Master" AutoEventWireup="true" CodeBehind="sell.aspx.cs" Inherits="Agroland_Management_System.User.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">

    <!-- Responsive  -->
    <link rel="stylesheet" href="../css/tab.css" />
    <link rel="stylesheet" href="../css/phone.css" />
    
    <!--Bootstrap Cards-->
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title" style="color:brown;">Sell Your Products</strong>
            </div>
            <div class="card-body">

                        <!-- Print message to the user -->
                            <div id="msg" runat="server" class="alert alert-success"
                                style="margin-top:10px; display: none;">
                                <strong>Your Product sell successfully...!</strong>
                            </div>
                            
                <div id="pay-invoice">
                    <div class="card-body">
                      
                        <form  method="post" novalidate="novalidate" id="f1" runat="server">
                             
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Product Name</label>
                                <asp:TextBox ID="p_name" runat="server" class="form-control"   ReadOnly="true"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Description:</label>
                                <asp:TextBox ID="p_desc" runat="server" class="form-control" readonly></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Confirm Price 
                                   ( <asp:Label ID="Label" runat="server" Text="Label"></asp:Label> )</label>
                                <asp:TextBox ID="p_price" runat="server" class="form-control" ></asp:TextBox>
                            </div>

                             <div class="form-group">
                                <label for="" class="control-label mb-1">Buyer Phone number</label>
                                <asp:TextBox ID="bph" runat="server" class="form-control" ></asp:TextBox>
                            </div>
                            
                             <div class="form-group">
                                <label for="" class="control-label mb-1">Your Name</label>
                                <asp:TextBox ID="unm" runat="server" class="form-control" ReadOnly="true" ></asp:TextBox>
                            </div>

                             <div class="form-group">
                                <label for="" class="control-label mb-1">Your Email </label>
                                <asp:TextBox ID="email" runat="server" class="form-control" ReadOnly="true" ></asp:TextBox>
                            </div>

                             <div class="form-group">
                                <label for="" class="control-label mb-1">Your Contact Number</label>
                                <asp:TextBox ID="phno" runat="server" class="form-control" ReadOnly="true" ></asp:TextBox>
                            </div>
                             <div class="form-group">
                                <label for="" class="control-label mb-1">Your City</label>
                                <asp:TextBox ID="ct" runat="server" class="form-control" ReadOnly="true" ></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Your Full Address</label>
                                <asp:TextBox ID="addr" runat="server" class="form-control" ReadOnly="true" ></asp:TextBox>
                            </div>

                         <div>

                                <asp:Button ID="btn_ok" runat="server" Text="CONFIRM SELL"
                                    class="btn btn-lg btn-info btn-block" onclick="btn_ok_Click" />
                      </div>
                          
                            
                        </form>
                    </div>
                </div>
                

            </div>
        </div>

</asp:Content>

