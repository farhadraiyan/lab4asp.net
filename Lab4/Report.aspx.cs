using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab4
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(PreviousPage!=null)
            {
                TextBox fname = (TextBox)PreviousPage.FindControl("txtFirstName");
                TextBox lname = (TextBox)PreviousPage.FindControl("txtLastName");

                TextBox asset1 = (TextBox)PreviousPage.FindControl("txtGrossIncome");
                TextBox asset2 = (TextBox)PreviousPage.FindControl("txtValueAsset");
                TextBox asset3 = (TextBox)PreviousPage.FindControl("txtInvestment");
                TextBox asset4 = (TextBox)PreviousPage.FindControl("txtSourceInc");

                TextBox lia1 = (TextBox)PreviousPage.FindControl("txtLiabilities");

                TextBox loanreq = (TextBox)PreviousPage.FindControl("txtLoanAmt");
                TextBox Intratereq = (TextBox)PreviousPage.FindControl("txtIntRateReq");


                //total asset calc
                lblTotalAsset.Text = (Convert.ToDouble(asset1.Text) + Convert.ToDouble(asset2.Text) +
                    Convert.ToDouble(asset3.Text) + Convert.ToDouble(asset4.Text)).ToString();
                //liabilities calc
                lblLiabilities.Text = Convert.ToDouble(lia1.Text).ToString();

                lblLoanReq.Text = Convert.ToDouble(loanreq.Text).ToString();
                lblIntRateReq.Text = Convert.ToDouble(Intratereq.Text).ToString();
                lblFirstName.Text = fname.Text;
                lblLastName.Text = lname.Text;
                if (checkapproval(Convert.ToDouble(lblTotalAsset.Text), Convert.ToDouble(lblLiabilities.Text)) == true)
                {
                    lblResult.Text = "Approved";
                }
                else
                {
                    lblResult.Text = " Not Approved";
                }
            }

            

        }

        protected void btn_backHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
        protected bool checkapproval(double asset, double lia)
        {
            if (asset < lia)
            {
                return false;
            }
            return true;
        }
    }
}