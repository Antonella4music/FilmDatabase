using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Buttons : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("InsertFilmDb.aspx");
    }
    protected void btnDisplay_Click(object sender, EventArgs e)
    {
        Response.Redirect("SelectFilmDb.aspx");
    }
    protected void btnUpdateDelete_Click(object sender, EventArgs e)
    {
        Response.Redirect("DeleteAndUpdateFilmDb.aspx");
    }
    protected void btnExit_Click(object sender, EventArgs e)
    {
        Response.End();
    }
}