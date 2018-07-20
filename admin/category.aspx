<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="admin_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">

    Category:<asp:TextBox ID="t1" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t1" ErrorMessage="Please Insert" ForeColor="#CC3300"></asp:RequiredFieldValidator>
    <asp:Button ID="b1" runat="server" Text="Add Category" OnClick="b1_Click" Width="91px" />
    <asp:Label ID="l1" runat="server" Text=""></asp:Label>

    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id">
            <HeaderStyle BorderStyle="Solid" Width="30px" />
            </asp:BoundField>
            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
            <asp:CommandField HeaderText="Action" ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eshoppingConnectionString %>" DeleteCommand="DELETE FROM [category] WHERE [id] = @id" InsertCommand="INSERT INTO [category] ([category]) VALUES (@category)" SelectCommand="SELECT * FROM [category]" UpdateCommand="UPDATE [category] SET [category] = @category WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="category" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="category" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />

</asp:Content>

