using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CurrencyConverter
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void calculateResult(double exchangeRate)
        {
            if (valueTextBox.Text.Trim().Length == 0)
                return;

            double value = 0.0;
            if (!Double.TryParse(valueTextBox.Text, out value))
                return;
            
                double result = 0.0;

            
            result = Math.Round(value / exchangeRate, 2);

            resultLabel.Text = "Value in UK £" + result.ToString();
        
        }

       

        protected void dollarRadio_CheckedChanged(object sender, EventArgs e)
        {
            calculateResult(1.32);
        }

        protected void kundRadio_CheckedChanged(object sender, EventArgs e)
        {
            calculateResult(6.47);
        }

        protected void randRadio_CheckedChanged(object sender, EventArgs e)
        {
            calculateResult(19.65);
        }

        protected void euroRadio_CheckedChanged(object sender, EventArgs e)
        {
            calculateResult(1.14);
        }

        protected void valueTextBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}