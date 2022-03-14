using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


//import must required
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Agroland_Management_System.User
{
    public partial class WebForm14 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        String user_email, price;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();

            int cnt = 0;
            String userph = Session["user_phno"].ToString();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from cust_products where phno = '" + userph + "' and req='y'";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            int i = Convert.ToInt32(dt.Rows.Count.ToString());
            if (i > 0)
            {
                r1.DataSource = dt;
                r1.DataBind();
            }
            else
            {
                cnt += 1;
                Label1.Text = "No records from buyer's products";
            }

            //String userph = Session["user_phno"].ToString();
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select DISTINCT * from new_products where ph = '" + userph.ToString() + "' and req='y'";
            cmd1.ExecuteNonQuery();

            DataTable dt1 = new DataTable();
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            da1.Fill(dt1);

            int i1 = Convert.ToInt32(dt1.Rows.Count.ToString());
            if (i1 > 0)
            {
                r2.DataSource = dt1;
                r2.DataBind();
            }
            else
            {
                cnt += 1;
                Label2.Text = "No records from Shop buyed products";
            }



            if (cnt == 2)
            {

                Label2.Text = "No records from Shop buyed products";

                //Label1.Text = "No records from buyer's products";
            }
        }
    }
}