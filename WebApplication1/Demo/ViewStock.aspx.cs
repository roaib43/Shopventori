﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1.Demo
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
