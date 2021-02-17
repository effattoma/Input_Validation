<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Information.aspx.cs" Inherits="SecurityProject1.info" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <header class="text-center" style="font-size: xx-large"><strong>INFORMATION</strong></header> 
      <table align="center">

      
          
          
 <tr>

            <td>
               FROM
            </td>
            <td style="width: 147px">
                <asp:DropDownList ID="ddlFrom" runat="server">
                    <asp:ListItem Value="0">-- Select Place </asp:ListItem>
                    <asp:ListItem>Kurigram</asp:ListItem>
                    <asp:ListItem>Rangpur</asp:ListItem>
                    <asp:ListItem>Lalmonihat</asp:ListItem>
                    <asp:ListItem>Joypurhat</asp:ListItem>
                    <asp:ListItem>Dhaka</asp:ListItem>
                    <asp:ListItem>Dinajpur</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
          
           <tr>

            <td>
               TO
            </td>
            <td style="width: 147px">
                <asp:DropDownList ID="ddlTO" runat="server">
                    <asp:ListItem Value="0">-- Select Place </asp:ListItem>
                    <asp:ListItem>Kurigram</asp:ListItem>
                    <asp:ListItem>Rangpur</asp:ListItem>
                    <asp:ListItem>Lalmonihat</asp:ListItem>
                    <asp:ListItem>Joypurhat</asp:ListItem>
                    <asp:ListItem>Dhaka</asp:ListItem>
                    <asp:ListItem>Dinajpur</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>

            <tr>
            <td> Select DATE</td>
                <td>
                    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images.png" ImageAlign="AbsBottom" Height="16px" Width="22px" />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#999999" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                </td>
            
        </tr>
          
           <tr>
            <td>
                
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </td>
        </tr>
          
          
    </table>

</asp:Content>
