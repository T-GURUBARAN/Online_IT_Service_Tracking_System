using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
namespace Online_IT_Service_Tracking_System
{
    public partial class Completed : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Student\Downloads\new\Online IT Service Tracking System-20230402T141935Z-001\Online IT Service Tracking System\project.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = GetData(); // get data from database
                ReportDataSource ds = new ReportDataSource("DataSet1", dt);
                ReportViewer1.LocalReport.DataSources.Add(ds);
                ReportViewer1.LocalReport.Refresh();
            }

            
        }

        private void GetData123()
        {
            
            string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Abs Tom\Documents\project.mdf;Integrated Security=True;Connect Timeout=30";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("SELECT * FROM Tickets_Table where title='123 Lab'", con);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                ReportDataSource ds = new ReportDataSource("DataSet1", dataTable);
                ReportViewer1.LocalReport.DataSources.Add(ds);
                ReportViewer1.LocalReport.Refresh();
            }
            con.Close();
        }
        private DataTable GetData()
        {
            string connectionString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Student\Downloads\new\Online IT Service Tracking System-20230402T141935Z-001\Online IT Service Tracking System\project.mdf;Integrated Security=True;Connect Timeout=30";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("SELECT * FROM Tickets_Table", connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                adapter.Fill(dataTable);
                return dataTable;
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
                        
        }


        
    }
}