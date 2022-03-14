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
    public partial class WebForm27 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            //if connection is open then it will closed else (connection => open)

            String email = Session["user_email"].ToString();


            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();

            load2();
            load();

        }

        protected void btn_ok_Click(object sender, EventArgs e)
        {
            String email = Session["user_email"].ToString();
            DateTime now = DateTime.Now;

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into prime values('"+ email +"','"+ now +"', '500', 'r' ,' ')";
            cmd.ExecuteNonQuery();

            btn_ok.Text = "REQUEST SUBMITTED SUCCESSFULLY";
            //Response.Write("<script>location.herf='WebForm27.aspx'</script>");


            load2();
            load();
        }

        public void load() {

            String email = Session["user_email"].ToString();

            DateTime now = DateTime.Now;
            
            String dt1 = now.ToString();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT DISTINCT * FROM prime WHERE uemail = '" + email + "' and status = 'y' and enddate <= '"+ dt1 +"'";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            int i = Convert.ToInt32(dt.Rows.Count.ToString());

            if (i > 0)
            {
                Label1.Text = "";
                Label2.Text = "You are prime member";
            }
            else
            {
                Label1.Text = "You are not prime member";
                Label2.Text = "";
            }
        }

        public void load2()
        {

            String email = Session["user_email"].ToString();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT DISTINCT * FROM prime WHERE uemail = '" + email + "' and status = 'r'";
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            int i = Convert.ToInt32(dt.Rows.Count.ToString());

            if (i > 0)
            {
                Label1.Text = "";
                btn_ok.Text = "REQUEST SUBMITTED SUCCESSFULLY";
            }
            else
            {
                Label2.Text = "";
            }
        }

    }
}