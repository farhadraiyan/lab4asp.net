using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab4
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_zip_ServerValidate(object source, ServerValidateEventArgs args)
        {
            Boolean result = true;

            char[] convertedString = args.Value.ToCharArray();
            if (convertedString.Length != 6)
            {
                result = false;
            }
            else
            {
                for (int i = 0; i < 6; i++)
                {
                    char val = convertedString[i];
                    if (i % 2 == 0)
                    {
                        if (!((val >= 'a' && val <= 'z') || (val >= 'A' && val <= 'Z')))
                        {
                            result = false;
                        }

                    }
                    else if (!(val >= '0' && val <= '9'))
                    {
                        result = false;
                    }
                }

            }
            args.IsValid = result;
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Server.Transfer("Report.aspx");

            }
        }
    }

}