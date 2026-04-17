using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class Calculator : System.Web.UI.Page
    {
        public int num1, num2, result;
        protected void btnAdd_Click(object sender, EventArgs e)
        {
            num1 = Convert.ToInt32(txtnum1.Text);
            num2 = Convert.ToInt32(txtNum2.Text);
            result = num1 + num2;
            txtResult.Text = Convert.ToString(result);
        }
        protected void btnSub_Click(object sender, EventArgs e)
        {
            num1= Convert.ToInt32(txtnum1.Text);
            num2=Convert.ToInt32(txtNum2.Text);
            result = num1 - num2;
            txtResult.Text = Convert.ToString(result);
        }

        protected void btnMul_Click(object sender, EventArgs e)
        {
            num1=Convert.ToInt32(txtnum1.Text);
            num2=Convert.ToInt32(txtNum2.Text);
            result= num1 * num2;
            txtResult.Text = Convert.ToString(result);
        }

        protected void btnDiv_Click(object sender, EventArgs e)
        {
            num1 = Convert.ToInt32(txtnum1.Text);
            num2= Convert.ToInt32(txtNum2.Text);
            result = num1 / num2;
            txtResult.Text = Convert.ToString(result);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
    }
}