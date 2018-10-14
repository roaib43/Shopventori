using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1.Demo
{
    public partial class Adduser : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsale_Click(object sender, EventArgs e)
        {
            try
            {
                int ct = 1;
                con = new SqlConnection("Data Source=(LocalDb)\\v11.0;AttachDbFilename=F:\\Roaib\\6th Sem Project\\Shop Inventory\\WebApplication1\\App_Data\\aspnet-WebApplication1-20171223232403.mdf;Initial Catalog=aspnet-WebApplication1-20171223232403;Integrated Security=True");
                con.Open();
                cmd = new SqlCommand("insert into login values('" + uname.Text + "','" + pass.Text + "','" + role.Text + "','"+Label1.Text+"')", con);
                cmd.ExecuteNonQuery();
                noticelabel.Visible = true;
                noticelabel.Text = "User Added";
            }
            catch (Exception ex)
            {
                noticelabel.Visible = true;
                noticelabel.Text = ex.Message;
            }
        }
    }
}