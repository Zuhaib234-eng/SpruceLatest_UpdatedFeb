using Spruce.Models;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace Spruce.Admin
{
    public partial class Admin : System.Web.UI.Page
    {
        public Admin()
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
            var ChkLogin = Session["AdminData"];
            if (ChkLogin != null)
            {
                int StockCount = 0;
                var stocks = db.Products.Where(s => s.delete == false).ToList();
                for (int i = 0; i < stocks.Count; i++)
                {
                    StockCount += stocks[i].Quantity;
                }
                TotalUsersLabel.Text = db.Users.Count().ToString();
                StockAvailableLabel.Text = StockCount.ToString();
                TotalOrdersLabel.Text = (db.Orders.ToList().Count() + db.CustomOrders.ToList().Count()).ToString();
                int newOrders = db.Orders.Where(s => s.AdminView == false).ToList().Count();                
                int newCustomOrder = db.CustomOrders.Where(s => s.AdminView == false).ToList().Count();
                int Total = newOrders + newCustomOrder;
                
                NewOrderLabel.Text = Total.ToString();
                if (newOrders > 0)
                {
                    NewOrderHiddenField.Value = newOrders.ToString();
                }
                if (newCustomOrder > 0)
                {
                    CustomOrderHiddenField.Value = newCustomOrder.ToString();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}