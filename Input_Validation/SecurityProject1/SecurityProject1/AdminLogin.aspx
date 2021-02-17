<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="SecurityProject1.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <header class="text-center" style="font-size: xx-large"><strong>LOGIN Page<br />
          </strong></header>   
      <table align="center">

        <tr>

            <td>
               Admin UserName&nbsp;
            </td>
            <td style="width: 147px">
                <asp:TextBox ID="txtAdminUserName" runat="server" Width="158px"></asp:TextBox>
            </td>
        </tr>

           <tr>

            <td>
                Admin Password
            </td>
            <td style="width: 147px">
                <asp:TextBox ID="txtAdminPassword" runat="server"></asp:TextBox>
            </td>
        </tr>

           <tr>
            <td>
                
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="submitBut_Click" Width="93px" />
            </td>
        </tr>

      
    </table>
</asp:Content>
