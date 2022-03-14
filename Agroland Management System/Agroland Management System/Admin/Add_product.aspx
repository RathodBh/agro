<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMenu.Master" AutoEventWireup="true" CodeBehind="Add_product.aspx.cs" Inherits="Agroland_Management_System.Admin.WebForm2" %>
   
    <asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
        <!-- Responsive  -->
    <link rel="stylesheet" href="../css/tab.css" />
    <link rel="stylesheet" href="../css/phone.css" />
    
            <!--Bootstrap Cards-->
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title" style="color:brown;">Add New Products</strong>
            </div>
            <div class="card-body">

                        <!-- Print message to the user -->
                            <div id="msg" runat="server" class="alert alert-success"
                                style="margin-top:10px; display: none;">
                                <strong>Your Product added successfully...!</strong>
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
                                <label for="" class="control-label mb-1">Product Name</label>
                                <asp:TextBox ID="p_name" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Description (Short Info. about product)</label>
                                <asp:TextBox ID="p_desc" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Price </label>
                                <asp:TextBox ID="p_price" runat="server" class="form-control"></asp:TextBox>
                            </div>

                            
                            <div class="form-group" >
                                <label for="" class="control-label mb-1">Category</label>
                                <asp:DropDownList ID="dd_category"  class="form-control" runat="server" 
                                    AutoPostBack="True" 
                                   >
                                    <asp:ListItem>New Tractor</asp:ListItem>
                                    <asp:ListItem>New Harvester Cutter</asp:ListItem>
                                     <asp:ListItem>New Thresher</asp:ListItem>
                                    <asp:ListItem>New Tools</asp:ListItem>
                                    <asp:ListItem>Old Tractors</asp:ListItem>
                                     <asp:ListItem>Old Harvester Cutter</asp:ListItem>
                                    <asp:ListItem>Old Thresher</asp:ListItem>
                                    <asp:ListItem>Old Tools</asp:ListItem>
                                    <asp:ListItem>Agriculture Product</asp:ListItem>
                                 </asp:DropDownList>
                                
                            </div>

                            <div class="form-group">
                                <label for="" class="control-label mb-1">Product Image</label>
                                <asp:FileUpload ID="p_img" runat="server" class="form-control" />
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
