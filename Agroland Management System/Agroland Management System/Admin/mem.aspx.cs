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
    public partial class WebForm14 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            //if connection is open then it will closed else (connection => open)

            int id = Convert.ToInt32(Request.QueryString["id"].ToString());

            if (con.State == ConnectionState.Open)
                con.Close();
            con.Open();

            DateTime now = DateTime.Now;
            now =  now.AddDays(180);
            String dt = now.ToString();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE prime set status='y', enddate = '"+ dt +"' WHERE id ="+id;
            cmd.ExecuteNonQuery();

            Response.Write("<script>location.href='accept_member.aspx'</script>");



        }
    }
}