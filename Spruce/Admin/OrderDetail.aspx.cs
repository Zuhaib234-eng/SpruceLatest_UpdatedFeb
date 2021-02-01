using Spruce.Models;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace Spruce.Admin
{
    public partial class OrderDetail : System.Web.UI.Page
    {
        public OrderDetail()
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
                        int newOrders = db.Orders.Where(s => s.AdminView == false).ToList().Count();
                        if (newOrders > 0)
                        {
                            NewOrderHiddenField.Value = newOrders.ToString();
                        }
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
            int OrderId = Convert.ToInt32(Request.QueryString["OrderID"]);
            var getOrder = db.Orders.Where(s => s.Id.Equals(OrderId)).FirstOrDefault();
            OrderDateLabel.Text = getOrder.Date.ToLongDateString();
            var getUserOrder = db.Users.Where(s => s.Id.Equals(getOrder.UserId)).FirstOrDefault();
            CustomernameLabel.Text = getUserOrder.Name;
            CustomerEmailLabel.Text = getUserOrder.Email;
            CustomerPhoneNoLabel.Text = getUserOrder.PhoneNo;
            CustomerAddressLabel.Text = getUserOrder.Address;
            var BoughtProducts = db.Carts.Where(s => s.OrderId.Equals(OrderId)).ToList();
            var Products = db.Products.Where(s => s.delete == false).ToList();
            var query = from bproducts in BoughtProducts
                        join product in Products on bproducts.ProductId equals product.Id
                        select new
                        {
                            Image = product.MainImage,
                            ProductName = product.Name,
                            Price = product.Price,
                            Quantity = bproducts.Quantity,
                            Total = product.Price * bproducts.Quantity,
                            ProductId = product.Id
                        };
            OrderRepeater.DataSource = query;
            OrderRepeater.DataBind();
            FullTotalLabel.Text = getOrder.Total.ToString();
        }

        protected void SendToCustomerBtn_Click(object sender, EventArgs e)
        {

        }
        protected void OrderRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                Response.Redirect("ProductSingle.aspx?ProductId=" + e.CommandArgument);
            }
            catch(Exception ex)
            { 
            
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                GetMethod();
            }
            catch(Exception ex)
            { 
            
            }
        }

        private void GetMethod()
        {
            int OrderId = Convert.ToInt32(Request.QueryString["OrderID"]);
            var getOrder = db.Orders.Where(s => s.Id.Equals(OrderId)).FirstOrDefault();
            var user = db.Users.Where(s => s.Id.Equals(getOrder.UserId)).FirstOrDefault();
            Response.Redirect("UserDetails.aspx?UserID=" + user.Id);
        }

        protected void UpdateButton_Click(object sender, EventArgs e)
        {
            try
            {
                UpdateMethod();
            }
            catch(Exception ex)
            { 
            
            }
        }

        private void UpdateMethod()
        {
            int OrderId = Convert.ToInt32(Request.QueryString["OrderID"]);
            var getOrder = db.Orders.Where(s => s.Id.Equals(OrderId)).FirstOrDefault();
            getOrder.Status = true;
            db.Entry(getOrder).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
    }
}