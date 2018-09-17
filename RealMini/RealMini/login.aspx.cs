using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace RealMini
{
    public partial class login : System.Web.UI.Page
    {
        private const string connString = @"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename = |DataDirectory|\userinfo.mdf;";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connString);
            SqlConnection conn2 = new SqlConnection(connString);
            conn.Open();
            conn2.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM userinfo where userid = '" + username.Text + "' AND password = '" + password.Text + "'", conn);
            SqlCommand cmd2 = new SqlCommand("SELECT userid FROM userinfo where userid = '" + username.Text + "'", conn2);
            SqlDataReader rdr = cmd.ExecuteReader();
            SqlDataReader rdr2 = cmd2.ExecuteReader();
            if (rdr2.HasRows)
            {
                if (rdr.HasRows)
                {
                    Response.Redirect("main.aspx");
                }

                else
                {
                    error.Text = "Please check your password";

                }
            }
            else
            {

                error.Text = "Please register";


            }
            conn.Close();
            conn2.Close();
        }
    }
}