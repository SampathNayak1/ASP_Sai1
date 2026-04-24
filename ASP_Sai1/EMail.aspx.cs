using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASP_Sai1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage mail=new MailMessage();
                mail.From = new MailAddress(txtFrom.Text);
                mail.To.Add(txtTo.Text);
                mail.Subject= txtSubject.Text;
                mail.Body= txtBody.Text;
                if (!string.IsNullOrEmpty(txtCc.Text))
                {
                    mail.CC.Add(txtCc.Text); 
                }

                SmtpClient smtp = new SmtpClient("smtp.gmail.com ", 587);
                smtp.Credentials = new NetworkCredential("megavathsampath1@gmail.com","2Vasukamala"); 
                smtp.EnableSsl = true;

                smtp.Send(mail);
                Response.Write("<script> alert('Email Sent Succesfull ' )</script>");
            }
            catch(Exception exe)   
            {
                Response.Write("<script>alert('Error : ' " + exe.Message + " ')</script>");
            }
        }
    }
}