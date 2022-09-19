<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminTask.aspx.cs" Inherits="Pharma.UI.AdminTask" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    
        <div>
            <header style="text-align: center; background-color: #FFFFCC; color: #FF9900"><h3>ADMIN TASK</h3>
            </header>
        </div>
        <header style="align-self:center,; height: 37px; color: #FFFFFF; font-size: large;">What task you want to do??</header>
       
        <table align="left" class="auto-style1">
            <tr>
                <td style="color: #FFFFFF; text-align: center">MEDICINES</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="GO" OnClick="AddMedicine" Width="98px" BackColor="#006600" BorderStyle="Solid" Font-Bold="True" ForeColor="White" />
                    <br />
                </td>
            </tr>
           <tr>
                <td style="color: #FFFFFF; text-align: center">&nbsp;&nbsp;CUSTOMERS&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="GO" OnClick="AddUser" Width="98px" BackColor="#006600" BorderStyle="Solid" Font-Bold="True" ForeColor="White" OnDataBinding="AddUser"/>
                    <br />
                </td>
            </tr>
            </table>
   <br />
<br />
   <div>
       <br />
       <br />
       <br />
       <asp:Button ID="Button3" runat="server" OnClick="Log_out" Text="Log Out" BackColor="#000066" BorderColor="#333399" BorderStyle="Outset" Font-Bold="True" Font-Names="Arial Black" Font-Overline="False" ForeColor="White"  />
       <br />
   </div>
</asp:Content>
