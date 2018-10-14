using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebApplication1.DemoStaff
{
    public partial class MakeSale : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader dr;
        int n, newqty;
       DateTime d = DateTime.Now;
       string avqty;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("/DemoLogin.aspx");
            } 
            
            
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
                        pidbox.Items.Add(dr.GetString(0));
                        
                    }
                    dr.Close();
                    
                }
                
            }
            catch(Exception ex)
            {
                noticelabel.Text = ex.Message;
            }
        }


        protected void pidbox_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand("select * from Products where id='" + pidbox.Text + "'", con);
                dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        labelpid.Visible = false;
                        labelpid.Text=dr.GetString(0).ToString();
                        pname.Text = dr.GetString(1).ToString();
                        pprice.Text= dr.GetString(2).ToString();
                        pbrand.Text = dr.GetString(3).ToString();
                        expdate.Text = dr.GetString(4).ToString();
                        string avqty = dr.GetString(5).ToString();
                        qtyavail.Text = avqty;
                        // qtynew = dr.GetString(5).ToString(); 
                        Label1.Visible = false;
                        Label1.Text = dr.GetString(5).ToString();

                    }                  
                }
                else
                {
                    noticelabel.Text = "Product Not Found";
                }
            }
            catch(Exception ex)
            {
                noticelabel.Text = ex.Message;
            }
            if (qtyavail.Text == "0")
            {
                btnsale.Enabled = false;
                noticelabel.Visible = true;
                noticelabel.Text = "Sorry " + pname.Text + " is out of stock. Sale cannot be made";
            }
        }
         

        protected void btnsale_Click(object sender, EventArgs e)
        {

                try
                {

                    int ct = 1;
                    cmd = new SqlCommand("insert into sales values('" + ct + "','" + pname.Text + "'," + pprice.Text + ",'" + pbrand.Text + "','" + d + "')", con);

                    cmd.ExecuteNonQuery();
                    noticelabel.Visible = true;
                    noticelabel.Text = "Sale Success";
                    pname.Text = "";
                    pprice.Text = "";
                    pbrand.Text = "";
                    expdate.Text = "";
                    pidbox.Items.RemoveAt(pidbox.SelectedIndex);
                    pidbox.Focus();
                    // con.Close();
                }
                catch (Exception ex)
                {
                    noticelabel.Visible = true;
                    noticelabel.Text = ex.Message;
                }


                // Logic to decrement the product qty after each sale 
                n = int.Parse(Label1.Text);
                newqty = n - 1;
                Label1.Visible = false;
                Label1.Text = Convert.ToString(newqty);
                // End of Logic for decrement 

                // Code to apply qty decrement logic
                try
                {
                    cmd = new SqlCommand("update Products SET qty='" + Label1.Text + "'where id='" + labelpid.Text + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                   
                }
                catch (Exception ex)
                {
                    noticelabel.Visible = true;
                    noticelabel.Text = ex.Message;
                }
            }
            
        
        }

  /*  To Remove Duplicate values from combox list    protected void Removedup()
        {
            for(int i=1;i<pidbox.Items.Count;i++)
            {
                pidbox.SelectedIndex = i;
                string str = pidbox.SelectedItem.ToString();
                for (int counter = i + 1; counter < pidbox.Items.Count; counter++)
                {
                    pidbox.SelectedIndex = counter;
                    string compareStr = pidbox.SelectedItem.ToString();
                    if (str == compareStr)
                    {
                        pidbox.Items.RemoveAt(counter);
                        counter = counter - 1;
                    }
                }
            
            }
        } */
    } 
