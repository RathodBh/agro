<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/adminMenu.Master" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="Agroland_Management_System.Admin.WebForm10" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="c1" runat="server">
    <form id="form1" runat="server">
    
    <center><h1>Contact US Report</h1></center>
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
    Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="100%">
    <LocalReport ReportPath="Admin\contact_us.rdlc">
        <DataSources>
            <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
        </DataSources>
    </LocalReport>
</rsweb:ReportViewer>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
    SelectMethod="GetData" 
    TypeName="Agroland_Management_System.Admin.contact_us_dsTableAdapters.contact_usTableAdapter">
    <InsertParameters>
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="phno" Type="Decimal" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="msg" Type="String" />
    </InsertParameters>
</asp:ObjectDataSource>
</form>
</asp:Content>
