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

namespace Agroland_Management_System.Customers
{
    public partial class login : System.Web.UI.Page
    {
        //connection string (available at: Web.config => connectionString )
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            //if connection is open then it will closed else (connection => open)
            
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
                cmd.CommandText = "select * from user_info where email='" + email.Text + "' and pwd = '"+ pwd.Text +"'";
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                int i = Convert.ToInt32(dt.Rows.Count.ToString());

                if (i > 0)
                {
                    //store user details for used in any page
                    foreach (DataRow dr in dt.Rows)
                    {
                        Session["user_email"] = email.Text;
                        Session["user_name"] = dr["name"].ToString(); 
                        Session["user_phno"] = dr["cno"].ToString();
                        Session["user_add"] = dr["addr"].ToString();
                        Session["user_ct"] = dr["ct"].ToString();
                    }

                    Response.Write("<script>alert('Login successfully..');</script>");
                    Response.Redirect("user_demo.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Email-ID or Password is wrong..');</script>");
                }
            }
        }
    }
}