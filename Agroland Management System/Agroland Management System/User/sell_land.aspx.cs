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
    public partial class WebForm16 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        //String user_email;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();

            //print the message
            msg.Style.Add("display", "none");
            msg2.Style.Add("display", "none");
            msg3.Style.Add("display", "none");
            msg4.Style.Add("display", "none");
            msg5.Style.Add("display", "none");


            //if (Session["user_email"].ToString() == "")
            //{
            //    Response.Redirect("login.aspx");
            //}

            unm.Text = Session["user_name"].ToString();
            phno.Text = Session["user_phno"].ToString();
            //email.Text = Session["user_email"].ToString();
            //addr.Text = Session["user_add"].ToString();
            ct.Text = Session["user_ct"].ToString();
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
                if (p_name.Text == "" || p_desc.Text == "" || p_price.Text == "")
                {
                    msg2.Style.Add("display", "block");

                }
                else if (IsNumeric(p_price.Text) == false || p_price.Text.Length > 8)
                {
                    msg3.Style.Add("display", "block");
                }
                else if (p_img.FileName.ToString() == "")
                {
                    msg4.Style.Add("display", "block");
                }
                else
                {
                    String img_path;

                    if (!(System.IO.Path.GetExtension(p_img.FileName).ToLower().Equals(".jpg") || System.IO.Path.GetExtension(p_img.FileName).ToLower().Equals(".jpeg")))
                    {
                        msg5.Style.Add("display", "block");
                    }
                    else
                    {
                        //used for random number
                        Random r = new Random(5);
                        int num = r.Next();
                        string img_nm = "l_img" + num.ToString() + p_img.FileName.ToString() + System.IO.Path.GetExtension(p_img.FileName);

                        //set the image to specific folder
                        p_img.SaveAs(Request.PhysicalApplicationPath + "/User/img/" + img_nm.ToString());
                        img_path = "../User/img/" + img_nm.ToString();



                        SqlCommand cmd = con.CreateCommand();
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "insert into land_info values('" + unm.Text + "','" + phno.Text + "','" + p_name.Text + "','" + p_desc.Text + "','" + p_price.Text + "', '" + ct.Text + "','" + img_path.ToString() + "','N')";
                        cmd.ExecuteNonQuery();

                        msg.Style.Add("display", "block");
                    }
                }
            }
            else {
                Response.Write("<script>alert('Only prime member can sell');location.href='WebForm27.aspx';</script>");
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

