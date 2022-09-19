<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddtoCartDetails.aspx.cs" Inherits="Pharma.UI.AddtoCartDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<div>
            <header style="text-align: center; background-color: #FFFFCC; color: #FF9900"><h3>ADD TO CART</h3></header>
        </div>
    <div>
        <div align="center">
            <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="#FF99FF" NavigateUrl="~/AddCustOrder.aspx">Continue Shopping</asp:HyperLink>
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#FF6699" BorderColor="#333333" BorderWidth="5px" EmptyDataText="No Medicine Available in the cart" FontBold="True" Height="257px" Width="1100px" ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="Sr no">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="mid" HeaderText="Medicine Id">
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="mname" HeaderText="Medicine_Name" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="mprice" HeaderText="Price" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="mquantity" HeaderText="Quantity" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="mtotalprice" HeaderText="Total Price" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="LightGreen" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        

        <br />
        

    </div>
</asp:Content>
