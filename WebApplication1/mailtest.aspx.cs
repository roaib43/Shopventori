using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace WebApplication1
{
    public partial class mailtest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void SendMail()
        {
            try
            {
                MailMessage mail = new MailMessage();
                mail.To.Add("roaibhyder01@gmail.com");

                mail.From = new MailAddress("shopventory01@gmail.com");
                mail.Subject = txtTo.Text+ " has contacted" ;
                string Body = txtTo.Text + txtmessage.Text;
                mail.Body = Body;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
                smtp.Port = 587;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new System.Net.NetworkCredential
                ("shopventory01@gmail.com", "Nthngmuch987");

                //Or your Smtp Email ID and Password
                smtp.EnableSsl = true;
                smtp.Send(mail);
                notice.Text = "mesg send";
            }
            catch(Exception ex)
            {
                notice.Text = ex.Message;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SendMail();
        }
     
     
        }
    }
