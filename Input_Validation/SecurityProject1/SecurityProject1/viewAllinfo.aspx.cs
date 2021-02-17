using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SecurityProject1
{

    public partial class viewAllinfo : System.Web.UI.Page
    {
        conn co = new conn();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                loadgrid();
            }
        }

        public void loadgrid()
        {
            string query = @" SELECT [UserName]
      ,[Name]
      ,[PassWord]
      ,[Email]
      ,[PhoneNumber]
      ,[Address]
  FROM [dbo].[Registration]";
            GridView1.DataSource =co.getData(query);
            GridView1.DataBind();

        }



        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label lblID = (Label)GridView1.Rows[e.RowIndex].FindControl("Label1");

            string query = @"DELETE FROM [dbo].[Registration]
                             WHERE UserName=" + lblID.Text;

            if (co.executequery(query) == 1)

            {
                loadgrid();
            }
        }
    }
}