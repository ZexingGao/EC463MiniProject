﻿using System;
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
            bool check = true;
            int Id = 1; 
            while (check == true)
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

                Thread.Sleep(1000);//refresh every 1 sec
                
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}