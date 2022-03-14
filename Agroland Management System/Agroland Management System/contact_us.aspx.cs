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

namespace Agroland_Management_System
{
    public partial class contact_us : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();
        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            if (name.Text == "" || phno.Text == "" || email.Text == "" || msgg.Text == "")
            {
                Response.Write("<script>alert('Please enter all details..');</script>");
            }
            else if (IsNumeric(phno.Text) == false || phno.Text.Length != 10)
            {
                Response.Write("<script>alert('Please enter valid Phone number or enter only Number');</script>");
            }
            else 
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "insert into contact_us values('" + name.Text + "'," + phno.Text + ",'" + email.Text + "','" + msgg.Text +"')";
                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Response submitted...');</script>");
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