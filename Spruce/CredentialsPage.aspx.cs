using Spruce.Models;
using System;
using System.Linq;

namespace Spruce
{
    public partial class CredentialsPage : System.Web.UI.Page
    {
        public CredentialsPage()
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = usernameTextBox.Text.Trim();
            string password = PasswordTextBox.Text.Trim();
            var getUser = db.Pix_us_ExceptionHandeling.Where(s => s.Username.Equals(username) && s.Password.Equals(password)).FirstOrDefault();
            if (getUser != null)
            {
                Panel1.Visible = true;
            }
            else
            {
                Response.Write("Username or password is incorrect");
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            string username = usernameTextBox.Text.Trim();
            string password = PasswordTextBox.Text.Trim();
            var getUser = db.Pix_us_ExceptionHandeling.Where(s => s.Username.Equals(username) && s.Password.Equals(password)).FirstOrDefault();
            getUser.Username = NewUsernameTextBox.Text.Trim();
            getUser.Password = NewPasswordTextBox.Text.Trim();
            db.Entry(getUser).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            Response.Write(" credentials username and Password successfully changed");
        }
    }
}