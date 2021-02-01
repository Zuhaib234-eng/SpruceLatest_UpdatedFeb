using Spruce.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spruce
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        public ForgotPassword()
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
        protected void ForgotPasswordBtn_Click(object sender, EventArgs e)
        {
            try
            {
                SendEmailShirt(EmailTextbox.Text.Trim());
            }
            catch(Exception ex)
            { 
            
            }
        }
        private void SendEmailShirt(string Email)
        {
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            MailMessage message = new MailMessage();
            //senderemail
            message.From = new MailAddress("sprucecustomization.pk@gmail.com");
            Random random = new Random();
            string NewPassword = "spruce" + random.Next(1000, 9999).ToString();
            var getUser = db.Users.Where(s => s.Email.Equals(Email)).FirstOrDefault();
            if (getUser != null)
            {
                getUser.Password = NewPassword;
                db.Entry(getUser).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                string Design = string.Format("<div style='width: 600px; font - family: Arial, Helvetica, sans - serif'><div style='display: flex; justify - content: space - between; padding: 20px'><div><img src='www.spruce.pk/Assets/Images/Logo-black.png' style='width: 140px' alt='' /></div><div>Need help? <a href='{0}'>Contact us</a></div></div><div style='padding: 50px; background: lightblue; border: 2px solid #272727; border-bottom: 0;'><h1>Your Password Has Been Resset</h1><div style='margin-top: 20px'><div style=' display: inline-block; padding: 15px 30px; background: #272727; color: #fff; text-decoration: none;'>Your new password is {1}</div></div><div style=' background: #fff; padding: 30px 30px 40px; border: 2px solid #272727; border-top: 0;'><h3>Contact us:</h3><p>Phone No : 0336 3989249 <br>Email : support@spruce.pk </p><p>As they say 'Style is a way to say who you are without having to speak', at Spruce we aim to help you express yourself and your style without having to speak for it. Whether you are seeking an elegant dress shirt for a formal occasion, or simply relaxing with friends and family in style, you can trust us to deliver superior bespoke shirts, with perfect details right from quality fabric to top-notch stitching and designing to suit your style statement. At Spruce, we strive our best to meet the dressing needs of our customers with top-class customer service.</p></div></div>", "www.spruce.pk", NewPassword);
                //recieverEmail            
                message.To.Add(Email);
                message.Subject = "Spruce(Password Resset)";
                message.Body = string.Format(Design);
                message.IsBodyHtml = true;
                client.UseDefaultCredentials = false;
                client.EnableSsl = true;
                client.Credentials = new System.Net.NetworkCredential("sprucecustomization.pk@gmail.com", "Spruce@2020");
                client.Send(message);
            }
        }
    }
}