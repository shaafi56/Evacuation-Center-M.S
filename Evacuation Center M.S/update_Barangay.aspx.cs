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
    
    public partial class update_Barangay : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        public string ID;
        protected void Page_Load(object sender, EventArgs e)
        {
            ID = Request.QueryString["Reffno"];

            if (!IsPostBack)
            {
                ReadData();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            EdiNew();
            Response.Redirect("Barangay.aspx");
        }
        void ReadData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from Barangay_info where id='" + ID + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {

                        bName.Value = dr.GetValue(1).ToString();

                    }

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void EdiNew()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("update Barangay_info set Barangay_name='" + bName.Value + "'  where id='" + ID + "' ", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Customer was updated Successfully');</script>");

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