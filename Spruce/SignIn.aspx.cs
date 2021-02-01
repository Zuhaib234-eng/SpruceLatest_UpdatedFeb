using Spruce.Models;
using System;
using System.Linq;

namespace Spruce
{
    public partial class SignIn : System.Web.UI.Page
    {
        public SignIn()
        {
            db = new SpruceEntities();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                //Page.SetFocus(SignInBtn);
            }
        }
        private SpruceEntities db;

        protected void SignInBtn_Click(object sender, EventArgs e)
        {
            try
            {
                SignInMethod();
            }
            catch(Exception ex)
            { 
            
            }
        }
        private void SignInMethod()
        {
            string Email = EmailTextbox.Text.Trim();
            string Password = PasswordTextbox.Text.Trim();
            var GetUser = db.Users.Where(s => s.Email.Equals(Email) && s.Password.Equals(Password)).FirstOrDefault();
            if (GetUser != null)
            {
                Session["UserData"] = GetUser;
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                //Fail login
                SignInHiddenField.Value = "success";
            }
        }

        protected void ForgetPassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }
    }
}