using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using System.Threading.Tasks;
using System.Data.SqlClient;



namespace RealMini
{
    public partial class main : System.Web.UI.Page
    {


        private const string connString = @"Data Source = (LocalDB)\MSSQLLocalDB;AttachDbFilename = |DataDirectory|\userinfo.mdf;";
        protected void Page_Load(object sender, EventArgs e)
        {
            //Thread.Sleep(5000);//refresh every 1 sec

            Random temperature = new Random((int)DateTime.Now.Ticks);
            int t = temperature.Next(18, 25);//generate random temperature

            Random humidity = new Random();
            int h = humidity.Next(75, 80);//generate random humidity

            float avg_temperature = 0;
            float avg_humidity = 0;

            SqlConnection conn5 = new SqlConnection(connString);
            conn5.Open();
            SqlCommand cmd5 = new SqlCommand("SELECT * FROM userinfo where [current] = '1'", conn5);
            SqlDataReader rdr5 = cmd5.ExecuteReader();
            while (rdr5.Read())
            {


                name.Text = Convert.ToString(rdr5["userid"]);
            }
            conn5.Close();

            avg_temperature = (avg_temperature + t) / Convert.ToInt32(avg_counter.Text);
            avg_temp.Text = Convert.ToString(avg_temperature);
            avg_humidity = (avg_humidity + h) / Convert.ToInt32(avg_counter.Text);
            avg_humi.Text = Convert.ToString(avg_humidity);


            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO dataplot" +
            " (Id, temperature, humidity, time)" + "VALUES(@Id, @temperature, @humidity, @time)", conn);
            // create parameters
            cmd.Parameters.Add("@Id", System.Data.SqlDbType.Int);
            cmd.Parameters.Add("@temperature", System.Data.SqlDbType.Float);
            cmd.Parameters.Add("@humidity", System.Data.SqlDbType.Float);
            cmd.Parameters.Add("@time", System.Data.SqlDbType.DateTime2);

            // set values to parameters
            //cmd.Parameters["@Id"].Value = Convert.ToInt32(cmd.Parameters["@Id"].Value);
            cmd.Parameters["@Id"].Value = Convert.ToInt32(Convert.ToInt32(cmd.Parameters["@Id"].Value) + 2);
            cmd.Parameters["@temperature"].Value = Convert.ToInt32(t);
            cmd.Parameters["@humidity"].Value = Convert.ToInt32(h);
            cmd.Parameters["@time"].Value = DateTime.Now;

            // execute the query and return number of rows affected, but not used yet
            int RowsAffected = cmd.ExecuteNonQuery();

            //Id += 1;//Id is the private key for the table
            conn.Close();

            SqlConnection conn2 = new SqlConnection(connString);
            conn2.Open();

            conn2.Close();

            avg_counter.Text += 1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }




        protected void Button2_Click(object sender, EventArgs e)
        {

            Response.Redirect("login.aspx");
        }




    }
}