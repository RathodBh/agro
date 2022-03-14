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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        String name1 = "New", name2 = "Old";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();

            
            //for new product
            new_load();

            //for old product
            old_load();
           

        }

        public void new_load()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from new_products where category like '"+ name1.ToString() + "'+'%'";
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

        public void old_load()
        {
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "select * from new_products  where category like '" + name2.ToString() + "'+'%'";
            cmd2.ExecuteNonQuery();

            DataTable dt2 = new DataTable();
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            da2.Fill(dt2);

            int j = Convert.ToInt32(dt2.Rows.Count.ToString());
            if (j <= 0)
            {
                cards2.Style.Add("display", "none");
                notFound2.Text = "NO DATA FOUND...";
            }
            else
            {
                cards2.Style.Add("display", "flex");
                notFound2.Text = " Total " + j + " Old products available";
                r2.DataSource = dt2;
                r2.DataBind();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd0 = con.CreateCommand();
            cmd0.CommandType = CommandType.Text;
            cmd0.CommandText = "select * from new_products where (pname like '%'+'" + search1.Text + "'+'%' or description like '%'+'" + search1.Text + "'+'%'  or price like '%'+'" + search1.Text + "'+'%') and category like '" + name1.ToString() + "'+'%'";
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

            //reset old part
            search2.Text = "";
            old_load();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand cmd0 = con.CreateCommand();
            cmd0.CommandType = CommandType.Text;
            cmd0.CommandText = "select * from new_products where (pname like '%'+'" + search2.Text + "'+'%' or description like '%'+'" + search2.Text + "'+'%'  or price like '%'+'" + search2.Text + "'+'%') and category like '" + name2.ToString() + "'+'%'";
            cmd0.ExecuteNonQuery();

            DataTable dt0 = new DataTable();
            SqlDataAdapter da0 = new SqlDataAdapter(cmd0);
            da0.Fill(dt0);

            int i = Convert.ToInt32(dt0.Rows.Count.ToString());
            if (i <= 0)
            {
                notFound2.Text = "No Search Found..!";
            }
            else
            {
                notFound2.Text = i + " Results match...";
            }

            r2.DataSource = dt0;
            r2.DataBind();

            //reset new part
            search1.Text = "";
            new_load();
 
        }
    }
}