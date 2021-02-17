
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SecurityProject1
{
    public partial class login : System.Web.UI.Page
    {
        conn co = new conn();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtLoginUserName.Attributes.Add("autocomplete", "off");
            txtLoginPassword.Attributes.Add("autocomplete", "off");
        }

        protected void submitBut_Click(object sender, EventArgs e)
        {

            string query = @"SELECT COUNT(*)
  FROM [dbo].[Registration] Where [UserName]='" + txtLoginUserName.Text+ "' AND [PassWord]='" + txtLoginPassword.Text + "'";
            if (co.Login(query) == "1")
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('Successfully Login');window.location='Information.aspx';", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('Wrong input');window.location='Registration.aspx';", true);

            }
        }
    }
}