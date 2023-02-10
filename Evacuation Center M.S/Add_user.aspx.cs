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
    public partial class Add_user : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void save_Click(object sender, EventArgs e)
        {
            
            try
            {

                SqlConnection con = new SqlConnection("Data Source=MOHAMED;Initial Catalog=Evacuation_Center;Integrated Security=True");
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                /*string fulName = full_Name.Value;
                string designation = Designation.Value;
                string Contact_Info = ContactInfo.Value;
                string Account_Category = AccountCategory.Value;
                string User_Name = UserName.Value.ToString();
                string password = Password.Value;
                SqlCommand cmd = new SqlCommand(@"INSERT INTO Add_users values('" + fulName + "','" + designation + "','"+ Contact_Info + "', '" + Account_Category + "', '" + User_Name + "', '" + password + "')", con);
                */
                String id = GenerateAutoID();
                SqlCommand cmd = new SqlCommand("INSERT INTO Add_users values(@fulName,@designation,@Contact_Info,@Account_Category,@User_Name,@password)", con);

                cmd.Parameters.AddWithValue("@fulName", full_Name.Value);
                cmd.Parameters.AddWithValue("@designation", Designation.Value);
                cmd.Parameters.AddWithValue("@Contact_Info", ContactInfo.Value.ToString());
                cmd.Parameters.AddWithValue("@Account_Category", AccountCategory.Value);
                cmd.Parameters.AddWithValue("@User_Name", UserName.Value);
                cmd.Parameters.AddWithValue("@password", Password.Value);

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
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        private string GenerateAutoID()
        {
            string TheID = "";
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                string flag = "Eva";
                string id = string.Empty;
                DateTime dt = DateTime.Now;
                id = flag + dt.ToString("yyyyMM");
                string Startpoint = "";


                SqlCommand cmd = new SqlCommand("select id from Add_users order by id asc ", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (!dr.HasRows)
                {
                    Startpoint = "1";
                    TheID = id + Startpoint;
                }

                else if (dr.HasRows)
                {
                    while (dr.Read())
                    {

                        int newID = Convert.ToInt32(dr.GetValue(0).ToString());
                        newID++;
                        Startpoint = newID.ToString();
                        TheID = id + Startpoint;
                    }
                }

                dr.Close();


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            return TheID;
        }

    }
}