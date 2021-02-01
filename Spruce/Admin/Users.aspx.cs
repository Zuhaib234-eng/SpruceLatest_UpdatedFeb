using Spruce.Models;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace Spruce.Admin
{
    public partial class Users : System.Web.UI.Page
    {
        public Users()
        {
            db = new SpruceEntities();
        }
        private SpruceEntities db;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var GetAuth = Session["AdminData"] as Models.AdminLog;
                if (GetAuth != null)
                {
                    int newOrders = db.Orders.Where(s => s.AdminView == false).ToList().Count();
                    if (newOrders > 0)
                    {
                        NewOrderHiddenField.Value = newOrders.ToString();
                    }
                    int newCustomOrder = db.CustomOrders.Where(s => s.AdminView == false).ToList().Count();
                    if (newCustomOrder > 0)
                    {
                        CustomOrderHiddenField.Value = newCustomOrder.ToString();
                    }
                    PageLoadMethod();
                }
                else
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
        private void PageLoadMethod()
        {
            var users = db.Users.ToList();
            UserRepater.DataSource = users.OrderByDescending(s=>s.Id).ToList();
            UserRepater.DataBind();
            string mylst = "";
            for (int i = 0; i < users.Count; i++)
            {
                int Id = users[i].Id;
                int getNormalOrders = db.Orders.Where(s => s.UserId.Equals(Id)).ToList().Count();
                int getCusOrders = db.CustomOrders.Where(s => s.UserId.Equals(Id)).ToList().Count();
                mylst += (getNormalOrders + getCusOrders).ToString() + ",";                
            }
            GetHiddenField.Value = mylst;
        }
        protected void UserRepater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                Response.Redirect("UserDetails.aspx?UserID=" + e.CommandArgument);
            }
            catch (Exception ex)
            {

            }
        }
    }
}