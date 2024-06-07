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
    public partial class CreateAC : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TextBox t = new TextBox();
            string pass, fname, lname, email, role ;
            fname = TextBox1.Value.ToString();
            lname = TextBox2.Value.ToString();
            role = DropDownList1.Value.ToString();
            pass = TextBox4.Value.ToString();
            email = TextBox3.Value.ToString();
            Int32 count = 0;
            con.ConnectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=E:\ONLINE IT SERVICE TRACKING SYSTEM-20230228T093510Z-001\ONLINE IT SERVICE TRACKING SYSTEM\PROJECT.MDF;Integrated Security=True;Connect Timeout=30";
            con.Open();
            cmd.Connection = con;
            cmd.CommandText = "Insert into Users_Table values(@fname,@lname,@email,@pass,@role)";
            cmd.Parameters.Add("@fname", SqlDbType.VarChar).Value = fname;
            cmd.Parameters.Add("@lname", SqlDbType.VarChar).Value = lname;
            cmd.Parameters.Add("@email", SqlDbType.VarChar).Value = email;
            cmd.Parameters.Add("@pass", SqlDbType.VarChar).Value = pass;
            cmd.Parameters.Add("@role", SqlDbType.VarChar).Value = role;
            count = cmd.ExecuteNonQuery();
            if (count > 0)
            {
                Response.Write("<script>alert('" + "Account Created Sucessfully" + "')</script>");
            }
        }
    }
}