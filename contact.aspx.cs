using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class contact : System.Web.UI.Page
{

    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Click(object sender, EventArgs e)
    {
        string to = txtemail.Text; //To address    
        string from = "coach24sagar@gmail.com"; //From address    
        MailMessage message = new MailMessage(from, to);

        string mailbody = "Hello"  + txtname.Text +  "your message is sucessfully send to us.";
        message.Subject = "Confirmation mail";
        message.Body = mailbody;
        message.BodyEncoding = Encoding.UTF8;
        message.IsBodyHtml = true;
        SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
        System.Net.NetworkCredential basicCredential1 = new
        System.Net.NetworkCredential("coach24sagar@gmail.com", "Mahi@2018");
        client.EnableSsl = true;
        client.UseDefaultCredentials = false;
        client.Credentials = basicCredential1;
        try
        {
            client.Send(message);
        }

        catch (Exception ex)
        {
            throw ex;
        }
        String query = "insert into contactdetails(username,email,phone,message) values('" + txtname.Text + "','" + txtemail.Text + "','" + phone.Text + "','" + txtmsg.Text + "')";
        String mycon = "Data Source=DESKTOP-01FAHI9;Initial Catalog=Client LMS;Integrated Security=True";
        SqlConnection con = new SqlConnection(mycon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = query;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        Label3.Text = "Registration Has Been Saved Successfully";
        txtname.Text = "";
        txtemail.Text = "";
        phone.Text = "";
        txtmsg.Text = "";
        

    }

}