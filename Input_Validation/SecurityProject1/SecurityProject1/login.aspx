<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="SecurityProject1.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <header class="text-center" style="font-size: xx-large"><strong>LOGIN Page</strong></header> 
      <table align="center">

        <tr>

            <td>
                User Name
            </td>
            <td style="width: 147px">
                <asp:TextBox ID="txtLoginUserName" runat="server"></asp:TextBox>
            </td>
        </tr>

           <tr>

            <td>
                Password
            </td>
            <td style="width: 147px">
                <asp:TextBox ID="txtLoginPassword" runat="server"></asp:TextBox>
            </td>
        </tr>


           <tr>
            <td>
                
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="submitBut_Click" />
            </td>
        </tr>

      
    </table>
   <a runat="server" href="Registration.aspx"><h5 style="text-align:center;">Don't have account? Please Register here</h5></a><br />
</asp:Content>
