using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Evacuation_Center_M.S
{
    public partial class Barangay : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        public string ID;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string barangayName = bName.Value;
                SqlCommand cmd = new SqlCommand(@"INSERT INTO Barangay_info values('" + barangayName + "')", con);


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

        protected void Button2_Click(object sender, EventArgs e)
        {
            bName.Value = "";
        }

       
       
    }
}