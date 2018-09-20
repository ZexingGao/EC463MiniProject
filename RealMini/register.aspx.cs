using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace RealMini
{
    
    public partial class register : System.Web.UI.Page
    {
        private const string connString = @"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename = |DataDirectory|\userinfo.mdf;";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (username.Text != "" & password.Text != "" & username.Text.Length < 17 & username.Text.Length > 5 & password.Text.Length > 5)
            {
                //bool check = true;
                SqlConnection conn = new SqlConnection(connString);
                conn.Open();
                SqlCommand cmd = new SqlCommand("SELECT userid FROM userinfo where userid = '" + username.Text + "'", conn);
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    error.Text = "Please try another Username!";
                }
                else
                {
                        SqlDataSource1.Insert();
                        error.Text = "";
                        Response.Redirect("login.aspx");

                }
                conn.Close();
            }
            else
            {
                error.Text = "Please make sure your Username is between 6 to 16 characters and Password is longer than 6 characters!";
            }
        }

        protected void username_TextChanged(object sender, EventArgs e)
        {
            
                
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}