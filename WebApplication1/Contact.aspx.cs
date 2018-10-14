using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;

namespace WebApplication1
{
    public partial class Contact : Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void SendMail()
        {
            try
            {
                MailMessage mail = new MailMessage();
               
                //  email = "roaibhyder01@gmail.com" ;
                mail.To.Add("roaibhyder01@gmail.com");
                mail.From = new MailAddress("shopventory01@gmail.com");
                mail.Subject = "You have a new Message from " + txtname.Text;
                string Body = "Name :" +txtname.Text +"\n"+ "Email :" + txtemail.Text + "\n" + "Phone :"+ txtphone.Text +"\n"+ "Message :"+txtmsg.Text;
                mail.Body = Body;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
                smtp.Port = 587;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new System.Net.NetworkCredential
                ("shopventory01@gmail.com", "Nthngmuch987");
                //smtp settings
                smtp.EnableSsl = true;
                smtp.Send(mail);
                noticelabel.Text = "Thank you, You will hear from us soon.";

            }
            catch (Exception ex)
            {
                noticelabel.Text = ex.Message;
            }
        }





        protected void Button1_Click(object sender, EventArgs e)
        {

            SendMail();

            /*    DateTime date = DateTime.Now;
                   try
                   {
                       con = new SqlConnection("Data Source=(LocalDb)\\v11.0;AttachDbFilename=F:\\Roaib\\6th Sem Project\\Shop Inventory\\WebApplication1\\App_Data\\aspnet-WebApplication1-20171223232403.mdf;Initial Catalog=aspnet-WebApplication1-20171223232403;Integrated Security=True");
                       con.Open();
                   }
                   catch (Exception ex)
                   {
                       noticelabel.Text = ex.Message;
                    
                   } 

               try
               {
                   cmd = new SqlCommand("insert into contact values('" + txtname.Text + "','" + txtemail.Text + "','" + plan.Text + "','" + txtmsg.Text + "','"+ date +"')", con);
                   cmd.ExecuteNonQuery();
                   noticelabel.Text = "Thank you, You will hear from us soon.";
               }
               catch(Exception ex)
               {
                   noticelabel.Text=ex.Message;
               } 

            }
            
           } */

        }
    }
}

