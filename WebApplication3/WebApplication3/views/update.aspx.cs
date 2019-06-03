using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication3.Models;

namespace WebApplication3.views
{
    public partial class update : System.Web.UI.Page
    {
        private string cs = ConfigurationManager.ConnectionStrings["bloodbankConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                List<int> li = new List<int>();

                for (int i = 18; i <= 50; i++)
                {
                    li.Add(i);

                }

                DropDownList1.DataSource = li;
                DropDownList1.DataBind();

            }

        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                donors d = new donors();
                d.d_email = txtemail.Text;
                d.d_password = txtpass.Text;
                d.d_cinc = txtcnic.Text;
                d.d_name = txtname.Text;
                d.d_age = Convert.ToInt32(DropDownList1.SelectedValue);
                d.d_contact = txtcontact.Text;
                d.d_bgroup = DropDownList2.SelectedValue.ToString();
                d.d_hb = (float)Convert.ToDouble(txthb.Text);
                string CS = ConfigurationManager.ConnectionStrings["bloodbankConnectionString"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("update user_donor set  d_email = '" + d.d_email + "', d_password ='" + d.d_password + "',d_cnic =" + d.d_cinc + ",d_name = '" + d.d_name + "',d_age = " + d.d_age + ",d_contact = " + d.d_contact + ",d_blood = " + d.d_bgroup + ", d_hb="+ d.d_hb +" where d_id = " + Session["u_id"], con);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Redirect("~/views/profile.aspx");
                    }
               
            }
        }
    }
}