using FirstApplication.DataBaseOperations;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace FirstApplication.View
{
    public partial class AdminControlForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                DataTable dt = DataBaseCall.getUserData();
                TextBox1.Text = Convert.ToString(dt.Rows.Count);

                for (int j = 0; j < dt.Rows.Count; j++)
                {
                    DataRow dr = dt.Rows[j];
                    TableRow row = new TableRow();
                    for (int i = 0; i < dr.ItemArray.Length - 1; i++)
                    {
                       
                        TableCell cell1 = new TableCell();
                        row.Cells.Add(cell1);
                        cell1.Style["border-width"] = "1";
                        cell1.Style["border-color"] = "blue";
                        cell1.Style["border-style"] = "solid";
                        cell1.Text = Convert.ToString(dr[i]);
                        

                    }
                    myTable.Rows.Add(row);
                }
            }
        }
    }
}