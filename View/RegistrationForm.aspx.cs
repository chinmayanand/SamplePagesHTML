using FirstApplication.DataBaseOperations;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace FirstApplication.View
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataBaseCall.getCountryList().Fill(dt);
                ddl_list_country.DataSource = dt;
                ddl_list_country.DataBind();
            }
        }

        protected void ddl_list_country_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListItem first = ddl_list_state.Items[0];
            ddl_list_state.Items.Clear();
            ddl_list_state.Items.Add(first);
            DataTable dt = new DataTable();
            DataBaseCall.getStateList(Convert.ToInt32(ddl_list_country.SelectedItem.Value)).Fill(dt);
            ddl_list_state.DataSource = dt;
            ddl_list_state.DataBind();
            //conn.Close();

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {

            int result=DataBaseCall.regiterNewUser(FirstNameTextBox.Text, LastNameTextBox.Text, UserContact.Text,UserNameTextBox.Text
                , ddl_list_country.SelectedItem.Text, ddl_list_state.SelectedItem.Text, UserPassword.Text);
            if (result == 1)
                MessageBox.Show("UserID already taken Please Try with another one!!!");
            else
            {
                MessageBox.Show("User Successfully Registered!!!");
                Response.Redirect("LoginPage.aspx");
            }
            
        }
    }
}