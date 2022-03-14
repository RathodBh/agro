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
    public partial class admin_login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            //check for blank textbox or not
            if (email.Text == "" || pwd.Text == "")
            {
                Response.Write("<script>alert('Please enter email Id and Password');</script>");
            }
            else
            {
                //select query
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from admin_info where email='" + email.Text + "' and pwd = '" + pwd.Text + "'";
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                int i = Convert.ToInt32(dt.Rows.Count.ToString());

                if (i > 0)
                {
                    Response.Write("<script>alert('Login successfully..');</script>");
                    Response.Redirect("demo.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Email-ID or Password is wrong..');</script>");
                }
            }
        }
    }
}