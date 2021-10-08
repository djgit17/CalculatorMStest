using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspCalMStest
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int val1, val2;

            bool flag1 = Int32.TryParse(tbVal1.Text, out val1);
            bool flag2 = Int32.TryParse(tbVal2.Text, out val2);

            if ((flag1 && flag2) == false)
            {
                lblResult.Text = "Kindly enter some values";
                lblResult.Visible = true;
            }
            else
            {

                if (ddoperator.SelectedValue.ToString() != "-1")
                {
                    int value = Convert.ToInt32(ddoperator.SelectedValue);

                    switch (value)
                    {
                        case 0:
                            int result = Calmstestdll.Class1.Add(val1, val2);
                            ResultDisplay(result);
                            break;
                        case 1:
                            int result1 = Calmstestdll.Class1.Sub(val1, val2);
                            ResultDisplay(result1);
                            break;
                        case 2:
                            int result2 = Calmstestdll.Class1.Mul(val1, val2);
                            ResultDisplay(result2);
                            break;
                        case 3:
                            int result3 = Calmstestdll.Class1.Div(val1, val2);
                            ResultDisplay(result3);
                            break;

                    }
                }

                else
                {
                    lblResult.Text = "Kindly select an operation";
                    lblResult.Visible = true;
                }
            }

            
        }
        public void ResultDisplay(int result)
        {
            lblResult.Text = result.ToString();
            lblResult.Visible = true;
        }
    }
}