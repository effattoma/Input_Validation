using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SecurityProject1
{
    public partial class info : System.Web.UI.Page
    {
        conn co = new conn();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
            Calendar1.Attributes.Add("style", "position:aboslute");


        }

        protected void SubmitBut_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            string query = @"INSERT INTO [dbo].[Information]
           ([FROM]
           ,[TO]
           ,[SelectDATE])
     VALUES
 ('" + ddlFrom.Text + "','" + ddlTO.Text + "','" + txtDate.Text + "')";
            co.executequery(query);
            ClientScript.RegisterStartupScript(Page.GetType(), "Message", "alert('Saved Successfully');window.location='thanks.aspx';", true);
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = Calendar1.SelectedDate.ToString("dd/MM/yyyy");
            Calendar1.Visible = false;
        }
    }
}