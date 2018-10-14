using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1.DemoStaff
{
    public partial class UpdateProducts : System.Web.UI.Page
    {

        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                noticelabel.Visible = false;
                 con = new SqlConnection("Data Source=(LocalDb)\\v11.0;AttachDbFilename=F:\\Roaib\\6th Sem Project\\Shop Inventory\\WebApplication1\\App_Data\\aspnet-WebApplication1-20171223232403.mdf;Initial Catalog=aspnet-WebApplication1-20171223232403;Integrated Security=True");
                con.Open();
                cmd = new SqlCommand("select *from Products", con);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        updatepid.Items.Add(dr.GetString(0));
                        
                    }
                    dr.Close();
                    
                }
                
            }
            catch(Exception ex)
            {
                noticelabel.Visible = true;
                noticelabel.Text = ex.Message;
            }
        }


        protected void updatepid_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand("select * from Products where id='" + updatepid.Text + "'", con);
                dr = cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    while(dr.Read())
                    {
                        pname.Text = dr.GetString(1).ToString();
                        pprice.Text = dr.GetString(2).ToString();
                        pbrand.Text = dr.GetString(3).ToString();
                        expdate.Text = dr.GetString(4).ToString();
                        qtyavail.Text = dr.GetString(5).ToString();
                    }
                }
            }
            catch(Exception ex)
            {
                noticelabel.Visible = true;
                noticelabel.Text = ex.Message;
            }
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand("update products set name='" + pname.Text + "', price='" + pprice.Text + "', brand='"+pbrand.Text+"', expdate='"+expdate.Text+"', qty='"+qtyavail.Text+"' where id='" + updatepid.Text + "'", con);
                cmd.ExecuteNonQuery();
                noticelabel.Visible = true;
                noticelabel.Text = "Product Updated";
            }
            catch(Exception ex)
            {
                noticelabel.Visible = true;
                noticelabel.Text = ex.Message;
            }
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand("delete from products where id='" + updatepid.Text + "'", con);
                cmd.ExecuteNonQuery();
                noticelabel.Visible = true;
                noticelabel.Text = "Product Deleted ";
            }
            catch (Exception ex)
            {
                noticelabel.Visible = true;
                noticelabel.Text = ex.Message;
            }
        }
    }
}