using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Input;
using WebApplication3.Models;

namespace WebApplication3.views
{
    public partial class delete : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = GetData("select ud.d_id,ud.d_name,ud.d_contact,di.img_path,b_name from user_donor ud left join donor_img di on ud.d_id=di.img_fk_donor inner join bloodgroup bg on bg.b_id=ud.d_blood order by d_id desc");
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
        private DataSet GetData(string q)
        {
            string CS = ConfigurationManager.ConnectionStrings["bloodbankConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter(q, con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string CS = ConfigurationManager.ConnectionStrings["bloodbankConnectionString"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {
                    con.Open();
                    donors d = new donors();

                    d.d_id = Convert.ToInt32(deltxt.Text);
                    SqlCommand cmd = new SqlCommand("delete from comments where comment_id=" + d.d_id +"or comment_fk_fromprofileid="+ d.d_id + " or comment_fk_onprofileid=" + d.d_id , con);
                    cmd.ExecuteNonQuery();

                    SqlCommand cmd1 = new SqlCommand("delete from donor_img where img_fk_donor=" + d.d_id, con);
                    cmd1.ExecuteNonQuery();

                    SqlCommand cmd2 = new SqlCommand("delete from user_donor where d_id=" + d.d_id, con);
                    cmd2.ExecuteNonQuery();


                    con.Close();

                }

                Response.Redirect("~/views/delete.aspx");
            }
        }
    }
}