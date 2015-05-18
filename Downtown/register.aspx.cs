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
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Users"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from [UserTab] where [Username] =" +"'"+ username.Text +"'";
        SqlCommand com = new SqlCommand(checkuser, conn);
        Int32 temp = Convert.ToInt32(com.ExecuteScalar().ToString());
         
        if (temp==1)
        {
            

        }
        conn.Close();
       
    }


    protected void submit_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Users"].ConnectionString);
            conn.Open();
            string insertquery = "insert into [UserTab] (username,HashPW) values (@username , @HashPW)";
            SqlCommand com = new SqlCommand(insertquery, conn);
            com.Parameters.AddWithValue("@username", username.Text);
            com.Parameters.AddWithValue("@HashPW", password.Text);

            com.ExecuteNonQuery();
            Response.Redirect("index.html");
            Response.Write("Registration is Successful");

            conn.Close();
        }
        catch (Exception Exception)
        {
            Response.Write("Error" + Exception.ToString());
        }
    }
}
