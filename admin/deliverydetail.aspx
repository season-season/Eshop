<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="deliverydetail.aspx.cs" Inherits="admin_deliverydetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="order_id" HeaderText="order_id" SortExpression="order_id" />
            <asp:BoundField DataField="productname" HeaderText="productname" SortExpression="productname" />
            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
            <asp:BoundField DataField="productprice" HeaderText="productprice" SortExpression="productprice" />
            <asp:BoundField DataField="productqty" HeaderText="productqty" SortExpression="productqty" />
            <asp:ImageField DataImageUrlField= "product_images" HeaderText="Product_Image" >
            <ControlStyle Height="150px" Width="150px" /></asp:ImageField>
        
            <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:eshoppingConnectionString %>" SelectCommand="SELECT * FROM [delivereddetails]"></asp:SqlDataSource>
    
</asp:Content>

