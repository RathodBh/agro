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

namespace Agroland_Management_System.Admin
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();

            DateTime now = DateTime.Now;
            String dt1 = now.ToString();
            
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT DISTINCT * FROM prime where status = 'y' and enddate <= '"+ dt1 +"'";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            r1.DataSource = dt;
            r1.DataBind();
        }
    }
}