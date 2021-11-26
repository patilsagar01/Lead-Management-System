using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("index.aspx");
        }
        else
        {
            Label2.Text = Session["username"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String mycon = "Data Source=DESKTOP-01FAHI9;Initial Catalog=Client LMS;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        string myquery = "select * from LoginDetail";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        string pass;
        pass = ds.Tables[0].Rows[0]["pass"].ToString();
        scon.Close();

        if (pass == TextBox1.Text)
        {
            if(TextBox2.Text == TextBox3.Text && TextBox2.Text !="")
            {
                String updatepass = "update LoginDetail set pass='" + TextBox2.Text + "' where uname='" + Label2.Text + "'";
                String mycon1 = "Data Source=DESKTOP-01FAHI9;Initial Catalog=Client LMS;Integrated Security=True";
                SqlConnection s = new SqlConnection(mycon1);
                s.Open();
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = updatepass;
                cmd1.Connection = s;
                cmd1.ExecuteNonQuery();
                Session.Abandon();
                Response.Redirect("PasswordChanged.aspx");

            }
            else
            {
                Label3.Text = "New Password and Re-enter Password Not Matched / Blank Password Not Accepted";
            }
        }
            else
            {
            Label3.Text = "Invalid Username or Password - Cannot Change Password with User Authentication";
            }
    }
}