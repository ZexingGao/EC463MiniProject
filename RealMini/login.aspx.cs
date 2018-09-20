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
            SqlConnection conn_dataplot = new SqlConnection(connString);
            conn_dataplot.Open();

            //clean the current simulated data


            //SqlCommand cmd = new SqlCommand("DELETE FROM dataplot WHERE Id != 1", conn);
            SqlCommand cmd_delete = new SqlCommand("DELETE FROM dataplot", conn_dataplot);
            cmd_delete.ExecuteNonQuery();


            SqlCommand cmd3 = new SqlCommand("INSERT INTO dataplot" +
                    " (Id, temperature, humidity, time)" + "VALUES(@Id, @temperature, @humidity, @time)", conn_dataplot);
            // create parameters
            cmd3.Parameters.Add("@Id", System.Data.SqlDbType.Int);
            cmd3.Parameters.Add("@temperature", System.Data.SqlDbType.Float);
            cmd3.Parameters.Add("@humidity", System.Data.SqlDbType.Float);
            cmd3.Parameters.Add("@time", System.Data.SqlDbType.DateTime2);

            // set values to parameters
            cmd3.Parameters["@Id"].Value = Convert.ToInt32(1);
            cmd3.Parameters["@temperature"].Value = Convert.ToInt32(0);
            cmd3.Parameters["@humidity"].Value = Convert.ToInt32(0);
            cmd3.Parameters["@time"].Value = DateTime.Now;

            // execute the query and return number of rows affected, but not used yet
            int RowsAffected = cmd3.ExecuteNonQuery();
            conn_dataplot.Close();


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