using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace WebApplication1.DemoStaff
{
     public partial class ViewSales : System.Web.UI.Page
    {
         SqlConnection con;
         SqlCommand cmd;
         string s, ys, ds, c1, c2, c3;
         DateTime d = DateTime.Now;
         int total, prvday, daybfr, cnt1, cnt2, cnt3;
         DateTime Yesterday = DateTime.Now.AddDays(-1d);
         DateTime Daybefore = DateTime.Now.AddDays(-2d);
         
        
        
        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["id"] == null)
            {
                Response.Redirect("/DemoLogin.aspx");
            }
            
            
            error.Visible = false;
            error.Text = Yesterday.ToString();
            
            
            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDb)\\v11.0;AttachDbFilename=F:\\Roaib\\6th Sem Project\\Shop Inventory\\WebApplication1\\App_Data\\aspnet-WebApplication1-20171223232403.mdf;Initial Catalog=aspnet-WebApplication1-20171223232403;Integrated Security=True");
                con.Open();
                s = "select sum(pprice) from sales where datee='" + d + "'";
                cmd = new SqlCommand(s, con);
                total = (int)cmd.ExecuteScalar();     
                sum.Text = "₹"+total.ToString();
                con.Close();
            }

            catch(Exception ex)
            {
             error.Text = ex.Message;
            }

            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDb)\\v11.0;AttachDbFilename=F:\\Roaib\\6th Sem Project\\Shop Inventory\\WebApplication1\\App_Data\\aspnet-WebApplication1-20171223232403.mdf;Initial Catalog=aspnet-WebApplication1-20171223232403;Integrated Security=True");
                con.Open();
                ys = "select sum(pprice) from sales where datee='" + Yesterday + "'";
                cmd = new SqlCommand(ys, con);
                prvday = (int)cmd.ExecuteScalar();
                con.Close();
            }
            catch(Exception ex)
            {
                error.Text = ex.Message;
            }

            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDb)\\v11.0;AttachDbFilename=F:\\Roaib\\6th Sem Project\\Shop Inventory\\WebApplication1\\App_Data\\aspnet-WebApplication1-20171223232403.mdf;Initial Catalog=aspnet-WebApplication1-20171223232403;Integrated Security=True");
                con.Open();
                ds = "select sum(pprice) from sales where datee='" + Daybefore + "'";
                cmd = new SqlCommand(ds, con);
                daybfr = (int)cmd.ExecuteScalar();
                con.Close();
            }
            catch (Exception ex)
            {
                error.Text = ex.Message;
            }
            decimal m=Convert.ToDecimal(total);
            decimal n = Convert.ToDecimal(prvday);
            decimal o = Convert.ToDecimal(daybfr);
            decimal[] y = new decimal[3] { m, n,o };
            BarChart1.Series.Add(new AjaxControlToolkit.BarChartSeries { Data = y, Name = "Sales" });


            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDb)\\v11.0;AttachDbFilename=F:\\Roaib\\6th Sem Project\\Shop Inventory\\WebApplication1\\App_Data\\aspnet-WebApplication1-20171223232403.mdf;Initial Catalog=aspnet-WebApplication1-20171223232403;Integrated Security=True");
                con.Open();
                c1="select count(id) from sales where datee='" + d + "'";
                cmd = new SqlCommand(c1, con);
                cnt1 = (int)cmd.ExecuteScalar();
                con.Close();

            }
            catch (Exception ex)
            {
                error.Text = ex.Message;
            }

            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDb)\\v11.0;AttachDbFilename=F:\\Roaib\\6th Sem Project\\Shop Inventory\\WebApplication1\\App_Data\\aspnet-WebApplication1-20171223232403.mdf;Initial Catalog=aspnet-WebApplication1-20171223232403;Integrated Security=True");
                con.Open();
                c2 = "select count(id) from sales where datee='" + Yesterday + "'";
                cmd = new SqlCommand(c2, con);
                cnt2 = (int)cmd.ExecuteScalar();
                con.Close();

            }
            catch (Exception ex)
            {
                error.Text = ex.Message;
            }

            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDb)\\v11.0;AttachDbFilename=F:\\Roaib\\6th Sem Project\\Shop Inventory\\WebApplication1\\App_Data\\aspnet-WebApplication1-20171223232403.mdf;Initial Catalog=aspnet-WebApplication1-20171223232403;Integrated Security=True");
                con.Open();
                c3 = "select count(id) from sales where datee='" + Daybefore + "'";
                cmd = new SqlCommand(c3, con);
                cnt3 = (int)cmd.ExecuteScalar();
                con.Close();

            }
            catch (Exception ex)
            {
                error.Text = ex.Message;
            }

            decimal a = Convert.ToDecimal(cnt1);
            decimal b = Convert.ToDecimal(cnt2);
            decimal c = Convert.ToDecimal(cnt3);
            decimal[] z = new decimal[3] { a,b,c};
            BarChart1.Series.Add(new AjaxControlToolkit.BarChartSeries { Data = z, Name = "Products Sold" });  
           
        }
    }
}