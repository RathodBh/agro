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
    public partial class WebForm12 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();


            int id = Convert.ToInt32(Request.QueryString["id"].ToString());

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE new_products set req='y' WHERE id="+id;
            cmd.ExecuteNonQuery();

     
            Response.Write("<script>alert('Product sell successfully..');location.href='requested_products.aspx';</script>");  
        }
    }
}