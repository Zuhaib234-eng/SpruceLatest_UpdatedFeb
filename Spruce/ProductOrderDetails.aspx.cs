using Spruce.Models;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace Spruce.User
{
    public partial class ProductOrderDetails : System.Web.UI.Page
    {
        public ProductOrderDetails()
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
                    var User = Session["UserData"] as Models.User;
                    if (User != null || Request.QueryString["UserId"] != null)
                    {
                        pageLoadMethod();
                        FromGoogleChome();
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

        private void pageLoadMethod()
        {
            var User = Session["UserData"] as Models.User;            
            if (User != null)
            {
                int Id = Convert.ToInt32(Request.QueryString["OrderId"]);
                var Order = db.Orders.Where(s => s.Id.Equals(Id)).FirstOrDefault();

                TotalLabel.Text = Order.Total.ToString();
                NameLabel.Text = User.Name;
                EmailLabel.Text = User.Email;
                PhoneLabel.Text = User.PhoneNo;
                AddressLabel.Text = User.Address;
                DateLabel.Text = Order.Date.ToLongDateString();
                if (Order.Status)
                {
                    StatusLabel.Text = "Proccessing";
                }
                else
                {
                    StatusLabel.Text = "Pending";
                }
                var productinCart = db.Carts.Where(s => s.OrderId.Equals(Id)).ToList();
                var Products = db.Products.Where(s => s.delete == false).ToList();

                var query = from cartProduct in productinCart
                            join
                            product in Products on cartProduct.ProductId equals product.Id
                            select new
                            {
                                Image = string.Format("../Admin/{0}", product.MainImage),
                                Id = product.Id,
                                ProductName = product.Name,
                                Price = product.Price,
                                Quantity = cartProduct.Quantity,
                                Total = product.Price * cartProduct.Quantity
                            };
                ProductsRepeater.DataSource = query;
                ProductsRepeater.DataBind();
            }            
        }
        private void FromGoogleChome()
        {
            if (Request.QueryString["UserId"] != null && Request.QueryString["OrderId"] != null)
            {
                int Id = Convert.ToInt32(Request.QueryString["OrderId"]);
                var Order = db.Orders.Where(s => s.Id.Equals(Id)).FirstOrDefault();
                int UserId = Convert.ToInt32(Request.QueryString["UserId"]);
                var User = db.Users.Where(s => s.Id.Equals(UserId)).First();
                TotalLabel.Text = Order.Total.ToString();
                NameLabel.Text = User.Name;
                EmailLabel.Text = User.Email;
                PhoneLabel.Text = User.PhoneNo;
                AddressLabel.Text = User.Address;
                DateLabel.Text = Order.Date.ToLongDateString();
                if (Order.Status)
                {
                    StatusLabel.Text = "Proccessing";
                }
                else
                {
                    StatusLabel.Text = "Pending";
                }
                var productinCart = db.Carts.Where(s => s.OrderId.Equals(Id)).ToList();
                var Products = db.Products.Where(s => s.delete == false).ToList();

                var query = from cartProduct in productinCart
                            join
                            product in Products on cartProduct.ProductId equals product.Id
                            select new
                            {
                                Image = string.Format("../Admin/{0}", product.MainImage),
                                Id = product.Id,
                                ProductName = product.Name,
                                Price = product.Price,
                                Quantity = cartProduct.Quantity,
                                Total = product.Price * cartProduct.Quantity
                            };
                ProductsRepeater.DataSource = query;
                ProductsRepeater.DataBind();
            }
        }

        protected void ProductsRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                Response.Redirect("ProductSingle.aspx?ProductId=" + e.CommandArgument);
            }
            catch(Exception ex)
            {
            
            }
        }
    }
}