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
    public partial class forget_password : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            //if connection is open then it will closed else (connection => open)

            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
        }


        protected void btn_fp_Click(object sender, EventArgs e)
        {
            if (email.Text == "" || pwd.Text == "" || sq.Text == "")
            {
                Response.Write("<script>alert('Please enter all details');</script>");
            }
            else
            {
                //select query
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from user_info where email='" + email.Text + "' and sq = '"+ sq.Text +"'";
                cmd.ExecuteNonQuery();

                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                int i = Convert.ToInt32(dt.Rows.Count.ToString());

                if (i > 0)
                {
                    SqlCommand cmd1 = con.CreateCommand();
                    cmd1.CommandType = CommandType.Text;
                    cmd1.CommandText = "update user_info set pwd='" + pwd.Text + "' where email='" + email.Text + "' and sq = '" + sq.Text+ "'";
                    cmd1.ExecuteNonQuery();

                    Response.Write("<script>alert('Password Updated successfully');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Email-ID or Security Questions answer is wrong or doesnot match..');</script>");
                }
            }
        }
    }
}