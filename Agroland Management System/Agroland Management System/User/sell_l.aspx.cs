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
    public partial class WebForm12 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        String user_email, price;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();

            //print the message
            msg.Style.Add("display", "none");



            int id = Convert.ToInt32(Request.QueryString["id"].ToString());


            unm.Text = Session["user_name"].ToString();
            phno.Text = Session["user_phno"].ToString();
            email.Text = Session["user_email"].ToString();
            addr.Text = Session["user_add"].ToString();
            ct.Text = Session["user_ct"].ToString();


            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from land_info where id=" + id;
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            int i = Convert.ToInt32(dt.Rows.Count.ToString());
            if (i > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    p_name.Text = dr["l_name"].ToString();
                    p_desc.Text = dr["l_add"].ToString();
                    Label.Text = dr["l_price"].ToString();
                }
            }


        }

        protected void btn_ok_Click(object sender, EventArgs e)
        {
             String user_email = Session["user_email"].ToString();
             DateTime now = DateTime.Now;
             
             String dt1 = now.ToString();

            SqlCommand cmd0 = con.CreateCommand();
            cmd0.CommandType = CommandType.Text;
            cmd0.CommandText = "select * from prime WHERE uemail = '" + user_email + "' and status='y' and enddate <= '"+ dt1 +"'";
            cmd0.ExecuteNonQuery();

            DataTable dt0 = new DataTable();
            SqlDataAdapter da0 = new SqlDataAdapter(cmd0);
            da0.Fill(dt0);

            int i0 = Convert.ToInt32(dt0.Rows.Count.ToString());
            if (i0 > 0)
            {
                int id = Convert.ToInt32(Request.QueryString["id"].ToString());

                String newDesc = phno.Text;
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;

                cmd.CommandText = "update land_info set l_price ='" + p_price.Text + "', sell = '" + bph.Text + "' , l_add = '" + p_desc.Text + "' where id=" + id;
                cmd.ExecuteNonQuery();

                msg.Style.Add("display", "block");
            }
            else
            {
                Response.Write("<script>alert('Only prime member can sell');location.href='WebForm27.aspx';</script>");
            }

        }


    }
}




