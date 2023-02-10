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
    public partial class Add_evacuees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void save_Click1(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string fname = fullName.Value;
                string contect = contect_number.Value;
                string age = E_Age.Value;
                string Gender = gender.Value;
                string headoffamily = headFamily.Value;
                string address = E_Address.Value;
                
                
                SqlCommand cmd = new SqlCommand(@"INSERT INTO Add_evacues  values('" + fname + "','" + contect + "','" + age + "','" + Gender + "','" + headoffamily + "','" + address + "')", con);


                cmd.ExecuteNonQuery();
                con.Close();


                string message = "Your details have been saved successfully.";
                string script = "window.onload = function(){ alert('";
                script += message;
                script += "')};";
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}