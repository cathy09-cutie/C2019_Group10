using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication2
{
    public partial class UserLogIn : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed) 
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Select * from usersignup_tb where Member_Id = '" + TextBox1.Text.Trim() + "' AND Password='"+TextBox2.Text.Trim()+"'" , con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                    Response.Write("<script>alert('Successful login');</script>");
                    Session["username"] = dr.GetValue(0).ToString();
                    Session["fullname"] = dr.GetValue(2).ToString();
                    Session["role"] = "user";
                    Session["status"] = dr.GetValue(7).ToString();
                }
                    Response.Redirect("Home.aspx");     
                    

                }
                else 
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }
            }
            catch (Exception ex)
            {
               
            }
        }
    }
}