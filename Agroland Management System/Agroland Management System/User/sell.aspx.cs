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
    public partial class WebForm10 : System.Web.UI.Page
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
            cmd.CommandText = "select * from cust_products where id=" + id;
            cmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);

            int i = Convert.ToInt32(dt.Rows.Count.ToString());
            if (i > 0)
            {
                foreach (DataRow dr in dt.Rows)
                {
                    p_name.Text = dr["pname"].ToString();
                    p_desc.Text = dr["description"].ToString();
                    Label.Text = dr["price"].ToString();
                }
            }


        }

        protected void btn_ok_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"].ToString());

            String newDesc = p_desc.Text + " Seller No: " + phno.Text;
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                
                cmd.CommandText = "update cust_products set price ='" + p_price.Text +  "', ct = 'c' , phno='"+ bph.Text +"' , description = '"+ newDesc.ToString() + "' where id=" + id;
                cmd.ExecuteNonQuery();

                msg.Style.Add("display", "block");

            
        }

     
    }
}




