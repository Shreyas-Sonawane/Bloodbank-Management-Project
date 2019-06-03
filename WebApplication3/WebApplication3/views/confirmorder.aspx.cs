using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication3.Models;

namespace WebApplication3.views
{
    public partial class confirmorder : System.Web.UI.Page
    {
        private string cs = ConfigurationManager.ConnectionStrings["bloodbankConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
          
                string q = "select o_name, o_patname, o_adhar, o_age, b.b_name, o_bottle, o_patid, o_sex, o_add, o_contact,o_date,o_amt,o_id from orders o JOIN  bloodgroup b ON b.b_id=o_bloodg where o_id = (select max(o_id) from orders) ";
                SqlConnection con = new SqlConnection(cs);
                try
                {
                    SqlCommand cmd = new SqlCommand(q, con);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        Label1.Text = reader.GetValue(0).ToString();
                        Label2.Text = reader.GetValue(1).ToString();
                        Label3.Text = reader.GetValue(2).ToString();
                        Label4.Text = reader.GetValue(3).ToString();
                        Label5.Text = reader.GetValue(4).ToString();
                        Label6.Text = reader.GetValue(5).ToString();
                        Label7.Text = reader.GetValue(6).ToString();
                        Label8.Text = reader.GetValue(7).ToString();
                        Label9.Text = reader.GetValue(8).ToString();
                        Label10.Text = reader.GetValue(9).ToString();
                        Label12.Text =reader.GetValue(10).ToString();
                        Label11.Text = reader.GetValue(11).ToString();
                        Label13.Text = reader.GetValue(12).ToString();
                }


                }
                catch (Exception)
                {

                }
                finally
                {
                    con.Close();
                }
           

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/views/custprofile.aspx");
        }
    }
}