using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace FizzBuzz
{
    public partial class Fizzbuzz : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();

            string[] Inputs = Stringarray.Value.TrimEnd(',').Split(',');
            for (int i = 0; i < Inputs.Length; i++)
            {
                if (double.TryParse(Inputs[i], out double result))
                {
                    if (result > 0 || result < 0)
                    {


                        if ((result % 3 == 0) && (result % 5 == 0))
                        {

                            sb.AppendLine(" - FizzBuzz - ");
                        }
                        else if ((result % 3 == 0))
                        {

                            sb.AppendLine(" - Fizz -");
                        }
                        else if ((result % 5 == 0))
                        {

                            sb.AppendLine(" -  Buzz  -");
                        }
                        else
                        {

                            sb.AppendLine("Divided " + result + " By 3");
                            sb.AppendLine("Divided " + result + " By 5");
                        }

                    }



                }
                else
                {
                    sb.AppendLine("Invalid Item");
                }
            }
            ResultSpan.InnerText = HttpUtility.HtmlEncode(sb.ToString());

        }
    }

}