using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SecurityProject1
{
    public partial class Registration : System.Web.UI.Page
    { 
        conn co = new conn();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            txtUserName.Attributes.Add("autocomplete","off");
            txtName.Attributes.Add("autocomplete", "off");
            txtPassWord.Attributes.Add("autocomplete", "off");
            txtEmail.Attributes.Add("autocomplete", "off");
            txtPhoneNumber.Attributes.Add("autocomplete", "off");
            txtAddress.Attributes.Add("autocomplete", "off");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [dbo].[Registration]
           ([UserName]
           ,[Name]
           ,[PassWord]
           ,[Email]
           ,[PhoneNumber]
           ,[Address])

     VALUES
 ('" + txtUserName.Text + "','" + txtName.Text + "','" + txtPassWord.Text + "','" + txtEmail.Text + "','" + txtPhoneNumber.Text + "','" + txtAddress.Text + "')";
            co.executequery(query);
            ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('Saved Successfully');window.location='login.aspx';", true);

        }
    }

}
