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
    public partial class SearchFlights : System.Web.UI.Page
    {

        private DataTable dt = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            dt = DataBaseCall.fetchFlight(ddl_list_boarding.SelectedItem.Text,
                ddl_list_destination.SelectedItem.Text,
                input_date.Text);
            if (dt == null)
            {
                mysearchData.Visible = true;
                btnBook.Visible = true;
            }
            else
            {

                string x = Convert.ToString(dt.Rows.Count);

                for (int j = 0; j < dt.Rows.Count; j++)
                {
                    DataRow dr = dt.Rows[j];
                    TableRow row = new TableRow();
                    for (int i = 0; i <= dr.ItemArray.Length; i++)
                    {
                        if (i == 0)
                        {
                            TableCell cell1 = new TableCell();
                            RadioButton rad = new RadioButton();
                            rad.ID = "rad_" + j.ToString();
                            rad.GroupName = "selectFlight";
                            cell1.Controls.Add(rad);
                            row.Cells.Add(cell1);

                        }
                        else
                        {
                            TableCell cell1 = new TableCell();
                            row.Cells.Add(cell1);
                            cell1.Style["border-width"] = "1";
                            cell1.Style["border-color"] = "yellow";
                            cell1.Style["border-style"] = "solid";
                            cell1.Text = Convert.ToString(dr[i - 1]);
                        }
                    }
                    mysearchData.Rows.Add(row);
                }
                mysearchData.Visible = true;
                btnBook.Visible = true;
            }
        }

        protected void btnBook_Click(object sender, EventArgs e)
        {
            //for (int i = 0; i < SearchFlightDetails.Controls.Count; i++)
            //{
                
                int x = SearchFlightDetails.Controls.Count;
            //    Console.WriteLine(SearchFlightDetails.Controls[i].ToString());
            //}
            
            
        }

    }
}