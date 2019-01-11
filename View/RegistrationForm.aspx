<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="FirstApplication.View.RegistrationForm" %>
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
<body style="height: 249px; margin-right: 154px">
    <h1 style="text-align: center">New User Registration</h1>
    <form id="form1" runat="server">
        
        <div >

            <table >
                <tr>
                    <td>

            <asp:Label ID="lblFirstName" runat="server" Text="Label">First Name</asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="FirstNameTextBox" runat="server" Width="177px"></asp:TextBox> 
                        <span class="fNameError error hidden"></span>
                    </td>
            
                      
                </tr>
                <tr>
                    <td>

            <asp:Label ID="lblLastName" runat="server" Text="Label">Last Name</asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="LastNameTextBox" runat="server"  Width="177px" ></asp:TextBox>
                    <span class="lNameError error hidden"></span>
                    </td>
                    
                </tr>
                <tr>
                    <td>

            <asp:Label ID="lblUserName" runat="server" Text="Label">User Name</asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="UserNameTextBox" runat="server" Width="177px"></asp:TextBox>
                        <span class="UserIdError error hidden"></span>
                    </td>
                   
                   
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label1" runat="server" Text="Label">Select Country</asp:Label>
                    </td>
                     <td>
                        <asp:DropDownList ID="ddl_list_country" runat="server" AutoPostBack="True"   
                    DataTextField="country_name" DataValueField="country_id" AppendDataBoundItems="true"  OnSelectedIndexChanged="ddl_list_country_SelectedIndexChanged" Width="177px" style="text-align: center">
                            <asp:ListItem Value="0">--Select Country--</asp:ListItem>
                        </asp:DropDownList>
                         <span class="UserCountryError error hidden"></span>
                    </td>
                    
                </tr>
                <tr>
                    <td>

            <asp:Label ID="Label2" runat="server" Text="Label">Select State</asp:Label>
                    </td>
                     <td>
                        <asp:DropDownList ID="ddl_list_state" runat="server" 
                                
                    DataTextField="state_name" DataValueField="state_id" AppendDataBoundItems="true"
                            style="text-align: center" CssClass="auto-style12" Width="177px">
                        <asp:ListItem Value="0">--Select State--</asp:ListItem>
                        </asp:DropDownList>
                         <span class="UserStateError error hidden"></span>
                    </td>
                    
                </tr>

                <tr>
                    <td>

            <asp:Label ID="lblContact" runat="server" Text="Label">Mobile No</asp:Label>
                    </td>
                    <td >
            <asp:TextBox ID="UserContact" runat="server" MaxLength="10" Width="177px" ></asp:TextBox>
                        <span class="lblcontactError error hidden"></span>
                    </td>
                   
                </tr>


                <tr>
                    <td>

            <asp:Label ID="lblPassword" runat="server" Text="Label">Password</asp:Label>
                    </td>
                    <td class="auto-style7">
            <asp:TextBox ID="UserPassword" TextMode="Password" runat="server" Width="177px"></asp:TextBox>
                        <span class="UPassError error hidden"></span>
                    </td>
                   
                </tr>
                <tr>
                    <td>

            <asp:Label ID="lblConfirmPassword" runat="server" Text="Label">Confirm Password</asp:Label>
                    </td>
                    <td>
            <asp:TextBox ID="ConfirmPassword" TextMode="Password" runat="server" Width="177px"></asp:TextBox>
                   <span class="CPassError error hidden"></span>
                        </td>
                    
                </tr>
                <tr>
                    <td></td>
                    <td>
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" Width="145px" />

                    </td>
                   
                </tr>
            </table>

        </div>

    </form>
</body>
     
</html>