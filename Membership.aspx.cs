using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;


namespace WebApplication2
{
    public partial class Membership : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                GetResidentlist();            
            }
        }
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-LPRM8ET;Initial Catalog=VillagersDB;Integrated Security=True");
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            int nationalId= int.Parse(txtid.Text);
            string fullname = txtname.Text, gender=RadioButtonList1.SelectedValue, civilstatus = ddlstatus.SelectedValue, address = txtaddress.Text, contact= txtcontact.Text, email = txtemail.Text;
            double age = double.Parse(txtAge.Text);
            DateTime bdate = DateTime.Parse(txtbday.Text);
            connection.Open();
            SqlCommand command = new SqlCommand("Insert into ResidentRecord_tb values ('" + nationalId + "', '" + fullname + "','" + age + "','" + bdate + "','" + gender + "','" + civilstatus + "','" + address + "','" + contact + "','" + email + "')", connection);
            command.ExecuteNonQuery();
            connection.Close();
            Clear();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully saved');", true);
            GetResidentlist();

        }

        void GetResidentlist() 
        {
            SqlCommand command = new SqlCommand("Select * from ResidentRecord_tb", connection);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        //update
        protected void bt_Click(object sender, EventArgs e)
        {
            int nationalId = int.Parse(txtid.Text);
            string fullname = txtname.Text, gender = RadioButtonList1.SelectedValue, civilstatus = ddlstatus.SelectedValue, address = txtaddress.Text, contact = txtcontact.Text, email = txtemail.Text;
            double age = double.Parse(txtAge.Text);
            DateTime bdate = DateTime.Parse(txtbday.Text);
            connection.Open();
            SqlCommand command = new SqlCommand("Update ResidentRecord_tb set FullName = '" + fullname + "', Age ='" + age + "', Birthday = '" + bdate + "', Gender = '" + gender + "', CivilStatus ='" + civilstatus + "', Address = '" + address + "', ContactNo = '" + contact + "', Email = '" + email + "' where NationalID = '" + int.Parse(txtid.Text)+"'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Updated');", true);
            GetResidentlist();
        }

        //Search Button
        protected void Button3_Click(object sender, EventArgs e)
        {
            int nationalId = int.Parse(txtid.Text);
            SqlCommand command = new SqlCommand("select * from ResidentRecord_tb where NationalID ='" + int.Parse(txtid.Text) + "'", connection);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        //delete

        protected void btndelete_click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand command = new SqlCommand("Delete ResidentRecord_tb where NationalID ='" + int.Parse(txtid.Text) + "'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Deleted');", true);
            GetResidentlist();
        }
        //Get Button
        protected void btnGet_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand command = new SqlCommand("Select * from ResidentRecord_tb where NationalID ='" + int.Parse(txtid.Text) + "'", connection);
            SqlDataReader r = command.ExecuteReader();
            while (r.Read())
            {
                txtname.Text = r.GetValue(1).ToString();
                txtAge.Text = r.GetValue(2).ToString();
                txtbday.Text = r.GetValue(3).ToString();
                RadioButtonList1.SelectedValue = r.GetValue(4).ToString();
                ddlstatus.SelectedValue = r.GetValue(5).ToString();
                txtaddress.Text = r.GetValue(6).ToString();
                txtcontact.Text = r.GetValue(7).ToString();
                txtemail.Text = r.GetValue(8).ToString();
            }
        }

        protected void btnclear_click(object sender, EventArgs e)
        {
            Clear();

        }
        public void Clear() 
        {
            txtid.Text = "";
            txtname.Text = "";
            txtAge.Text = "";
            txtbday.Text = "";
            RadioButtonList1.SelectedValue = "";
            ddlstatus.SelectedValue = "";
            txtaddress.Text = "";
            txtcontact.Text = "";
            txtemail.Text = "";
        }

        protected void btnload_click(object sender, EventArgs e)
        {
            GetResidentlist();
        }
    }
}
    