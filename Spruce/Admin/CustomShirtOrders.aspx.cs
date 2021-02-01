using Spruce.Models;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace Spruce.Admin
{
    public partial class CustomShirtOrders : System.Web.UI.Page
    {
        public CustomShirtOrders()
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
                    var getNewOrders = db.CustomOrders.Where(s => s.AdminView == false).ToList();
                    for (int i = 0; i < getNewOrders.Count; i++)
                    {
                        var newModel = getNewOrders[i];
                        newModel.AdminView = true;
                        db.Entry(newModel).State = System.Data.Entity.EntityState.Modified;
                        db.SaveChanges();
                    }
                    PageLoadMethod();
                }
                catch(Exception ex)
                { 
                
                }
            }
        }

        private void PageLoadMethod()
        {
            int newOrders = db.Orders.Where(s => s.AdminView == false).ToList().Count();
            if (newOrders > 0)
            {
                NewOrderHiddenField.Value = newOrders.ToString();
            }
            var Users = db.Users.ToList();
            var CustomOrders = db.CustomOrders.ToList();
            CustomOrderRepeater.DataSource = from order in CustomOrders
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
            CustomOrderRepeater.DataBind();
        }

        protected void CustomOrderRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                Response.Redirect("CustomerOrderDetail.aspx?CustomOrderID=" + e.CommandArgument);
            }
            catch(Exception ex)
            {
            
            }
        }
    }
}