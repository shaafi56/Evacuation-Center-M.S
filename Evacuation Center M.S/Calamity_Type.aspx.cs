using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
namespace Evacuation_Center_M.S
{
    public partial class Calamity_Type : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Save_Click(object sender, EventArgs e)
        {
            string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
            try
            {

                SqlConnection con = new SqlConnection("Data Source=MOHAMED;Initial Catalog=Evacuation_Center;Integrated Security=True");
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string calamityName = Calamity_Name.Value;
                SqlCommand cmd = new SqlCommand(@"INSERT INTO Calamity_Type values('" + calamityName + "')", con);


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