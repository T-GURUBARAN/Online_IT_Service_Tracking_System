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
    public partial class Pending : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string dpr;
            dpr = Lablist.SelectedItem.ToString();
            if(dpr=="123 Lab")
            {
                GridView1.Visible = true;
                con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Abs Tom\Documents\project.mdf;Integrated Security=True;Connect Timeout=30";
                
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "Select * from Tickets_Table where title='123 Lab'";
                DataSet ds = new DataSet();
                SqlDataAdapter ada = new SqlDataAdapter();
                ada.SelectCommand = cmd;
                ada.Fill(ds, "Tickets_Table");
                GridView1.DataSource = ds;
                GridView1.DataBind();
                con.Close();
            }
            if(dpr=="Multimedia Lab")
            {
                GridView1.Visible = true;
                con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Abs Tom\Documents\project.mdf;Integrated Security=True;Connect Timeout=30";
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
            if(dpr=="Operating System Lab")
            {
                GridView1.Visible = true;
                con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Abs Tom\Documents\project.mdf;Integrated Security=True;Connect Timeout=30";
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
                con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Abs Tom\Documents\project.mdf;Integrated Security=True;Connect Timeout=30";
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

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
        }

       

        
        
    }
}