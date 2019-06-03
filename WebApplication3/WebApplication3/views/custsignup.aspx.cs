using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication3.Models;

namespace WebApplication3.views
{
    public partial class custsignup : System.Web.UI.Page
    {
        private string cs = ConfigurationManager.ConnectionStrings["bloodbankConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(cs);
            if (Page.IsValid)
            {
                con.Open();
                customer c = new customer();
                c.c_email = txtemail.Text;
                c.c_password = txtcpassword.Text;
                c.c_name = txtname.Text;
                c.c_contact = TXTCONTCT.Text;
                SqlCommand cmd = new SqlCommand("insert into customer values( '"+c.c_email+ "','"+ c.c_password + "','" + c.c_name+ "','" + c.c_contact + "' )", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/views/custprofile.aspx");
            }
        }
    }
}