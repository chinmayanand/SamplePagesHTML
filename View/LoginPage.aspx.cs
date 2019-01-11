using FirstApplication.DataBaseOperations;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace FirstApplication.View
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdminSubmit_Click(object sender, EventArgs e)
        {
            int result = DataBaseCall.authenticateAdmin(txtUserid.Text,txtPassword.Text);
            if (result == 1)
                Response.Redirect("AdminControlForm.aspx");
            else
                MessageBox.Show("Invalid Credentials!!!");
        }

        protected void btnUserSubmit_Click(object sender, EventArgs e)
        {
            int result = DataBaseCall.authenticateUser(txtUserid.Text, txtPassword.Text);
            if (result == 1)
                Response.Redirect("SearchFlights.aspx");
            else
                MessageBox.Show("Invalid Credentials!!!");
        }
    }
}