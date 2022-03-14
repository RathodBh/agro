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
    public partial class WebForm20 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
            
        //String name = "Old";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();


            //for new product
            new_load();

        }

        public void new_load()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from land_info where sell != '" + Session["user_phno"] + "' and ph !='" + Session["user_phno"] + "'";  
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            int i = Convert.ToInt32(dt.Rows.Count.ToString());
            if (i <= 0)
            {
                cards1.Style.Add("display", "none");
                notFound1.Text = "NO DATA FOUND...";
            }
            else
            {
                cards1.Style.Add("display", "flex");
                notFound1.Text = " Total " + i + " products available";
                r1.DataSource = dt;
                r1.DataBind();
            }

        }


        //get img from file
        public string checkimg(object o1, object id0)
        {
            if (o1.ToString() == "")
                return "Not available";
            else
            {
                o1 = "../Admin/" + o1.ToString();
                return "<img src='" + o1.ToString() + "' ></img>";
            }
        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlCommand cmd0 = con.CreateCommand();
            cmd0.CommandType = CommandType.Text;
            cmd0.CommandText = "select * from land_info where (name like '%'+'" + search1.Text + "'+'%' or ph like '%'+'" + search1.Text + "'+'%'  or l_price like '%'+'" + search1.Text + "'+'%' or l_area like '%'+'" + search1.Text + "'+'%') and sell != 'c' and email !='" + Session["user_email"] + "'";
            cmd0.ExecuteNonQuery();

            DataTable dt0 = new DataTable();
            SqlDataAdapter da0 = new SqlDataAdapter(cmd0);
            da0.Fill(dt0);

            int i = Convert.ToInt32(dt0.Rows.Count.ToString());
            if (i <= 0)
            {
                notFound1.Text = "No Search Found..!";
            }
            else
            {
                notFound1.Text = i + " Results match...";
            }

            r1.DataSource = dt0;
            r1.DataBind();

        }


    }
}