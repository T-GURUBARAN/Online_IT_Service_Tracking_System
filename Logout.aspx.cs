using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_IT_Service_Tracking_System
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.Remove("id");
            Response.Redirect("Login_Page.aspx");
            HttpContext.Current.Session.Abandon();
        }
    }
}