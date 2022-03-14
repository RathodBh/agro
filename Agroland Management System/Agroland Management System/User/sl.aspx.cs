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
    public partial class WebForm25 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        String user_email, price;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();


            int id = Convert.ToInt32(Request.QueryString["id"].ToString());


            //unm.Text = Session["user_name"].ToString();
            //phno.Text = Session["user_phno"].ToString();
            //email.Text = Session["user_email"].ToString();
            //addr.Text = Session["user_add"].ToString();
            //ct.Text = Session["user_ct"].ToString();


            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update cust_products set req='y' where id=" + id;
            cmd.ExecuteNonQuery();


            Response.Write("<script>alert('Sell succcessfully..');location.href='my_sell_details.aspx';</script>");
        }
    }
}