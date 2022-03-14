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
    public partial class WebForm18 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();

            
            int id = Convert.ToInt32(Request.QueryString["id"].ToString());

            String phno = Session["user_phno"].ToString();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from new_products where id='"+ id +"'";
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

           /* SqlCommand cmd0 = con.CreateCommand();
            cmd0.CommandType = CommandType.Text;
            cmd0.CommandText = "update new_products set ph = '"+ phno.ToString() +"' where id=" + id ;
            cmd0.ExecuteNonQuery();

            DataTable dt0 = new DataTable();
            SqlDataAdapter da0 = new SqlDataAdapter(cmd0);
            da0.Fill(dt0);

            int i0 = Convert.ToInt32(dt.Rows.Count.ToString());

            if (i0 > 0)
            {
                Response.Write("<script>alert('Buy Confirmed');</script>");   
            }

            */
        }
    }
}