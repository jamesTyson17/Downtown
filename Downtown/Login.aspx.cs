using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }





    protected void login_Click1(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Users"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from [UserTab] where Username='" + un.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
         conn.Close();
         if (temp == 1)
         {
             conn.Open();
             string checkpwquery = " select HashPW from [UserTab] where Username='" + un.Text + "'";
             SqlCommand passcom = new SqlCommand(checkpwquery, conn);
             string password = passcom.ExecuteScalar().ToString().Replace(" ","");
             if (password == pw.Text)
             {
                 Session["New"] = un.Text;
                 Response.Write("Password is correct");
                 Response.Redirect("Default.aspx");
                 ;
             }
             else
             {
                 Response.Write("Password is incorrect");
              
             }
         }
         else
         {
             Response.Write("Username is incorrect");
       
         }

    
    }
}