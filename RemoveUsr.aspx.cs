using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_IT_Service_Tracking_System
{
    public partial class RemoveUsr : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label comp_ID = GridView1.Rows[e.RowIndex].FindControl("compliant") as Label;
            string cs = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Student\Downloads\new\Online IT Service Tracking System-20230402T141935Z-001\Online IT Service Tracking System\project.mdf;Integrated Security=True;Connect Timeout=30";
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from  Tickets_Table where ticket_id='" + Convert.ToInt32(comp_ID.Text) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            showdata();
        }
        void showdata()
        {

            GridView1.Visible = true;
            con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Student\Downloads\new\Online IT Service Tracking System-20230402T141935Z-001\Online IT Service Tracking System\project.mdf;Integrated Security=True;Connect Timeout=30";
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "Select * from Tickets_Table";
            DataSet ds = new DataSet();
            SqlDataAdapter ada = new SqlDataAdapter();
            ada.SelectCommand = cmd;
            ada.Fill(ds, "Tickets_Table");
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();

        }

    }
}