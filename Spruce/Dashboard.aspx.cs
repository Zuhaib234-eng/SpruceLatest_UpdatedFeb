using Spruce.Models;
using System;
using System.Linq;

namespace Spruce.User
{
    public partial class Dashboard : System.Web.UI.Page
    {
        public Dashboard()
        {
            db = new SpruceEntities();
        }
        private SpruceEntities db;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    LoadMethod();
                }
                catch (Exception ex)
                {
                    //Error Message
                }
            }
        }

        private void LoadMethod()
        {
            var GetAuth = Session["UserData"] as Models.User;
            if (GetAuth != null)
            {
                UsernameLabel.Text = GetAuth.Name;
                EmailLabel.Text = GetAuth.Email;
                PhoneNoLabel.Text = GetAuth.PhoneNo;
                PasswordLabel.Text = GetAuth.Password;
                AddressLabel.Text = GetAuth.Address;
                //Changing
                UsernameChangeTextbox.Text = GetAuth.Name;
                PhoneNoChangeTextbox.Text = GetAuth.PhoneNo;
                PasswordChangeTextbox.Text = GetAuth.Password;
                AddressChangeTextbox.Text = GetAuth.Address;
            }
            else
            {
                Response.Redirect("SignIn.aspx");
            }
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            try
            {
                UpdateMethod();
                MessageHiddenField.Value = "success";
            }
            catch(Exception ex)
            { 
            
            }
        }

        private void UpdateMethod()
        {
            Models.User UDetail = Session["UserData"] as Models.User;
            Models.User newUser = db.Users.Where(s => s.Id.Equals(UDetail.Id)).FirstOrDefault();
            newUser.Address = AddressChangeTextbox.Text.Trim();
            newUser.PhoneNo = PhoneNoChangeTextbox.Text.Trim();
            newUser.Password = PasswordChangeTextbox.Text.Trim();
            newUser.Address = AddressChangeTextbox.Text.Trim();
            newUser.Name = UsernameChangeTextbox.Text.Trim();
            db.Entry(newUser).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            UsernameLabel.Text = newUser.Name;
            EmailLabel.Text = newUser.Email;
            PhoneNoLabel.Text = newUser.PhoneNo;
            PasswordLabel.Text = newUser.Password;
            AddressLabel.Text = newUser.Address;
            EmailLabel.Text = newUser.Email;
            //Changing
            UsernameChangeTextbox.Text = newUser.Name;
            PhoneNoChangeTextbox.Text = newUser.PhoneNo;
            PasswordChangeTextbox.Text = newUser.Password;
            AddressChangeTextbox.Text = newUser.Address;
            EmailChangeTextbox.Text = newUser.Email;
            //Message

        }
    }
}