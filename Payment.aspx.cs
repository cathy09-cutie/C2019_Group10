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
    public partial class Payment : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-LPRM8ET;Initial Catalog=VillagersDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetMembershipFee();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int nationalId = int.Parse(txtid.Text);
            string Name = txtname.Text, Price = txtprice.Text , Paid = ddlPayment.SelectedValue;
            connection.Open();
            SqlCommand command = new SqlCommand("Insert into Fee_tb values ('" + nationalId + "', '" + Name + "','" + Price + "', '"+ Paid +"')", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully saved');", true);
            GetMembershipFee();
            Clear();

        }
        void GetMembershipFee()
        {
            SqlCommand command = new SqlCommand("Select * from Fee_tb" , connection);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            int nationalId = int.Parse(txtid.Text);
            string Name = txtname.Text, Price = txtprice.Text, Paid = ddlPayment.SelectedValue;
            connection.Open();
            SqlCommand command = new SqlCommand("Update Fee_tb set Name = '" + Name + "', Price = '" + Price + "', Paid = '" + Paid + "' where NationalID = '" + int.Parse(txtid.Text) + "'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully saved');", true);
            GetMembershipFee();
            Clear();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand command = new SqlCommand("Delete Fee_tb where NationalID ='" + int.Parse(txtid.Text) + "'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Deleted');", true);
            GetMembershipFee();
            Clear();
        }

        public void Clear()
        {
            txtid.Text = "";
            txtname.Text = "";
            txtprice.Text = "";
        }
    }

}