using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3.views
{
    public partial class history : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = GetData();


            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
        private DataSet GetData()
        {
            string CS = ConfigurationManager.ConnectionStrings["bloodbankConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("select ud.d_id,ud.d_name ,ud.d_contact , bb.b_no , di.img_path,bg.b_name  from user_donor ud left join donor_img di on ud.d_id=di.img_fk_donor inner join bloodgroup bg on bg.b_id=ud.d_blood inner join bloodbottle bb on bb.b_fk_donors= ud.d_id where ud.d_status=1 order by d_id desc  ", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;
            }
        }
    }
}