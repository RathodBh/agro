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
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

       // String user_email, price;
        
        protected void Page_Load(object sender, EventArgs e)
        {

            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();

            //print the message
            msg.Style.Add("display", "none");
            msg2.Style.Add("display", "none");
            msg3.Style.Add("display", "none");


            int id = Convert.ToInt32(Request.QueryString["id"].ToString());


            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from new_products where id=" + id;
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
                    Label1.Text = " Old: " + dr["description"].ToString();
                    //p_price.Text = dr["price"].ToString();
                    Label2.Text = " Old: " + dr["price"].ToString();
                }
            }


        }

        protected void btn_ok_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"].ToString());

            if (p_name.Text == "" || p_desc.Text == "" || p_price.Text == "")
            {
                msg2.Style.Add("display", "block");

            }
            else if (IsNumeric(p_price.Text) == false || p_price.Text.Length > 8)
            {
                msg3.Style.Add("display", "block");
            }

            else
            {

                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update new_products set description = '" + p_desc.Text + "' , price = '" + p_price.Text + "' where id=" + id;
                cmd.ExecuteNonQuery();

                msg.Style.Add("display", "block");

            }
        }

        //creting function for check numer value or not
        public bool IsNumeric(String str)
        {
            try
            {
                if (!string.IsNullOrEmpty(str))
                {
                    long num;
                    if (long.TryParse(str, out num))
                    {
                        return true;
                    }
                }
            }
            catch (Exception ex)
            {
                ex.ToString();
            }
            return false;
        }

    }
}




