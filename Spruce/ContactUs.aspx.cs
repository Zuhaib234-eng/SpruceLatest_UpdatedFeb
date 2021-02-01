using Spruce.Models;
using System;

namespace Spruce
{
    public partial class ContactUs : System.Web.UI.Page
    {
        public ContactUs()
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

        protected void SendButton_Click(object sender, EventArgs e)
        {
            try
            {
                AddContactUs();
            }
            catch(Exception ex)
            { 
                
            }
        }

        private void AddContactUs()
        {
            Models.ContactU contactUs = new Models.ContactU()
            {
                Email = EmailTextBox.Text.Trim(),
                Message = MessageTextBox.Text.Trim(),
                Name = NameTextBox.Text.Trim(),
                Subject = SubjectTextBox.Text.Trim(),
                PhoneNo = PhoneNoTextBox.Text.Trim()
            };
            db.ContactUs.Add(contactUs);
            int x = db.SaveChanges();
            if (x > 0)
            {
                PopupMessage.Value = "success";
            }
            else
            {
                PopupMessage.Value = "fail";
            }
        }
    }
}