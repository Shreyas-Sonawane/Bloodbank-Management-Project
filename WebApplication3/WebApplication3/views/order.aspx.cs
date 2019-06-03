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
    public partial class order : System.Web.UI.Page
    {
        private string cs = ConfigurationManager.ConnectionStrings["bloodbankConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            if (Page.IsValid)

                con.Open();
                orders o = new orders();
                o.o_name = txtname.Text;
                o.o_patname = txtpatname.Text;
                o.o_adhar = txtadhar.Text;

                o.o_age = (int) Convert.ToInt32( txtage.Text);
                o.o_bloodg = DropDownList1.SelectedValue.ToString();

                o.o_bottle = (int)Convert.ToInt32(txtbottle.Text);
                Int32 val1 = Convert.ToInt32(txtbottle.Text);
                Int32 val2 = 1200;
                Int32 val3 = val1 * val2;
                o.o_patid = txtpatid.Text;
                o.o_sex = DropDownList5.Text;
                o.o_add = txtadd.Text;
                o.o_contact = txtcontact.Text;
                o.o_date = DateTime.Now;
                o.o_amt = o.o_bottle * 1200; 
                SqlCommand cmd = new SqlCommand("insert into orders values( '" + o.o_name + "','" + o.o_patname + "','" + o.o_adhar + "','" + o.o_age + "','" + o.o_bloodg + "','" + o.o_bottle + "','" + o.o_patid + "' ,'" + o.o_sex + "' ,'" + o.o_add + "','" + o.o_contact + "','" + o.o_date+ "','"+ o.o_amt + "');", con);
                cmd.ExecuteNonQuery();
                SqlCommand cmd1 = new SqlCommand("delete from bloodbottle where b_no = (select max(b_no) from bloodbottle where b_name ='" + o.o_bloodg  + "')",con);
                cmd1.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/views/confirmorder.aspx");

        }

        protected void txtres_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}  