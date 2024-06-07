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
    public partial class CreateCompliant : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        
        
        
       /* protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            string us=Label3.Text = "Welcome User " + Session["id"].ToString();
            Label3.Text = "User " + Session["id"].ToString();
            
        }
    */

        protected void Button1_Click(object sender, EventArgs e)
        {
    
                string title, description, created_at, category, issue, user, status;
                int user_id;
                status = "Open";
                title = DprtList.SelectedItem.Text;
                description = TextBox1.Text;
                issue = description;
                created_at = TextBox3.Text;
                category = DropDownList1.SelectedItem.Text;
                user = Session["id"].ToString();
                user_id = int.Parse(user);
                Int32 count = 0, sound = 0;
                con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Student\Downloads\new\Online IT Service Tracking System-20230402T141935Z-001\Online IT Service Tracking System\project.mdf;Integrated Security=True;Connect Timeout=30";
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "insert into Ticket_Categories_Table values(@category,@issue)";
                cmd.Parameters.Add("@category", SqlDbType.VarChar).Value = category;
                cmd.Parameters.Add("@issue", SqlDbType.VarChar).Value = issue;
                sound = cmd.ExecuteNonQuery();
                con.Close();
                int cate = 0;
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "select categories_id from Ticket_Categories_Table where issue=@issue";
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    cate = dr.GetInt32(0);
                }
                con.Close();
                if (cate != 0)
                {
                    con.Open();
                    cmd.CommandText = "Insert into Tickets_Table (user_id,title,description,category_id,created_at,status) values (@user_id,@title,@description,@category_id,@created_at,@status) SET IDENTITY_INSERT Tickets_Table ON ";
                    cmd.Parameters.Add("@user_id", SqlDbType.Int).Value = user_id;
                    cmd.Parameters.Add("@title", SqlDbType.VarChar).Value = title;
                    cmd.Parameters.Add("@description", SqlDbType.VarChar).Value = description;
                    cmd.Parameters.Add("@category_id", SqlDbType.Int).Value = cate;
                    cmd.Parameters.Add("@created_at", SqlDbType.DateTime).Value = created_at;
                    cmd.Parameters.Add("@status", SqlDbType.VarChar).Value = status;
                    count = cmd.ExecuteNonQuery();
                    if ((count > 0) && (sound > 0))
                    {
                        Response.Write("<script>alert('" + "Compilant Registered " + "')</script>");
                    }
                    con.Close();
                }
                else
                {
                    Response.Write("<script>alert('" + "Catid null " + "')</script>");
                }

            
            
            
            /*DataSet ds = new DataSet();
            SqlDataAdapter ada = new SqlDataAdapter();
            ada.SelectCommand = cmd;
            ada.Fill(ds, "Transportation");
            //GridView1.DataSource = ds;
            //GridView1.DataBind();
            //(Int32)cmd.ExecuteScalar();
            con.Close();

            
            //Response.Redirect("WebForm1.aspx");*/
        }

        protected void btn_conform_Click(object sender, EventArgs e)
        {
            showdata();
        }

        void showdata()
        {
            
            GridView1.Visible = true;
            con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Student\Downloads\new\Online IT Service Tracking System\project.mdf;Integrated Security=True;Connect Timeout=30";
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
        

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            showdata();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            showdata();
        }
        
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string cs = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Student\Downloads\new\Online IT Service Tracking System\project.mdf;Integrated Security=True;Connect Timeout=30";
            SqlConnection con = new SqlConnection(cs);
            Label comp_ID = GridView1.Rows[e.RowIndex].FindControl("compliant") as Label;
            TextBox title = GridView1.Rows[e.RowIndex].FindControl("txt_Name") as TextBox;
            TextBox Description = GridView1.Rows[e.RowIndex].FindControl("txt_desc") as TextBox;
            TextBox created_at=GridView1.Rows[e.RowIndex].FindControl("txt_create") as TextBox;
            TextBox updated_at=GridView1.Rows[e.RowIndex].FindControl("txt_lst_update") as TextBox;


            string assignedTo = ((DropDownList)GridView1.Rows[e.RowIndex].FindControl("ddlAssignedTo")).SelectedValue;

            con.Open();
            SqlCommand cmd1 = new SqlCommand("Update Tickets_Table set title='" + title.Text + "',description='" + Description.Text + "',created_at='" + created_at.Text + "',updated_at='" + updated_at.Text + "',assigned_to='" + assignedTo + "' where ticket_id='" + Convert.ToInt32(comp_ID.Text) + "'", con);
            cmd1.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            showdata();
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

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DropDownList ddlAssignedTo = (DropDownList)e.Row.FindControl("ddlAssignedTo");
                if (ddlAssignedTo != null)
                {
                    // Get the data source for the dropdownlist
                    DataTable dt = GetTechnicians();

                    // Set the data source and bind the dropdownlist
                    ddlAssignedTo.DataSource = dt;
                    ddlAssignedTo.DataTextField = "technician_id";
                    ddlAssignedTo.DataValueField = "technician_id";
                    ddlAssignedTo.DataBind();

                    // Get the value of the "assigned_to" field for this row
                    string assignedToID = DataBinder.Eval(e.Row.DataItem, "assigned_to").ToString();

                    // Set the selected value of the dropdownlist
                    ddlAssignedTo.SelectedValue = assignedToID;
                }
            }
        }

        private DataTable GetTechnicians()
        {
            // Retrieve data from database
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Student\Downloads\new\Online IT Service Tracking System-20230402T141935Z-001\Online IT Service Tracking System\project.mdf;Integrated Security=True;Connect Timeout=30");
            SqlCommand cmd = new SqlCommand("SELECT technician_id FROM Technicians_Table", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

    }
}