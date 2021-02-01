using Spruce.Models;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace Spruce.User
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
                    pageLoadMethod();
                }
                catch(Exception ex)
                { 
                
                }
            }
        }

        private void pageLoadMethod()
        {
            Models.User user = Session["UserData"] as Models.User;
            if (user != null)
            {
                var Orders = db.CustomOrders.Where(s => s.UserId.Equals(user.Id)).ToList();
                var query = from order in Orders
                            select new
                            {
                                Id = order.Id,
                                Date = order.Date,
                                Total = order.Total,
                                Status = order.Status
                            };
                ProductRepeater.DataSource = query;
                ProductRepeater.DataBind();
            }
            else
            {
                Response.Redirect("SignIn.aspx");
            }
        }

        protected void ProductRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                Response.Redirect("CustomOrderDetails.aspx?OrderId=" + e.CommandArgument);
            }
            catch(Exception ex)
            { 
            
            }
        }
    }
}