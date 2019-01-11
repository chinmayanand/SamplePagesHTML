<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="FirstApplication.View.LoginPage" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"  
type="text/javascript"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="../Registration_validator.js" type="text/javascript">

</script>
<link rel="Stylesheet" href="../Registration_styles.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="table">  
        <tr>  
            <td class="td">User ID:</td>  
            <td>  
                <asp:TextBox ID="txtUserid" runat="server" Width="209px"></asp:TextBox>
                <span class="userID error hidden"></span>
            </td>  
           </tr>  
        <tr>  
            <td class="td">Password:</td>  
            <td>  
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" Width="209px"></asp:TextBox>
                <span class="user_password error hidden"></span>
            </td>  
             
        </tr>  
         
        <tr>    
            <td>  
                <asp:Button ID="btnAdmin" runat="server" Text="AdminSubmit" OnClick="btnAdminSubmit_Click" />  
           
                <asp:Button ID="btnUserSubmit" runat="server" Text="UserSubmit" OnClick="btnUserSubmit_Click" /></td>  
             
        </tr>  
    </table>  
        </div>
    </form>
</body>
</html>
