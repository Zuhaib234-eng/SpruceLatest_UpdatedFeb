using Spruce.Models;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace Spruce.Admin
{
    public partial class UserDetails : System.Web.UI.Page
    {
        public UserDetails()
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
                    var GetAuth = Session["AdminData"] as Models.AdminLog;
                    if (GetAuth != null)
                    {
                        int newOrders = db.Orders.Where(s => s.AdminView == false).ToList().Count();
                        if (newOrders > 0)
                        {
                            NewOrderHiddenField.Value = newOrders.ToString();
                        }
                        PageLoadMethod();
                    }
                    else
                    {
                        Response.Redirect("Login.aspx");
                    }
                }
                catch(Exception ex)
                { 
                
                }
            }
        }

        private void PageLoadMethod()
        {
            int UserId = Convert.ToInt32(Request.QueryString["UserID"]);
            var User = db.Users.Where(s => s.Id.Equals(UserId)).FirstOrDefault();
            UsernameLabel.Text = User.Name;
            EmailLabel.Text = User.Email;
            PhoneLabel.Text = User.PhoneNo;
            PasswordLabel.Text = User.Password;
            AddressLabel.Text = User.Address;
        }
    }
}