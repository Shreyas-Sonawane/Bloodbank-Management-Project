using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3.views
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        
                if ((String.Compare(username.Text ,"admin" )==0) &&(string.Compare(password.Text, "admin123")==0))
                {
                    Response.Redirect("~/views/adminprofile.aspx");
                }
        }
   
    }
}