using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main_page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("main-page.aspx");
        }
        else
        {
            Label3.Text = "Hello, " + Session["username"].ToString();
        }
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("logout.aspx");
    }
}