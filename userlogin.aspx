<%@ Page Title="" Language="C#" MasterPageFile="~/usermaster.master" AutoEventWireup="true" CodeFile="userlogin.aspx.cs" Inherits="userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <table>
        <tr>
            <td>
                Email:
            </td>
            <td>
     <asp:TextBox ID="e1" runat="server"></asp:TextBox>
       <asp:RegularExpressionValidator ID="emailvalidation" runat="server" ControlToValidate="e1" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Please enter Correct Format</asp:RegularExpressionValidator>
   </td>

        </tr>
        <tr>
            <td>
                Password:
            </td>
            <td>
                <asp:TextBox ID="p1" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td>
                Login
            </td>
            <td>
                <asp:Button ID="l1" runat="server" Text="Login" OnClick="l1_Click" />
            </td>
    <td>
        <asp:Label ID="l2" runat="server" Text="" ForeColor="Red" />
    </td>
                </tr>

    </table>



</asp:Content>

