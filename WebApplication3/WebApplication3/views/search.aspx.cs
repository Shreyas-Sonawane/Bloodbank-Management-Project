using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class searchprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
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
            DataSet ds = GetData("select * from user_donor u inner join donor_img i on u.d_id= i.img_fk_donor inner join bloodgroup b on b.b_id=u.d_blood where u.d_blood=" + DropDownList1.SelectedValue.ToString() );



            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
    }
}