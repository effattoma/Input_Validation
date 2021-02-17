<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="SecurityProject1.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <header class="text-center" style="font-size: xx-large"><strong>Registration Page</strong></header>                                        
    <table align="center">
        
            <tr>

            <td>
                UserName
            </td>
            <td>
               <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>

                
            </td>
        </tr>
        

     <tr>
            <td>
                Name
            </td>
            <td style="width: 147px">
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"  
ControlToValidate="txtName" ErrorMessage="wrong"  
ValidationExpression="[a-z]{1,}"></asp:RegularExpressionValidator>
                
            </td>
        </tr>
       

     <tr>
         <td>
                PassWord
            </td>
            <td style="width: 147px">
                <asp:TextBox ID="txtPassWord" runat="server" ValidateRequestMode="Enabled"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"  
ControlToValidate="txtPassWord" ErrorMessage="wrong"  
ValidationExpression="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"></asp:RegularExpressionValidator>
           
         
            </td>
    
           <tr>
            <td>
                Email
            </td>
            <td style="width: 147px">
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        

                <tr>
            <td>
                PhoneNumber
            </td>
            <td style="width: 147px">
                <asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  
ControlToValidate="txtPhoneNumber" ErrorMessage="Please_Enter_Only_IntegerNumber"  
ValidationExpression="[0-9]{11}"></asp:RegularExpressionValidator>

                
            </td>
        </tr>
            <tr>
            <td style="height: 22px">
                Address
            </td>
            <td style="width: 147px; height: 22px;">
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        
    
           <tr>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </td>
        </tr>

      
    </table>


</asp:Content>
