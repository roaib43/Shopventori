using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1.DemoStaff
{
    public partial class ViewStock : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommandBuilder cmd;
        SqlDataAdapter da;
        DataTable dt;
        DataBinding bs;
        DateTime dt1 = DateTime.Now;


        
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
                DisplayOssRecord();
              
            } 
        }

      /*  protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            con = new SqlConnection("Data Source=(LocalDb)\\v11.0;AttachDbFilename=F:\\Roaib\\6th Sem Project\\Shop Inventory\\WebApplication1\\App_Data\\aspnet-WebApplication1-20171223232403.mdf;Initial Catalog=aspnet-WebApplication1-20171223232403;Integrated Security=True");
            con.Open();
            da = new SqlDataAdapter("select *from login", con);
            cmd = new SqlCommandBuilder(da);
            dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        } */

        public DataTable DisplayRecord()
        {
            SqlDataAdapter Adp = new SqlDataAdapter("select * from products", con);
            DataTable Dt = new DataTable();
            Adp.Fill(Dt);
            grid1.DataSource = Dt;
            grid1.DataBind();
            return Dt;
        }
        public DataTable DisplayOssRecord()
        {
            
                SqlDataAdapter Adp1 = new SqlDataAdapter("select * from products where qty='0'", con);
                DataTable Dto = new DataTable();
                Adp1.Fill(Dto);
                gridoos.DataSource = Dto;
                gridoos.DataBind();
                return Dto; 
        }
        
    
    }

}