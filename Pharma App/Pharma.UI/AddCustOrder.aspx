<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCustOrder.aspx.cs" Inherits="Pharma.UI.AddCustOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
            <header style="text-align: center; background-color: #FFFFCC; color: #FF9900"><h3>ORDER</h3></header>
        </div>
   <table>
   </table>
   <asp:DataList ID="DataList1" runat="server" DataKeyField="Med_name" DataSourceID="SqlDataSource1" Height="293px" Width="310px" OnItemCommand="DataList1_ItemCommand">
   <itemTemplate>
                <table>
                    <tr>
                        <td>

                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Med_name") %>' Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>    

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Price:Rs" Font-Bold="True" Font-Size="medium" ForeColor="White"></asp:Label>    
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("price") %>' Font-Bold="True" Font-Size="medium" ForeColor="White"></asp:Label>    

                        </td>
                    </tr>
           
                    <tr>
                        <td align="center">Quantity
                            <asp:DropDownList ID="DropDownList1" runat="server" BackColor="Aqua" Font-Bold="True" Height="16px" Width="64px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Add to Cart" BackColor="#3333FF" BorderColor="White" BorderStyle="Outset" Font-Bold="True" Font-Size="Large" ForeColor="White" CommandArgument='<%# Eval("Med_code") %>' CommandName="AddtoCartDetails"/>
                        </td>
                    </tr>
                   
                </table>
                </itemTemplate>
                </asp:DataList>
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PharmacyDBConn %>" SelectCommand="SELECT [Med_code], [Med_name], [price], [Manufacturer], [quantity] FROM [Med]"></asp:SqlDataSource>
        
        
</asp:Content>
