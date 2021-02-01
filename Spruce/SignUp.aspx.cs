using Spruce.Models;
using System;
using System.Linq;
using System.Net.Mail;

namespace Spruce
{
    public partial class SignUp : System.Web.UI.Page
    {
        public SignUp()
        {
            db = new SpruceEntities();
        }
        private SpruceEntities db;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
                  
            }
        }

        protected void SignUpBtn_Click(object sender, EventArgs e)
        {
            try
            {
                SignInMethod();
            }
            catch(Exception ex)
            { 
                  //Exception
            }
        }

        private void SignInMethod()
        {
            string Email = EmailTextbox.Text.Trim();
            var GetUser = db.Users.Where(s => s.Email == Email).FirstOrDefault();
            if (GetUser == null)
            {
                var User = new Models.User()
                {
                    Address = AddressTextBox.Text.Trim(),
                    Email = EmailTextbox.Text.Trim(),
                    Name = NameTextBox.Text.Trim(),
                    Password = PasswordTextbox.Text.Trim(),
                    PhoneNo = PhoneTextbox.Text.Trim()
                };
                db.Users.Add(User);
                //SendEmailVerification(User.Email);
                int success = db.SaveChanges();
                if (success > 0)
                {
                    PopupMessage.Value = "success";
                }
                else
                {
                    PopupMessage.Value = "Fail";
                }
                
            }
            else
            {
                PopupMessage.Value = "your account is already registed";
            }
        }
        private void SendEmailVerification(string Email)
        {
            SmtpClient client = new SmtpClient("mail.spruce.pk", 25);
            MailMessage message = new MailMessage();
            //senderemail
            message.From = new MailAddress("support@spruce.pk");
            //recieverEmail
            message.To.Add(Email);
            message.Subject = "Spruce";
            message.Body = string.Format("<div style='width: 600px; font - family: Arial, Helvetica, sans - serif'><div style='display: flex; justify - content: space - between; padding: 20px'><div><img src='https://spruce.pk/Admin/Images/EmailImage.png' style='width: 140px' alt='' /></div><div>Need help? <a href='{0}'>Contact us</a></div></div><div style='padding: 50px;background: lightblue;border: 2px solid #272727;border-bottom: 0;'><h1>Thankyou For Registration</h1><div style='margin-top: 20px'><a href='{1}' style='display: inline-block;padding: 15px 30px;background: #272727;color: #fff;text-decoration: none;'>View Your Order &rarr;</a></div></div><div style=' background: #fff; padding: 30px 30px 40px; border: 2px solid #272727;border-top: 0;'><h3>Pro tips, just for you:</h3><p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Pariaturnihil reiciendis molestias</p><p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.Aut,exercitationem omnis voluptatem dicta porro provident veromollitiamolestiae corrupti. Nemo.</p></div></div>", "https://spruce.pk/About.aspx", "https://spruce.pk");
            message.IsBodyHtml = true;
            client.UseDefaultCredentials = false;
            client.EnableSsl = false;
            client.Credentials = new System.Net.NetworkCredential("support@spruce.pk", "8_b60lKk");
            client.Send(message);
        }
    }
}