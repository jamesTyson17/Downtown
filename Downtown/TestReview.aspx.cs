using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

public partial class TestReview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Require user to be logged in:
        //- Get session variable named "new" to get username
        //- Do a select query getting UID based on the user

        //var username1 = Session["New"].ToString();
        // var restname = RadioButtonList1.ToString();

        string username = (string)Session["new"];
        if(username == null)
        {
            Debug.WriteLine("NULL");
        }
        else
        {
            Debug.WriteLine(username);
        }
    }
    protected void submitBTN_Click(object sender, EventArgs e)
    {
        
        if(Session["new"] == null)
        {
            loginMessage.Text = "Log in to submit reviews!";
        }
        else
        {
            myDataSource.Insert();
        }
            
    }
}