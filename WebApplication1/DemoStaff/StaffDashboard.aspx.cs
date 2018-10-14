using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1.DemoStaff
{
    public partial class StaffDashboard : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        DateTime date = DateTime.Now;
        string s;
        string c;
        DateTime d = DateTime.Now;

           
               
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("/DemoLogin.aspx");
            }

           
           
            // Code to display today's sale
            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDb)\\v11.0;AttachDbFilename=F:\\Roaib\\6th Sem Project\\Shop Inventory\\WebApplication1\\App_Data\\aspnet-WebApplication1-20171223232403.mdf;Initial Catalog=aspnet-WebApplication1-20171223232403;Integrated Security=True");
                con.Open();
                s = "select sum(pprice) from sales where datee='" + d + "'";
                cmd = new SqlCommand(s, con);
                int total = (int)cmd.ExecuteScalar();     
                todaysale1.Text = "₹"+total.ToString();
                con.Close();
            }
            catch(Exception ex)
            {
                noticelabel.Text = ex.Message;
            }
            if(todaysale1.Text==null)
            {
                todaysale1.Text = "No Sales Yet";
            }
            // end of code


            // Code to display total products sold
            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDb)\\v11.0;AttachDbFilename=F:\\Roaib\\6th Sem Project\\Shop Inventory\\WebApplication1\\App_Data\\aspnet-WebApplication1-20171223232403.mdf;Initial Catalog=aspnet-WebApplication1-20171223232403;Integrated Security=True");
                con.Open();
                c = "select count(id) from sales where datee='" + d + "'";
                cmd = new SqlCommand(c, con);
                int psold = (int)cmd.ExecuteScalar();
                productssold.Text = psold.ToString()+" Products Sold";
                con.Close();
            }
            catch(Exception ex)
            {
                noticelabel.Visible = true;
                noticelabel.Text = ex.Message;
            }
            // end of code
        }
    }
}