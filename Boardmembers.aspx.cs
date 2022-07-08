using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class Boardmembers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                clearform();
                GvBind();
            }
        }
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-LPRM8ET;Initial Catalog=VillagersDB;Integrated Security=True");

        protected void btnaddmembers_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                        string fname = Path.GetFileName(FileUpload1.FileName);
                        FileUpload1.SaveAs(Server.MapPath("Image/") + fname);
                        connection.Open();
                        SqlCommand command = new SqlCommand("insert into BoardRecord_tb values ('" + txtname.Text + "', '" + txtposition.Text + "', '" + FileUpload1.FileName + "')", connection);
                        int t = command.ExecuteNonQuery();
                        if (t > 0)
                        {
                            Response.Write("<script>alert('File has been upload successfully !')</script>");
                            clearform();
                            GvBind();
                        }

                    
                }
                catch (Exception ex)
                {
                    Lblmsg.Text = "the file could not be uploaded . The following error occured:" + ex.Message;
                }

            }
        }
        public void clearform() 
        {
            txtname.Text = "";
            txtposition.Text = "";
            Lblmsg.Text = "";


        }
        protected void GvBind() 
        {
            
            SqlCommand command = new SqlCommand("select * from BoardRecord_tb", connection);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand command = new SqlCommand("Delete BoardRecord_tb where Name ='" + txtname.Text+ "'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Deleted');", true);
            GvBind();
            clearform();
        }
    }
}