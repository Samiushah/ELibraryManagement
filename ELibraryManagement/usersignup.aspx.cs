using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ELibraryManagement
{
    public partial class usersignup : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Signup button click event

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (CheckMemberExists())
            {
                Response.Write("<script>alert('Username already exists. Try a new username.');</script>");
            }
            else
            {
                SignUpNewMember();
            }
        }

        public bool CheckMemberExists()
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(strcon);

                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                string selectQuery = "SELECT member_id " +
                    "FROM member_master_tbl " +
                    "WHERE member_id = '" + TextBox8.Text.Trim() + "';";

                SqlCommand cmd = new SqlCommand(selectQuery, sqlConnection);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);

                DataTable dt = new DataTable();

                adapter.Fill(dt);

                return dt.Rows.Count == 1;

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
        public void SignUpNewMember()
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(strcon);

                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                string insertQuery = "INSERT INTO member_master_tbl values " +
                    "(@Full_Name, @dob, @contact_no, @email, @state, @city, @pincode, @full_address," +
                    "@member_id, @password, @account_status);";

                SqlCommand cmd = new SqlCommand(insertQuery, sqlConnection);

                cmd.Parameters.AddWithValue("@Full_Name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "pending");

                cmd.ExecuteNonQuery();
                sqlConnection.Close();
                Response.Write("<script>alert('Signup Successful! Go to User Login to begin.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}