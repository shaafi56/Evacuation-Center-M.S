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
    public partial class delete_calamity : System.Web.UI.Page
    {
        
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        public string ID;
        protected void Page_Load(object sender, EventArgs e)
        {
            ID = Request.QueryString["Reffno"];
            CancelCustomer();
            Response.Redirect("Calamity_Type.aspx");
        }
        void CancelCustomer()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand(@"Delete from Calamity_Type  where  id= '" + ID + "' ", con);
                cmd.ExecuteNonQuery();
                con.Close();

                string message = "Your details have been deleted successfully.";
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