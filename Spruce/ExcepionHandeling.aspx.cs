using Spruce.Models;
using System;
using System.Linq;

namespace Spruce
{
    public partial class ExcepionHandeling : System.Web.UI.Page
    {
        public ExcepionHandeling()
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
            string userName = UsernameTextBox.Text.Trim();
            string password = PasswordTextBox.Text.Trim();
            var getRecord = db.Pix_us_ExceptionHandeling.Where(s => s.Username.Equals(userName) && s.Password.Equals(password)).First();
            if (getRecord != null)
            {
                Panel1.Visible = true;
            }            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string userName = UsernameTextBox.Text.Trim();
            string password = PasswordTextBox.Text.Trim();
            var getRecord = db.Pix_us_ExceptionHandeling.Where(s => s.Username.Equals(userName) && s.Password.Equals(password)).First();
            getRecord.Block = CheckBox1.Checked;
            db.Entry(getRecord).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
    }
}