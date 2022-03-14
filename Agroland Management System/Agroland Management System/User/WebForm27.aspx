<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMenu.Master" AutoEventWireup="true" CodeBehind="WebForm27.aspx.cs" Inherits="Agroland_Management_System.User.WebForm27" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c2" runat="server">

    <!-- Responsive  -->
    <link rel="stylesheet" href="../css/tab.css" />
    <link rel="stylesheet" href="../css/phone.css" />
    
    <!--Bootstrap Cards-->
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header">
                <strong class="card-title" style="color:brown;">Membership</strong>
            </div>
            <div class="card-body">

                        <!-- Print message to the user -->
                          <%--  <div id="msg" runat="server" class="alert alert-success"
                                style="margin-top:10px; display: none;">
                                <strong>Your Product sell successfully...!</strong>
                            </div>--%>
                            
                <div id="pay-invoice">
                    <div class="card-body">
                      
                        <form  method="post" novalidate="novalidate" id="f1" runat="server">
                             
                            <div class="form-group">
                                <%--<label for="" class="control-label mb-1">Membership</label>--%><br />
                                <b><asp:Label runat="server" ID="Label1" Text="You are not a prime member"></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text="You are prime member"></asp:Label></b>
                            </div>
                             <div class="form-group">
                                <label for="" class="control-label mb-1">Subscription</label>
                                <asp:TextBox ID="money" runat="server" class="form-control"   ReadOnly="true"> 500 per 6 month</asp:TextBox>
                            </div>
                           
                         <div>

                                <asp:Button ID="btn_ok" runat="server" Text="REQUEST"
                                    class="btn btn-lg btn-info btn-block" onclick="btn_ok_Click" />
                      </div>
                          
                            
                        </form>
                    </div>
                </div>
                

            </div>
        </div>

</asp:Content>


