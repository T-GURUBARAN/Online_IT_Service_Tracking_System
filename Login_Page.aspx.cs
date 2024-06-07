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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        string user_id;
        //int uname=0;
        
        public void btn_Click(object sender, EventArgs e)
        {
            user_id = TextBox1.Text;
            string password = TextBox2.Text;
            string type=DropDownList1.SelectedItem.Text;
            Int32 count = 0;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Student\Downloads\new\Online IT Service Tracking System\project.mdf;Integrated Security=True;Connect Timeout=30";
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Users_Table WHERE user_id=@user_id AND password=@password AND role=@type", con);
            cmd.Parameters.AddWithValue("@user_id", user_id);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@type", type);
            count = (Int32)cmd.ExecuteScalar();
            con.Close();
            
            if (count > 0)
            {
                Session["id"] = TextBox1.Text;
                if(type=="Admin")
                {
                    Response.Redirect("Admin_Login_Page.aspx");
                }
                if(type=="User")
                {
                    Response.Redirect("Home.aspx");
                }
                if(type=="Technician")
                {
                    Response.Redirect("tecHome.aspx");
                }
                
            }
            else
            {
                // username and password are invalid
                lblError.Text = "Invalid username or password.";
            }
        }

        /*public string type(string type)
        {
            string a = DropDownList1.SelectedItem.Text;
            return a;
        }*/

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateAC.aspx");
        }
    }
}
