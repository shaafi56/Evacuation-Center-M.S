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
    public partial class update_users : System.Web.UI.Page
    {
        public string ID;
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            ID = Request.QueryString["Reffno"];

            if (!IsPostBack)
            {
                ReadData();
            }
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
                SqlCommand cmd = new SqlCommand("select * from Add_users where id ='" + ID + "' ", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {

                        full_Name.Value = dr.GetValue(1).ToString();
                        Designation.Value = dr.GetValue(2).ToString();
                        ContactInfo.Value = dr.GetValue(3).ToString();
                        AccountCategory.Value = dr.GetValue(4).ToString();
                        UserName.Value = dr.GetValue(5).ToString();
                        Password.Value = dr.GetValue(6).ToString();

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

                SqlCommand cmd = new SqlCommand("update Add_users set Full_name ='" + full_Name.Value + "', Designation ='" + Designation.Value + "', Content_info ='" + ContactInfo.Value + "', Account_Category ='" + AccountCategory.Value + "', User_name ='" + UserName.Value + "', Password ='" + Password.Value + "' where id ='" + ID + "' ", con);
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

        protected void save_Click(object sender, EventArgs e)
        {
            EdiNew();
            Response.Redirect("manage_user.aspx");
        }
    }
}