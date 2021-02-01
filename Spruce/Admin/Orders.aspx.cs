using Spruce.Models;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace Spruce.Admin
{
    public partial class Orders : System.Web.UI.Page
    {
        public Orders()
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
                        PageLoadMethod();
                        NotificationMethod();
                        int newCustomOrder = db.CustomOrders.Where(s => s.AdminView == false).ToList().Count();
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
                catch (Exception ex)
                {

                }
            }
        }

        private void PageLoadMethod()
        {
            var Users = db.Users.ToList();
            var Orders = db.Orders.ToList();
            var getOrders = from order in Orders
                            join
                            user in Users on order.UserId equals user.Id
                            select new
                            {
                                Id = order.Id,
                                UserName = user.Name,
                                Date = order.Date,
                                Price = order.Total,
                                Status = order.Status
                            };
            OrderRepeater.DataSource = getOrders.OrderByDescending(s => s.Id).ToList();
            OrderRepeater.DataBind();
        }

        private void NotificationMethod()
        {
            var OrdersNotifications = db.Orders.Where(s => s.AdminView == false).ToList();
            for (int i = 0; i < OrdersNotifications.Count(); i++)
            {
                var Order = OrdersNotifications[i];
                Order.AdminView = true;
                db.Entry(Order).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
        }

        protected void OrderRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                Response.Redirect("OrderDetail.aspx?OrderID=" + e.CommandArgument);
            }
            catch (Exception ex)
            {

            }
        }
    }
}