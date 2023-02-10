using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Evacuation_Center_M.S
{
    public partial class login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void save_Click(object sender, EventArgs e)
        {
           try
            {
                SqlConnection conn = new SqlConnection(strcon);
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                SqlCommand cmd = new SqlCommand("select * from  Add_users where User_name = '"+ txtusername.Value.Trim() +"' and Password = '"+ txtpassword.Value.Trim() +"'", conn);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    while(dr.Read())
                    {
                        /*Response.Write("<script>alert('"+ dr.GetValue(5).ToString() + "');</script>");*/
                        Response.Write("<script>alert('login successfully');</script>");
                        
                    }
                    Response.Redirect("Dashboard.aspx");
                }
                else
                {
                    string message = "Your username or password is incorrect .";
                    string script = "window.onload = function(){ alert('";
                    script += message;
                    script += "')};";
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                }
            }
            catch(Exception Ex)
            {
                Response.Write("<script>alert('" + Ex.Message + "');</script>");
            }
        }
    }
}