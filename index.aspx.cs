using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        String mycon = "Data Source=DESKTOP-01FAHI9;Initial Catalog=Client LMS;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select * from LoginDetail";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        String uname;
        String pass;
        uname = ds.Tables[0].Rows[0]["uname"].ToString();
        pass = ds.Tables[0].Rows[0]["pass"].ToString();
        scon.Close();
        if (uname == TextBox1.Text && pass == TextBox2.Text)
        {
            Session["username"] = uname;
            Response.Redirect("main-page.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "alertme()", true);

        }
    }
}