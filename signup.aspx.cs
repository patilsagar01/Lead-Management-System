using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.Text;

public partial class signup : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString.ToString());
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Click(object sender, EventArgs e)
    {

        string to = txtemail.Text; //To address    
        string from = "Webnetiz Solution Pvt.Ltd  <coach24sagar@gmail.com>"; //From address    
        MailMessage message = new MailMessage(from, to);

        string mailbody = "Hello Mr/Ms." + txtusername.Text +Environment.NewLine+  "your registration done sucessfully.";
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

        /// check user is already exist or not///

        if (checkemail() == true)
        {
            Label3.Text = "Your Email Already Registered with Us";
            txtemail.BackColor = System.Drawing.Color.PaleGreen;


        }
        else
        {
            String query = "insert into Contable(Firstname,Lastname,Username,Email,Gender,Dob,Password,Conpass,Addline1,Addline2,Zipcode,Place,Country,Code,Phone) values('" + txtfname.Text + "','" + txtlname.Text + "','" + txtusername.Text + "','" + txtemail.Text + "','" + DropDownList1.Text + "','" + txtDob.Text + "','" + txtpass.Text + "','" + txtconpass.Text + "','" + txtadd.Text + "','" + txtadd2.Text + "','" + txtzip.Text + "','" + DropDownList3.Text + "','" + DropDownList4.Text + "','" + txtcode.Text + "','" + txtphone.Text + "')";
            String mycon = "Data Source=DESKTOP-01FAHI9;Initial Catalog=Client LMS;Integrated Security=True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label3.Text = "Registration Has Been Saved Successfully";
            txtfname.Text = "";
            txtlname.Text = "";
            txtusername.Text = "";
            txtemail.Text = "";
            DropDownList1.Text = "";
            txtDob.Text = "";
            txtpass.Text = "";
            txtconpass.Text = "";
            txtadd.Text = "";
            txtadd2.Text = "";
            txtzip.Text = "";
            DropDownList3.Text = "";
            DropDownList4.Text = "";
            txtcode.Text = "";
            txtphone.Text = "";

        }



    }

    private Boolean checkemail()
    {
        Boolean emailavailable = false;
        String mycon = "Data Source=DESKTOP-01FAHI9;Initial Catalog=Client LMS;Integrated Security=True";
        String myquery = "Select * from Contable where Email='" + txtemail.Text + "'";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            emailavailable = true;

        }
        con.Close();

        return emailavailable;
    }

}

