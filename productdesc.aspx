<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="productdesc.aspx.cs" Inherits="productdesc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
     <asp:Repeater ID="d1" runat="server" OnItemCommand="d1_ItemCommand">
        
        <HeaderTemplate>
  
       </HeaderTemplate>

        <ItemTemplate>
   
        <li class="last"> <a href="#"><img src="admin/<%#Eval("product_images") %>" alt="" height="200px"/></a></li>
            
     <div class="product-desc">
          <h3><%#Eval("productname") %></h3>
                <h4><%#Eval("category") %></h4>
                <p><%#Eval("productdesc") %><br />
                Available Quantity: <%#Eval("qty") %>  
                </p>
                <strong class="price"><%#Eval("price") %></strong> 
            </div>
          
         
        
</ItemTemplate>          <FooterTemplate>
            
        </FooterTemplate>

            </asp:Repeater><br />

    <table style="margin-left:4%;">
        <td><asp:Label ID="l2" runat="server" Text="Enter Quantity"></asp:Label></td>
                <td><tr><asp:TextBox ID="t1" runat="server"></asp:TextBox></tr>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t1" ErrorMessage="Please Insert Product">Please Insert Quantity</asp:RequiredFieldValidator>
            </td>
                </td>
                <td><asp:Label colspan="3" ID="l1" runat="server"  ForeColor="Red" Text=""></asp:Label></td>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="t1" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="60" MinimumValue="1">Please Enter between 0 to 50</asp:RangeValidator>
            </table><br />
     
    <asp:Button ID="b1" runat="server" Text="Add TO Cart" OnClick="b1_Click" />

</asp:Content>

