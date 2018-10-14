using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1.DemoStaff
{
    public partial class Staff : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnstafflougout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("/DemoLogin.aspx");
        }
    }
}