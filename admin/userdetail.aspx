<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="userdetail.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
            <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
            <asp:BoundField DataField="pincode" HeaderText="pincode" SortExpression="pincode" />
            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
            <asp:CommandField HeaderText="Action" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eshoppingConnectionString %>" DeleteCommand="DELETE FROM [userdetail] WHERE [id] = @id" InsertCommand="INSERT INTO [userdetail] ([firstname], [lastname], [email], [password], [gender], [address], [city], [state], [pincode], [phone]) VALUES (@firstname, @lastname, @email, @password, @gender, @address, @city, @state, @pincode, @phone)" SelectCommand="SELECT * FROM [userdetail]" UpdateCommand="UPDATE [userdetail] SET [firstname] = @firstname, [lastname] = @lastname, [email] = @email, [password] = @password, [gender] = @gender, [address] = @address, [city] = @city, [state] = @state, [pincode] = @pincode, [phone] = @phone WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="pincode" Type="String" />
            <asp:Parameter Name="phone" Type="Int64" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="firstname" Type="String" />
            <asp:Parameter Name="lastname" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="pincode" Type="String" />
            <asp:Parameter Name="phone" Type="Int64" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

