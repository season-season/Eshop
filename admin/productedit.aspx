﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminMasterPage.master" AutoEventWireup="true" CodeFile="productedit.aspx.cs" Inherits="admin_productedit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
     <h3>Add Product</h3>
    
    <asp:Repeater ID="d1" runat="server">
         
 <ItemTemplate>
<img src="<%#Eval("product_images")%>" alt="" height="150px" width="150px" style="float:right;margin-right:12%;"/>
 <h3 style="float:right;">Current Image</h3>

       </ItemTemplate>
</asp:Repeater>
    <table>
        <tr>
            <td>Product Name</td>
            <td><asp:TextBox ID="t1" runat="server" ValidateRequestMode="Enabled" ViewStateMode="Enabled"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="t1" ErrorMessage="Please Insert Product">Please Insert Product Name</asp:RequiredFieldValidator>
            
            </td>
        </tr>
    
    <tr>
            <td>Product Desc</td>
            <td><asp:TextBox ID="t2" runat="server" Height="47px" ValidateRequestMode="Enabled" ViewStateMode="Enabled"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="t2" ErrorMessage="Please Insert Description">Please Insert Description</asp:RequiredFieldValidator>
            </td>
        </tr>
    <tr>
            <td>Product Category</td>
            <td><asp:DropDownList ID="c1" runat="server" DataSourceID="SqlDataSource1" DataTextField="category" DataValueField="category">
                <asp:ListItem>Art</asp:ListItem>
                <asp:ListItem>Craft</asp:ListItem>
                <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:eshoppingConnectionString %>" SelectCommand="SELECT * FROM [category]"></asp:SqlDataSource>
            </td>
        </tr>
    
    <tr>
            <td>Product price <td><asp:TextBox ID="t4" runat="server" ValidateRequestMode="Enabled" ViewStateMode="Enabled"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="t4" ErrorMessage="Please Insert Price">Please Insert Price</asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="t4" ErrorMessage="Please Enter number" ValidationExpression="\d+"></asp:RegularExpressionValidator>

            </td>
        </tr>
    
    <tr>
            <td>Product Qty</td>
            <td><asp:TextBox ID="t5" runat="server" ValidateRequestMode="Enabled" ViewStateMode="Enabled"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="t5" ErrorMessage="Please Insert Quantity">Please Insert Quantity</asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="t5" ErrorMessage="Please Enter number" ValidationExpression="\d+"></asp:RegularExpressionValidator>

            </td>
        </tr>
   
     <tr>
            <td>Product Image</td><asp:Image ID="ImagePreview" runat="server" Width="130px" Height="130px" />
           
            <td><asp:FileUpload ID="f1" runat="server" onchange="ShowImagePreview(this);" ViewStateMode="Enabled"></asp:FileUpload>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="f1" ErrorMessage="Please Choose png or jpg" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.png|.jpg|.gif)$"></asp:RegularExpressionValidator> 
                       </td>
        </tr>
    
        </table>
   <asp:Button ID="p1" runat="server" Text="Update" OnClick="p1_Click" />  
   <script type="text/javascript">
       function ShowImagePreview(input) {
           if (input.files && input.files[0]) {
               var reader = new FileReader();
               reader.onload = function (e) {
                   $('#<%=ImagePreview.ClientID%>').prop('src', e.target.result)
                        .width(240)
                        .height(150);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }
    </script> 
</asp:Content>

