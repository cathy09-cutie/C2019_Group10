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
    public partial class Facilities : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetFacilitylist();
            }

        }
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-LPRM8ET;Initial Catalog=VillagersDB;Integrated Security=True");

        protected void btnAddFacility_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    string fname = Path.GetFileName(FileUpload1.FileName);
                    FileUpload1.SaveAs(Server.MapPath("Image/") + fname);
                    connection.Open();
                    SqlCommand command = new SqlCommand("insert into Facility_tb values ('" + txtname.Text + "', '" + txtdescription.Text + "', '" + txtcapacity.Text + "','" + txtprice.Text + "', '" + ddlAvailable.SelectedValue + "','" + FileUpload1.FileName + "')", connection);
                    int t = command.ExecuteNonQuery();
                    if (t > 0)
                    {
                        Response.Write("<script>alert('File has been upload successfully !')</script>");
                        GetFacilitylist();
                        clearform();

                    }


                }
                catch (Exception ex)
                {
                    Lblmsg.Text = "the file could not be uploaded . The following error occured:" + ex.Message;

                }

            }

        }

        protected void GetFacilitylist()
        {
            SqlCommand command = new SqlCommand("select * from Facility_tb", connection);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridViewFacility.DataSource = dt;
            GridViewFacility.DataBind();
        }

        protected void btnedit_Click(object sender, EventArgs e)
        {

            connection.Open();
            SqlCommand command = new SqlCommand(" Edit Facility_tb set  Description = '" + txtdescription.Text + "', Capacity ='" + txtcapacity.Text + "', Price = '" + txtprice.Text + "', Available = '" + ddlAvailable.SelectedValue + "', Image = '" + FileUpload1.FileName + "' where Facility_Name = '" + txtname.Text + "'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Updated');", true);
            GetFacilitylist();
        }


        protected void btndelete_Click(object sender, EventArgs e)
        {
            connection.Open();
            SqlCommand command = new SqlCommand("Delete Facility_tb where Name ='" + txtname.Text + "'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Succesfully Deleted');", true);
            GetFacilitylist();
        }

        public void clearform()
        {
            txtname.Text = "";
            txtdescription.Text = "";
            txtcapacity.Text = "";
            Lblmsg.Text = "";
        }


    }
}