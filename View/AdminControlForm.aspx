<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminControlForm.aspx.cs" Inherits="FirstApplication.View.AdminControlForm" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <title></title>
</head>
<body style="height: 308px">
    <span><strong>FETCHING ROWS FROM DATABASE</strong></span>
                <br />
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Number of Records : "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        

        <asp:Table ID="myTable" runat="server" Width="60%" BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="1" CellSpacing="1"> 
            <asp:TableRow>
                <asp:TableCell BorderStyle="Solid" BorderWidth="1" BorderColor="Black">UserID</asp:TableCell>
                <asp:TableCell BorderStyle="Solid" BorderWidth="1" BorderColor="Black">First Name</asp:TableCell>
                <asp:TableCell BorderStyle="Solid" BorderWidth="1" BorderColor="Black">Last Name</asp:TableCell>
                <asp:TableCell BorderStyle="Solid" BorderWidth="1" BorderColor="Black">Contact Number</asp:TableCell>
                <asp:TableCell BorderStyle="Solid" BorderWidth="1" BorderColor="Black">Country</asp:TableCell>
                <asp:TableCell BorderStyle="Solid" BorderWidth="1" BorderColor="Black">State\Province</asp:TableCell>
            </asp:TableRow>
        </asp:Table> 
    </form>
</body>
</html>
