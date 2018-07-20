<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <asp:TextBox ID="s1" runat="server"></asp:TextBox>
            <asp:Button ID="b1" runat="server" Text="search" OnClick="b1_Click" />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="s1" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="s1" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[a-zA-Z]*$">Please Enter Text</asp:RegularExpressionValidator>     
    <asp:Repeater ID="d1" runat="server">
        
        <HeaderTemplate>
  
        <div class="cl">&nbsp;</div>
    <ul>
</HeaderTemplate>

        <ItemTemplate>
            <li class="last"> <a href="productdesc.aspx?id=<%#Eval("id")%>"><img src="admin/<%#Eval("product_images") %>" alt="" height="200px"/></a>
            <div class="product-info">
              <h3><%#Eval("productname") %></h3>
              <div class="product-desc">
                <h4> Category: <%#Eval("category") %></h4>
                 <h4>Stock: <%#Eval("qty") %></h4>   
              
                <strong class="price">NRs <%#Eval("price") %></strong> 
            </div>
          </li>
        
        </ItemTemplate>
        <FooterTemplate>
            </ul>
        </FooterTemplate>

    </asp:Repeater>
   
</asp:Content>

