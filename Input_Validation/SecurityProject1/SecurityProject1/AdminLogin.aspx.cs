using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SecurityProject1
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        conn co = new conn();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtAdminUserName.Attributes.Add("autocomplete", "off");
            txtAdminPassword.Attributes.Add("autocomplete", "off");
        }

        protected void submitBut_Click(object sender, EventArgs e)
        {
            string query = @"INSERT INTO [dbo].[AdminLogin]
           ([AdminUserName]
           ,[AdminPassword])
     VALUES
     VALUES
 ('" + txtAdminUserName.Text + "','" + txtAdminPassword.Text + "')";
            co.executequery(query);
            ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('Saved Successfully');window.location='viewAllinfo.aspx';", true);
        }
    }
}