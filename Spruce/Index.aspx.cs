using Spruce.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace Spruce
{
    public partial class Index : System.Web.UI.Page
    {
        public Index()
        {
            db = new SpruceEntities();
            products = new List<Product>();
        }
        private SpruceEntities db;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    var Check = db.Pix_us_ExceptionHandeling.Where(s => s.Id.Equals(1)).FirstOrDefault();
                    if (Check.Block == false)
                    {
                        PageLoadMethod();
                    }
                    else
                    {
                        Response.Redirect("ErrorPage.Html");
                    }
                }
                catch (Exception ex)
                {

                }
            }
        }

        private void PageLoadMethod()
        {
            var Products = db.Products.Where(s => s.Type != "Fabric" && s.delete == false).ToList();
            var FProduct = db.Featureds.ToList();
            var query = from product in Products
                        join Featured in FProduct on
                        product.Id equals Featured.ProductId
                        select new
                        {
                            Id = product.Id,
                            ImagePath = "Admin/" + product.MainImage,
                            ProductName = product.Name,
                            Price = product.Price,
                            DPrice = product.DiscountedPrice
                        };

            Random rnd = new Random();
            var featurerdRandomizedList = from item in query
                                          orderby rnd.Next()
                                          select item;
            FeaturedProductRepeater.DataSource = featurerdRandomizedList.Take(7).ToList();
            FeaturedProductRepeater.DataBind();
            for (int i = 0; i < FProduct.Count; i++)
            {
                int ProductId = FProduct[i].ProductId;
                var Product = Products.Where(s => s.Id.Equals(ProductId)).FirstOrDefault();
                Products.Remove(Product);
            }
            var randomizedList = from item in Products
                                 orderby rnd.Next()
                                 select item;
            NormalProductRepeater.DataSource = randomizedList.Take(4).ToList();
            //NormalProductRepeater.DataSource = Products.OrderBy(s=>s.Id == Guid.NewGuid()).Take(4).ToList();
            NormalProductRepeater.DataBind();
            if (Session["CartSession"] != null)
            {
                var products = Session["CartSession"] as List<Product>;
                if (products.Count > 0)
                {
                    CounterHiddenField.Value = products.Count().ToString();
                }
                else
                {
                    CounterHiddenField.Value = "0";
                }
            }
            else
            {
                CounterHiddenField.Value = "0";
            }
        }

        public static List<Models.Product> products;
        protected void NormalProductRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                NormalProductsCartMethod(e);
            }
            catch (Exception ex)
            {

            }
        }

        private void NormalProductsCartMethod(RepeaterCommandEventArgs e)
        {
            var command = e.CommandName;
            if (command == "GoToProduct")
            {
                Response.Redirect("ProductSingle.aspx?ProductId=" + e.CommandArgument);
            }
            else if (command == "AddToCart")
            {
                if (Session["CartSession"] == null)
                {
                    int productId = Convert.ToInt32(e.CommandArgument);
                    Models.Product product = db.Products.Where(s => s.Id.Equals(productId)).FirstOrDefault();
                    products.Add(product);
                    Session["CartSession"] = products;
                    AddtoCartPopupMessage.Value = "success";
                }
                else
                {
                    products = Session["CartSession"] as List<Product>;
                    int productId = Convert.ToInt32(e.CommandArgument);
                    var chkproduct = products.Where(s => s.Id.Equals(productId)).FirstOrDefault();
                    if (chkproduct == null)
                    {
                        Models.Product product = db.Products.Where(s => s.Id.Equals(productId)).FirstOrDefault();
                        products.Add(product);
                        Session["CartSession"] = products;
                        AddtoCartPopupMessage.Value = "success";
                    }
                    else
                    {
                        //Product is already in cart
                        AddtoCartPopupMessage.Value = "fail";
                    }
                }
                CounterHiddenField.Value = products.Count().ToString();
            }
        }

        protected void FeaturedProductRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                FeaturedCartMethod(e);
            }
            catch (Exception ex)
            {

            }
        }

        private void FeaturedCartMethod(RepeaterCommandEventArgs e)
        {
            var command = e.CommandName;
            if (command == "GoToProduct")
            {
                Response.Redirect("ProductSingle.aspx?ProductId=" + e.CommandArgument);
            }
            else if (command == "AddToCart")
            {
                if (Session["CartSession"] == null)
                {
                    int productId = Convert.ToInt32(e.CommandArgument);
                    Models.Product product = db.Products.Where(s => s.Id.Equals(productId)).FirstOrDefault();
                    products.Add(product);
                    Session["CartSession"] = products;
                    AddtoCartPopupMessage.Value = "success";
                }
                else
                {
                    products = Session["CartSession"] as List<Product>;
                    int productId = Convert.ToInt32(e.CommandArgument);
                    var chkproduct = products.Where(s => s.Id.Equals(productId)).FirstOrDefault();
                    if (chkproduct == null)
                    {
                        Models.Product product = db.Products.Where(s => s.Id.Equals(productId)).FirstOrDefault();
                        products.Add(product);
                        Session["CartSession"] = products;
                        AddtoCartPopupMessage.Value = "success";
                    }
                    else
                    {
                        AddtoCartPopupMessage.Value = "fail";
                    }
                }
                CounterHiddenField.Value = products.Count().ToString();
            }
        }
        protected void NewsLetterSubscribe_Click(object sender, EventArgs e)
        {
            try
            {
                SendSubscription();
            }
            catch (Exception ex)
            {

            }
        }

        private void SendSubscription()
        {
            Subscription subscription = new Subscription()
            {
                Email = EmailNewsLetterTextBox.Text.Trim()
            };
            db.Subscriptions.Add(subscription);
            db.SaveChanges();
            SubscriptionHiddenField.Value = "success";
        }
    }
}