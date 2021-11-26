using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tabel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
     protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Clear();
        Response.Buffer=true;
        Response.ContentType = "aplication/ms-excel";
        Response.AddHeader("content-disposition", string.Format("attachment;filename={0}.xls","selectedrows"));
        Response.Charset = "";

        StringWriter stringwriter = new StringWriter();
        HtmlTextWriter htmlwriter = new HtmlTextWriter(stringwriter);
        GridView1.RenderControl(htmlwriter);
        Response.Write(stringwriter.ToString());
        Response.End();

    }
    public override void VerifyRenderingInServerForm(Control control) { }

    protected void lbInsert_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["Firstname"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtName")).Text;
        SqlDataSource1.InsertParameters["Lastname"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtLname")).Text;
        SqlDataSource1.InsertParameters["Username"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtUsername")).Text;
        SqlDataSource1.InsertParameters["Email"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtEmail")).Text;
        SqlDataSource1.InsertParameters["Gender"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddlGender")).SelectedValue;
        SqlDataSource1.InsertParameters["Dob"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtDob")).Text;
        SqlDataSource1.InsertParameters["Addline1"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtAddline1")).Text;
        SqlDataSource1.InsertParameters["Addline2"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtAddline2")).Text;
        SqlDataSource1.InsertParameters["Zipcode"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtZipcode")).Text;
        SqlDataSource1.InsertParameters["Country"].DefaultValue = ((DropDownList)GridView1.FooterRow.FindControl("ddc")).SelectedValue;
        SqlDataSource1.InsertParameters["Code"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtCode")).Text;
        SqlDataSource1.InsertParameters["Phone"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtPhone")).Text;
        SqlDataSource1.Insert();

    }

}