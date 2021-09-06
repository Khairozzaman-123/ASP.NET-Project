using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Trainning_Center_Management_Project.App_Pages
{
    public partial class Batch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Trainning_CenterDB;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("INSERT INTO Batch VALUES('" + txtId.Text + "','" + txtName.Text + "','" + txtPeriod.Text + "','" + txtRound.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Literal1.Text = "Data saved successfully!!";
            con.Close();
            GridView1.DataBind();
            ClearAll();

        }
        private void ClearAll()
        {
            txtId.Text = "";
            txtName.Text = "";
            txtPeriod.Text = "";
            txtRound.Text = "";
        }
    }
}