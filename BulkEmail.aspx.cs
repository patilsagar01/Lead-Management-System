using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class BulkEmail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            CheckBox status = (row.Cells[2].FindControl("CheckBox1") as CheckBox);
            String emailadd = row.Cells[4].Text;
            if (status.Checked)
            {
                sendcustomermail(emailadd);
            }

        }
    }

    private void sendcustomermail(String emailadd1)
    {
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.Credentials = new System.Net.NetworkCredential("coach24sagar@gmail.com", "Mahi@2018");
        smtp.EnableSsl = true;
        MailMessage msg = new MailMessage();
        msg.Subject = TextBox1.Text;
        msg.Body = TextBox2.Text + "\n\n\nThanks & Regards.\nWebnetiz Team";
        string toaddress = emailadd1;
        msg.To.Add(toaddress);
        string fromaddress = "Webnetiz Solution Pvt.Ltd <coach24sagar@gmail.com>";
        msg.From = new MailAddress(fromaddress);
        try
        {
            smtp.Send(msg);


        }
        catch
        {
            throw;
        }
        Response.Write("email sent to " + emailadd1);
    }
}