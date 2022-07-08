using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace WebApplication2
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-LPRM8ET;Initial Catalog=VillagersDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetPost();
                GetResidentList();
                GetFacilityList();
                GetProperty();

            }
        }
        //Post
        protected void Button1_Click(object sender, EventArgs e)
        {
            string Post = txtpost.Text;
            SqlCommand command = new SqlCommand("Insert into Announce_tb values ('" + Post + "')", connection);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully saved');", true);
            GetPost();
        }

        protected void GetPost()
        {
            SqlCommand command = new SqlCommand("select * from Announce_tb", connection);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private void GetResidentList()
        {
            connection.Open();
            SqlCommand command = new SqlCommand("Select Count(*) from ResidentRecord_tb", connection);
            var count1 = command.ExecuteScalar();
            Label2.Text = count1.ToString();
            connection.Close();
        }

        private void GetFacilityList()
        {
            connection.Open();
            SqlCommand command = new SqlCommand("Select Count(*) from Facility_tb", connection);
            var count1 = command.ExecuteScalar();
            Label3.Text = count1.ToString();
            connection.Close();


        }

        private void GetProperty()
        {
            connection.Open();
            SqlCommand command = new SqlCommand("Select Count(*) from properties_tb", connection);
            var count1 = command.ExecuteScalar();
            Label4.Text = count1.ToString();
            connection.Close();


        }

       
    }
}