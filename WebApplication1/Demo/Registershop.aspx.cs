using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1.Demo
{
    public partial class Registershop : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("/DemoLogin.aspx");
            }

            con = new SqlConnection("Data Source=(LocalDb)\\v11.0;AttachDbFilename=F:\\Roaib\\6th Sem Project\\Shop Inventory\\WebApplication1\\App_Data\\aspnet-WebApplication1-20171223232403.mdf;Initial Catalog=aspnet-WebApplication1-20171223232403;Integrated Security=True");
            con.Open();
            
            if (!IsPostBack)
            {
                DisplayRecord();
              

            } 

        }

        protected void btnsale_Click(object sender, EventArgs e)
        {
            try
            {
                int ct = 1;
                con = new SqlConnection("Data Source=(LocalDb)\\v11.0;AttachDbFilename=F:\\Roaib\\6th Sem Project\\Shop Inventory\\WebApplication1\\App_Data\\aspnet-WebApplication1-20171223232403.mdf;Initial Catalog=aspnet-WebApplication1-20171223232403;Integrated Security=True");
                con.Open();
                cmd = new SqlCommand("insert into shops values('"+sname.Text + "','" + sowner.Text + "','" + sphone.Text + "','" + sadd.Text + "')", con);
                cmd.ExecuteNonQuery();
                noticelabel.Visible = true;
                noticelabel.Text = "Shop Registered";
            }
            catch (Exception ex)
            {
                noticelabel.Visible = true;
                noticelabel.Text = ex.Message;
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {

        }

        public DataTable DisplayRecord()
        {
             SqlDataAdapter Adp = new SqlDataAdapter("select * from shops", con);
                DataTable Dt = new DataTable();
                Adp.Fill(Dt);
                grid1.DataSource = Dt;
                grid1.DataBind();
                return Dt;
            
        
        }
    }
}