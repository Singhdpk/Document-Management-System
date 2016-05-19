using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ForUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Convert.ToInt32(Session["LOGIN"]) == 0)
        {
            Response.Redirect("MyLogin.aspx");
        }


        ManageMakeDocument objManageMakeDocument = new ManageMakeDocument();
        gridViewDocuments.DataSource = objManageMakeDocument.GetAllDocument();
        gridViewDocuments.DataBind();
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["LOGIN"] = 0;
        Response.Redirect("UserLogin.aspx");
    }
}