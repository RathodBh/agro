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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        String  category = "";
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

           
        }

        protected void btn_ok_Click(object sender, EventArgs e)
        {
            if(p_name.Text=="" || p_desc.Text=="" || p_price.Text =="")
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
                        string img_nm = "img" + num.ToString() + p_img.FileName.ToString() + System.IO.Path.GetExtension(p_img.FileName);
                        
                        //set the image to specific folder
                        p_img.SaveAs(Request.PhysicalApplicationPath + "/Admin/product_img/" + img_nm.ToString());
                        img_path = "../Admin/product_img/" + img_nm.ToString();



                        SqlCommand cmd = con.CreateCommand();
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "insert into new_products values('" + p_name.Text + "','" + p_desc.Text + "'," + p_price.Text + ",'" + dd_category.Text + "', '" + img_path.ToString() + "', 'N','n')";
                        cmd.ExecuteNonQuery();

                        msg.Style.Add("display","block");
                    }
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