using Spruce.Models;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace Spruce.Admin
{
    public partial class NewsLetter : System.Web.UI.Page
    {
        public NewsLetter()
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
                    PageLoadMethod();
                }
                catch(Exception ex)
                { 
                
                }
            }
        }

        private void PageLoadMethod()
        {
            EmailsRepeater.DataSource = db.Subscriptions.Where(s => s.Email != "").ToList();
            EmailsRepeater.DataBind();
            int newOrders = db.Orders.Where(s => s.AdminView == false).ToList().Count();
            int newCustomOrder = db.CustomOrders.Where(s => s.AdminView == false).ToList().Count();
            if (newOrders > 0)
            {
                NewOrderHiddenField.Value = newOrders.ToString();
            }
            if (newCustomOrder > 0)
            {
                CustomOrderHiddenField.Value = newCustomOrder.ToString();
            }
        }
    }
}