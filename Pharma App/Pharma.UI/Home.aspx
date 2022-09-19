<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Pharma.UI.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
         <div class="container-fluid" > <header style="text-align: center; background-color: #FFFFCC; color: #FF9900"><h1 style="font-size: large; font-weight: bold; font-style: inherit; color: #FFFFFF; text-decoration: blink; background-color: #000080; border: medium outset #FFFFFF">Welcome To Pharma App</h1></header>
    </div>
   
     <div>
        
        <table align="center" style="width: 41%; height: 457px;">
            <tr>
                <td style="width: 315px">
                    <asp:Image ID="Image1" runat="server" BackColor="White" Height="190px" ImageUrl="~/Images/user.png" Width="190px" />
&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="#66FF66" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" ForeColor="#006600" OnClick="Button1_Click" Text="USER" Width="184px" />
                </td>
            </tr>
            <tr>
                <td style="height: 70px; width: 315px"> </td>
                <td style="height: 70px">
                </td>
            </tr>
            <tr>
                <td style="height: 129px; width: 315px">&nbsp;<asp:Image ID="Image3" runat="server" BackColor="White" Height="190px" ImageUrl="~/Images/admin.png" Width="190px" />
                </td>
                <td style="height: 129px"><asp:Button ID="Button2" runat="server" BackColor="Red" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" ForeColor="Maroon" OnClick="Button2_Click" Text="ADMIN" Width="184px" />
                </td>
            </tr>
        </table>

        
        
    </div>
    
</asp:Content>
