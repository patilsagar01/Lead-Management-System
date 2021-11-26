using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

public partial class contactdetail : System.Web.UI.Page
{
           
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

    protected void lbInsert_Click(object sender, EventArgs e)
    {
        SqlDataSource1.InsertParameters["username"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtName")).Text;
        SqlDataSource1.InsertParameters["email"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtEmail")).Text;
        SqlDataSource1.InsertParameters["phone"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtPhone")).Text;
        SqlDataSource1.InsertParameters["Message"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("txtMessage")).Text;
        SqlDataSource1.Insert();

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
}