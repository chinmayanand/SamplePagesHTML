<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchFlights.aspx.cs" Inherits="FirstApplication.View.SearchFlights" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    
    <script src="../SearchPageValidator.js"></script>
    <link rel="stylesheet" href=" http://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/base/jquery-ui.css" type="text/css" />
    <link rel="Stylesheet" href="../Registration_styles.css" type="text/css" />
    <title></title>
      </head>
<body>
    <h1 style="text-align: center">Search Flight</h1>
    <form id="form1" runat="server">
        <div>
                <table class="table">
                <tr>
                    <td>
                <asp:Label ID="Boarding" runat="server" >From</asp:Label>
                        <asp:DropDownList ID="ddl_list_boarding" runat="server" >
                            <asp:ListItem Value="0">--Select Boarding Point--</asp:ListItem>
                            <asp:ListItem Value="1">Kolkata</asp:ListItem>
                            <asp:ListItem Value="2">Chennai</asp:ListItem>
                            <asp:ListItem Value="3">Hyderabad</asp:ListItem>
                            <asp:ListItem Value="4">Mumbai</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <span class="boardingError error hidden"></span>

            </td>
                     <td >
                    <asp:Label ID="Destination" runat="server">To</asp:Label>
                          <asp:DropDownList ID="ddl_list_destination" runat="server"   >
                            <asp:ListItem Value="0">--Select Destination--</asp:ListItem>
                              <asp:ListItem Value="1">Kolkata</asp:ListItem>
                            <asp:ListItem Value="2">Chennai</asp:ListItem>
                            <asp:ListItem Value="3">Hyderabad</asp:ListItem>
                            <asp:ListItem Value="4">Mumbai</asp:ListItem>
                        </asp:DropDownList> 
                         <br />
                        <span class="destinationError error hidden"></span>
                    </td>
                    <td >

            <asp:Label ID="date" runat="server" Text="Label">Date</asp:Label>
                        <asp:TextBox ID="input_date" runat="server" ></asp:TextBox> 
                        <br/>
                        <span class="dateError error hidden"></span>
                    </td>
                   
            <td>
                <asp:Button ID="btnsearch" runat="server" CssClass="btn btn-primary btn-md" Text="Search" OnClick="btnsearch_Click" />
            </td>
                      
                </tr>
                    </table>
           <br/>
            <div class="SearchDetails" id="SearchFlightDetails" runat="server">
                <%--<asp:Label ID="flight_details" runat="server" Text=""></asp:Label>--%>
                <asp:Table ID="mysearchData" runat="server"  BackColor="White" BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" CellPadding="1" CellSpacing="1" Visible="false"> 
                <asp:TableRow>
                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" BorderColor="Blue">Select Flight</asp:TableCell>
                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" BorderColor="Blue">FlightNumber</asp:TableCell>
                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" BorderColor="Blue">Source</asp:TableCell>
                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" BorderColor="Blue">Destination</asp:TableCell>
                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" BorderColor="Blue">Available Seat</asp:TableCell>
                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" BorderColor="Blue">Total Fare</asp:TableCell>
                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" BorderColor="Blue">Start Time</asp:TableCell>
                    <asp:TableCell BorderStyle="Solid" BorderWidth="1" BorderColor="Blue">Total Travel Time(in hrs)</asp:TableCell>
                </asp:TableRow>

          
        </asp:Table> 
            </div>
            
                 <asp:Button ID="btnBook" runat="server" CssClass="btn btn-primary btn-md" Text="Book"  Visible="false" OnClick="btnBook_Click"/>

            
        </div>
    </form>
</body>
</html>