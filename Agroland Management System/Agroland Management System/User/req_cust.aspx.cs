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
    public partial class WebForm23 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();

            String user_email = Session["user_email"].ToString();

            SqlCommand cmd0 = con.CreateCommand();
            cmd0.CommandType = CommandType.Text;
            cmd0.CommandText = "select * from prime WHERE uemail = '" + user_email + "' and status='y'";
            cmd0.ExecuteNonQuery();

            DataTable dt0 = new DataTable();
            SqlDataAdapter da0 = new SqlDataAdapter(cmd0);
            da0.Fill(dt0);

            int i0 = Convert.ToInt32(dt0.Rows.Count.ToString());
            if (i0 > 0)
            {
                int id = Convert.ToInt32(Request.QueryString["id"].ToString());

                String phno = Session["user_phno"].ToString();

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "UPDATE cust_products set req='r', phno='" + phno + "' Where id = " + id;
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Request send successfully..');location.href='cust_products.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('Only prime member can buy');location.href='WebForm27.aspx';</script>");
            }

           
        }
    }
}