using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class Sample_RegistrationForm_validation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cvAge_ServerValidate(object source, ServerValidateEventArgs args)
        {

            int age;
            if(int.TryParse(txtAge.Text, out age))
            {
                args.IsValid = (age > 18 && age < 60);
            }
            else
            {
                args.IsValid = false;
            }



            //int age = Convert.ToInt32(txtAge.Text);
            //if (age > 18 && age < 60)
            //{
            //    args.IsValid = true;
            //}
            //else
            //{
            //    args.IsValid = false;
            //}
        }
    }
}
