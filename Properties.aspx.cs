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
    public partial class Properties : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                GetProperties();
            }
        }

        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-LPRM8ET;Initial Catalog=VillagersDB;Integrated Security=True");

        protected void btnitem_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    string fname = Path.GetFileName(FileUpload1.FileName);
                    FileUpload1.SaveAs(Server.MapPath("Image/") + fname);
                    connection.Open();
                    SqlCommand command = new SqlCommand("insert into properties_tb values ('" + txtitemid.Text + "', '" + txtname.Text + "', '" +txtdes.Text+"', '"+txtprice.Text+"', '"+ddlAvailable.SelectedValue+"', '"+FileUpload1.FileName + "')", connection);
                    int t = command.ExecuteNonQuery();
                    if (t > 0)
                    {
                        Response.Write("<script>alert('File has been upload successfully !')</script>");
                        GetProperties();
                    }


                }
                catch (Exception ex)
                {
                    Lblmsg.Text = "the file could not be uploaded . The following error occured:" + ex.Message;
                }

            }

        }
        protected void GetProperties()
        {
            SqlCommand command = new SqlCommand("select * from properties_tb", connection);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }

        protected void btnedit_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand command = new SqlCommand("Edit Facilites_tb set  Item_Name '" + txtname.Text + "', Description =  '" + txtdes.Text + "', Price = '" + txtprice.Text + "', Available =  '" + ddlAvailable.SelectedValue + "', Image =  '" + FileUpload1.FileName + "' where Item_ID = '" + txtitemid.Text + "'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Updated');", true);
            GetProperties();
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand command = new SqlCommand("Delete properties_tb where Item_ID ='" + txtitemid.Text + "'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Deleted');", true);
            GetProperties();


        }

       

    }
}