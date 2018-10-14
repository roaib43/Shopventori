using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.SessionState;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con;
        string s, role;
        
        
     
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                con = new SqlConnection("Data Source=(LocalDb)\\v11.0;AttachDbFilename=F:\\Roaib\\6th Sem Project\\Shop Inventory\\WebApplication1\\App_Data\\aspnet-WebApplication1-20171223232403.mdf;Initial Catalog=aspnet-WebApplication1-20171223232403;Integrated Security=True");
                con.Open();
                s = "select id,pass,role from dbo.login where id='" + txtid.Text + "' and pass='" + txtpass.Text + "' and role='"+txtrole1.Text+"'";
                SqlCommand cmd = new SqlCommand(s, con);
                SqlDataReader reader = cmd.ExecuteReader();
                if(reader.HasRows)
                {
                    while(reader.Read())
                    {
                        Session["id"] = reader[0];
                      //  Session["role"] = reader["role"];
                        role = reader["role"].ToString();
                  //  notice.Text = reader["role"].ToString();
                     
                    }
                }

                

                if (Session["id"] != null && role == "owner")
                {
                    Response.Redirect("Demo/Dashboard.aspx");       
                }
                else if (Session["id"] != null && role == "staff")
                {
                    Response.Redirect("DemoStaff/StaffDashboard.aspx");
                }
                else
                {
                    notice.Text = "User do not exists";
                }
                


             /*   if (reader.Read() && reader[2]=="admin")
                {
                    notice.Text = "Con Success";
                }
                else
                {
                    notice.Text = "Con not Success";
                }

                /* cmd.Connection = con;
                cmd.CommandText = s;
                object n;
              n = cmd.ExecuteScalar();
                int res;
                res = (int)n;
                
                if(res>0)
                {
                    notice.Text = "Con Success" + res;
                }
                else
                {
                    notice.Text = "Not working" + res;
                } */





                
               
            }
            catch (Exception ex)
            {
                notice.Text = ex.Message;

            } 
        }
    }
}