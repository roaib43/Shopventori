using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1.DemoStaff
{
    public partial class ManageProducts : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("/DemoLogin.aspx");
            } 

        }

        protected void btnsale_Click(object sender, EventArgs e)
        {
          
            try
            {
                con = new SqlConnection("Data Source=(LocalDb)\\v11.0;AttachDbFilename=F:\\Roaib\\6th Sem Project\\Shop Inventory\\WebApplication1\\App_Data\\aspnet-WebApplication1-20171223232403.mdf;Initial Catalog=aspnet-WebApplication1-20171223232403;Integrated Security=True");
                con.Open();
                cmd = new SqlCommand("insert into products values('" + pid.Text + "','" + pname.Text + "','" + pprice.Text + "','" + pbrand.Text + "','" + expdate.Text + "','" + qty.Text + "')", con);
                cmd.ExecuteNonQuery();
                notice.Visible = true;
                notice.Text = "Product added";
            }
            catch(Exception ex)
            {
                notice.Text = ex.Message;
            }

        }
    }
}