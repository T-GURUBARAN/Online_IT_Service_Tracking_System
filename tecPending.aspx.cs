using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Online_IT_Service_Tracking_System
{
    public partial class tecPending : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            showdata();
        }


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            showdata();
        }

        protected void drpstatus_Load(object sender, EventArgs e)
        {
            DropDownList dp = new DropDownList();
            dp.Items.Add("Open");
            dp.Items.Add("InProgess");
            dp.Items.Add("Closed");
        }

        public void showdata()
        {
            string dpr;
            dpr = Lablist.SelectedItem.ToString();
            if (dpr == "123 Lab")
            {

                GridView1.Visible = true;
                con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\ONLINE IT SERVICE TRACKING SYSTEM-20230228T093510Z-001\ONLINE IT SERVICE TRACKING SYSTEM\PROJECT.MDF;Integrated Security=True;Connect Timeout=30";
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "Select * from Tickets_Table where title='123 Lab'";
                DataSet ds = new DataSet();
                SqlDataAdapter ada = new SqlDataAdapter();
                ada.SelectCommand = cmd;
                ada.Fill(ds, "Tickets_Table");
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            if (dpr == "Multimedia Lab")
            {
                GridView1.Visible = true;
                con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\ONLINE IT SERVICE TRACKING SYSTEM-20230228T093510Z-001\ONLINE IT SERVICE TRACKING SYSTEM\PROJECT.MDF;Integrated Security=True;Connect Timeout=30";
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "Select * from Tickets_Table where title='Multimedia Lab'";
                DataSet ds = new DataSet();
                SqlDataAdapter ada = new SqlDataAdapter();
                ada.SelectCommand = cmd;
                ada.Fill(ds, "Tickets_Table");
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            if (dpr == "Operating System Lab")
            {
                GridView1.Visible = true;
                con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\ONLINE IT SERVICE TRACKING SYSTEM-20230228T093510Z-001\ONLINE IT SERVICE TRACKING SYSTEM\PROJECT.MDF;Integrated Security=True;Connect Timeout=30";
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "Select * from Tickets_Table where title='Operating System Lab'";
                DataSet ds = new DataSet();
                SqlDataAdapter ada = new SqlDataAdapter();
                ada.SelectCommand = cmd;
                ada.Fill(ds, "Tickets_Table");
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            if (dpr == "Network Lab")
            {
                GridView1.Visible = true;
                con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\ONLINE IT SERVICE TRACKING SYSTEM-20230228T093510Z-001\ONLINE IT SERVICE TRACKING SYSTEM\PROJECT.MDF;Integrated Security=True;Connect Timeout=30";
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "Select * from Tickets_Table where title='Network Lab'";
                DataSet ds = new DataSet();
                SqlDataAdapter ada = new SqlDataAdapter();
                ada.SelectCommand = cmd;
                ada.Fill(ds, "Tickets_Table");
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label comp_ID = GridView1.Rows[e.RowIndex].FindControl("compliant") as Label;
            TextBox title = GridView1.Rows[e.RowIndex].FindControl("txt_Name") as TextBox;
            TextBox Description = GridView1.Rows[e.RowIndex].FindControl("txt_desc") as TextBox;
            TextBox created_at = GridView1.Rows[e.RowIndex].FindControl("txt_create") as TextBox;
            TextBox updated_at = GridView1.Rows[e.RowIndex].FindControl("txt_lst_update") as TextBox;
            TextBox assigned_to = GridView1.Rows[e.RowIndex].FindControl("txt_assigned_to") as TextBox;
            DropDownList drp = GridView1.Rows[e.RowIndex].FindControl("drpstatus") as DropDownList;
            TextBox remarks = GridView1.Rows[e.RowIndex].FindControl("txt_remarks") as TextBox;
            string cs = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\ONLINE IT SERVICE TRACKING SYSTEM-20230228T093510Z-001\ONLINE IT SERVICE TRACKING SYSTEM\PROJECT.MDF;Integrated Security=True;Connect Timeout=30";
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Tickets_Table set updated_at='" + updated_at.Text + "',status='" + drp.SelectedItem.Text + "',Remarks='"+remarks.Text+"' where ticket_id='" + Convert.ToInt32(comp_ID.Text) + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            showdata();
        }
    }
}