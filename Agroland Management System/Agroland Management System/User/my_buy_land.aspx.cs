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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        String user_email, price;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();

            string userph = Session["user_phno"].ToString();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from land_info where sell = '" + userph + "'";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            int i = Convert.ToInt32(dt.Rows.Count.ToString());
            if (i > 0)
            {
                r2.DataSource = dt;
                r2.DataBind();
            }
            else
            {
                Label2.Text = "No records found";
            }
         
        }
    }
}