﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class adminRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                con.Open();

                string query = "select count(*) from userTable where username = '" + username.Text + "'";
                SqlCommand cmd = new SqlCommand(query, con);
                int check = Convert.ToInt32(cmd.ExecuteScalar().ToString());

                if (check > 0)
                {
                    errMsg.Visible = true;
                    errMsg.ForeColor = System.Drawing.Color.Red;
                    errMsg.Text = "Username has been taken!";
                }
                else
                {
                    string query1 = "insert into userTable (fname, lname, gender, country, email, username, password, usertype) values (@firstName, @lastName, @gender, @country, @email, @username, @password, @usertype)";
                    SqlCommand cmd1 = new SqlCommand(query1, con);

                    cmd1.Parameters.AddWithValue("@firstName", fname.Text);
                    cmd1.Parameters.AddWithValue("@lastName", lname.Text);
                    cmd1.Parameters.AddWithValue("@gender", gender.SelectedItem.ToString());
                    cmd1.Parameters.AddWithValue("@country", country.Text);
                    cmd1.Parameters.AddWithValue("@email", email.Text);
                    cmd1.Parameters.AddWithValue("@username", username.Text);
                    cmd1.Parameters.AddWithValue("@password", pwd.Text);
                    cmd1.Parameters.AddWithValue("@usertype", usertype.Text);
                    cmd1.ExecuteNonQuery();
                    Response.Redirect("login.aspx");
                }
                con.Close();
            }
            catch (Exception ex)
            {
                errMsg.Visible = true;
                errMsg.ForeColor = System.Drawing.Color.Red;
                errMsg.Text = "Registration not successful!" + ex.ToString();
            }
        }
    }
}