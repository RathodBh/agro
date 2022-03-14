<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMenu.Master" AutoEventWireup="true" CodeBehind="sell_land.aspx.cs" Inherits="Agroland_Management_System.User.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">

    <!-- Responsive  -->
    <link rel="stylesheet" href="../css/tab.css" />
    <link rel="stylesheet" href="../css/phone.css" />
    
    <!--Bootstrap Cards-->
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title" style="color:brown;">Sell Your Land</strong>
            </div>
            <div class="card-body">

                        <!-- Print message to the user -->
                            <div id="msg" runat="server" class="alert alert-success"
                                style="margin-top:10px; display: none;">
                                <strong>Your request is submitted successfully...!</strong>
                            </div>
                              <div id="msg2" runat="server" class="alert alert-danger"
                                style="margin-top:10px; display: none;">
                                <strong>Please Enter all the details...!</strong>
                            </div>
                            <div id="msg3" runat="server" class="alert alert-danger"
                                style="margin-top:10px; display: none;">
                                <strong>Please enter valid price or enter only number..!</strong>
                            </div>
                            <div id="msg4" runat="server" class="alert alert-danger"
                                style="margin-top:10px; display: none;">
                                <strong>Please upload Image..!</strong>
                            </div>
                             <div id="msg5" runat="server" class="alert alert-danger"
                                style="margin-top:10px; display: none;">
                                <strong>Image require only JPG or JPEG  format !</strong>
                            </div>

                <div id="pay-invoice">
                    <div class="card-body">
                      
                        <form  method="post" novalidate="novalidate" id="f1" runat="server">
                             
    
                            <div class="form-group">
                                <label for="" class="control-label mb-1">Land Name</label>
                                <asp:TextBox ID="p_name" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Address of land (Short Info. about product)</label>
                                <asp:TextBox ID="p_desc" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Price </label>
                                <asp:TextBox ID="p_price" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Land Image</label>
                                <asp:FileUpload ID="p_img" runat="server" class="form-control" />
                            </div>

                            

                             <div class="form-group">
                                <label for="" class="control-label mb-1">Your Name</label>
                                <asp:TextBox ID="unm" runat="server" class="form-control" ReadOnly="true" ></asp:TextBox>
                            </div>
                           
                             <div class="form-group">
                                <label for="" class="control-label mb-1">Your Contact Number</label>
                                <asp:TextBox ID="phno" runat="server" class="form-control" ReadOnly="true" ></asp:TextBox>
                            </div>
                             <div class="form-group">
                                <label for="" class="control-label mb-1">Your City</label>
                                <asp:TextBox ID="ct" runat="server" class="form-control" ReadOnly="true" ></asp:TextBox>
                            </div>
                           
                         <div>

                                <asp:Button ID="btn_ok" runat="server" Text="OK"
                                    class="btn btn-lg btn-info btn-block" onclick="btn_ok_Click" />
                      </div>
                          
                            
                        </form>
                    </div>
                </div>
                

            </div>
        </div>

</asp:Content>
