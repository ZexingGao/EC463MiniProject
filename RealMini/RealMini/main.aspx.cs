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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool ButtonIsClick = true;
            int count = 0;
            int Id = 1;
            while (ButtonIsClick == true)
            {
                Random temperature = new Random();

                int t = temperature.Next(-50, 60);//generate random temperature

                Random humidity = new Random();
                int h = humidity.Next(0, 100);//generate random humidity

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
                cmd.Parameters["@Id"].Value = Convert.ToInt32(Id);
                cmd.Parameters["@temperature"].Value = Convert.ToInt32(t);
                cmd.Parameters["@humidity"].Value = Convert.ToInt32(h);
                cmd.Parameters["@time"].Value = DateTime.Now;

                // execute the query and return number of rows affected, but not used yet
                int RowsAffected = cmd.ExecuteNonQuery();

                Id += 1;//Id is the private key for the table
                conn.Close();


                /*
                *Add your code here
                *love you
                * 
                * 
                * 
                * 
                * 
                * if (count == 0)
                {
                    Response.AddHeader("Refresh", "0");
                    count++;
                }
                * 
                * 
                * 
                * 
                * 
                * 
                */


                Thread.Sleep(5000);//refresh every 1 sec
                //ButtonIsClick = false;
            }
        }




        protected void Button2_Click(object sender, EventArgs e)
        {
            //clean the current simulated data
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM dataplot", conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("login.aspx");
        }
        protected void Tick(object sender, EventArgs e)
        {
            UpdatePanel1.Update();
            Chart1.DataBind();//如果显示数据是GridView的话
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

        }
    }
}