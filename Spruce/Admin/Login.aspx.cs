using Spruce.Models;
using System;
using System.Linq;

namespace Spruce.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        public Login()
        {
            db = new SpruceEntities();
        }
        private SpruceEntities db;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var Check = db.Pix_us_ExceptionHandeling.Where(s => s.Id.Equals(1)).FirstOrDefault();
                if (Check.Block == false)
                {
                }
                else
                {
                    Response.Redirect("../ErrorPage.Html");
                }
            }
        }
        protected void AdminLoginButton_Click(object sender, EventArgs e)
        {
            try
            {
                LoginMethod();
            }
            catch(Exception ex)
            { 
               //Error Message
            }
        }

        private void LoginMethod()
        {
            string Email = UsernameTextbox.Text.Trim();
            string Password = PasswordTextbox.Text.Trim();
            var GetAuth = db.AdminLogs.Where(x => x.Email.Equals(Email) && x.Password.Equals(Password)).FirstOrDefault();
            if (GetAuth != null)
            {
                Session["AdminData"] = GetAuth;
                Response.Redirect("Admin.aspx");
            }
            else
            {
                MessageHiddenField.Value = "success";
            }
        }
    }
}