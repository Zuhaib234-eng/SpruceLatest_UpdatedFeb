using Spruce.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace Spruce
{
    public partial class Products : System.Web.UI.Page
    {
        public Products()
        {
            db = new SpruceEntities();
            products = new List<Product>();
        }
        private SpruceEntities db;
        static List<Models.Product> ProductsList;
        static List<Models.Featured> FProduct;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PageLoadMethod();
            }
        }

        private void PageLoadMethod()
        {//.Where(s=>s.delete == false)
            ProductsList = db.Products.Where(s => !s.Type.Equals("Fabric") && s.delete == false).ToList();
            FProduct = db.Featureds.ToList();
            var query = from product in ProductsList
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
            FeaturedProductRepeater.DataSource = query;
            FeaturedProductRepeater.DataBind();
            for (int i = 0; i < FProduct.Count; i++)
            {
                int ProductId = FProduct[i].ProductId;
                var Product = ProductsList.Where(s => s.Id.Equals(ProductId)).FirstOrDefault();
                ProductsList.Remove(Product);
            }
            NormalProductRepeater.DataSource = ProductsList;
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
                NormalProductMethod(e);
            }
            catch(Exception ex)
            { 
            
            }
        }

        private void NormalProductMethod(RepeaterCommandEventArgs e)
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

        protected void FeaturedProductsRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                FeaturedMethod(e);
            }
            catch(Exception ex)
            { 
            
            }
        }

        private void FeaturedMethod(RepeaterCommandEventArgs e)
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

        protected void checkGinham_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox("Checks & Ginhams");
        }

        protected void PrintsSelfPatterns_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox("Prints & Self Patterns");
        }

        protected void Solids_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox("Solids");
        }

        protected void Stripes_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox("Stripes");
        }
        public void CheckBox(string Category)
        {
            ProductsList = db.Products.Where(s => s.Category.Equals(Category)).ToList();
            FProduct = db.Featureds.ToList();
            var query = from product in ProductsList
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
            FeaturedProductRepeater.DataSource = query;
            FeaturedProductRepeater.DataBind();
            for (int i = 0; i < FProduct.Count; i++)
            {
                int ProductId = FProduct[i].ProductId;
                var Product = ProductsList.Where(s => s.Id.Equals(ProductId)).FirstOrDefault();
                ProductsList.Remove(Product);
            }
            NormalProductRepeater.DataSource = ProductsList;
            NormalProductRepeater.DataBind();
        }
        private void GetColor(string Color)
        {
            ProductsList = db.Products.Where(s => s.Color == Color && s.Type != "Fabric" && s.delete == false).ToList();
            FProduct = db.Featureds.ToList();
            var query = from product in ProductsList
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
            FeaturedProductRepeater.DataSource = query;
            FeaturedProductRepeater.DataBind();
            for (int i = 0; i < FProduct.Count; i++)
            {
                int ProductId = FProduct[i].ProductId;
                var Product = ProductsList.Where(s => s.Id.Equals(ProductId)).FirstOrDefault();
                ProductsList.Remove(Product);
            }
            NormalProductRepeater.DataSource = ProductsList;
            NormalProductRepeater.DataBind();
        }
        //Red color not found
        protected void blackColor_Click(object sender, EventArgs e)
        {
            GetColor("Black");
        }

        protected void yellowColor_Click(object sender, EventArgs e)
        {
            GetColor("yellow");
        }

        protected void BlueColor_Click(object sender, EventArgs e)
        {
            GetColor("Blue");
        }

        protected void VioletColor_Click(object sender, EventArgs e)
        {
            GetColor("violet");
        }

        protected void OrangeColor_Click(object sender, EventArgs e)
        {
            GetColor("Orange");
        }

        protected void LightBlueColor_Click(object sender, EventArgs e)
        {
            GetColor("Blue");
        }

        protected void GreenColor_Click(object sender, EventArgs e)
        {
            GetColor("Green");
        }

        protected void DarkGreenColor_Click(object sender, EventArgs e)
        {
            GetColor("Dark_Green");
        }

        protected void WhiteColor_Click(object sender, EventArgs e)
        {
            GetColor("White");
        }

        protected void Yellow_OrangeColor_Click(object sender, EventArgs e)
        {
            GetColor("Yellow_Orange");
        }

        protected void BlueVioletColor_Click(object sender, EventArgs e)
        {
            GetColor("Blue");
        }

        protected void SearchPriceButton_Click(object sender, EventArgs e)
        {
            try
            {
                SearchMethodByPrice();
            }
            catch(Exception ex)
            { 
            
            }
        }

        private void SearchMethodByPrice()
        {
            int Min = Convert.ToInt32(lowValueHiddenField.Value);
            int Max = Convert.ToInt32(maxValueHiddenField.Value);


            ProductsList = db.Products.Where(s => !s.Type.Equals("Fabric") && s.delete == false).ToList();
            FProduct = db.Featureds.ToList();
            var query = from product in ProductsList
                        join Featured in FProduct on
                        product.Id equals Featured.ProductId
                        where product.Price > Min && product.Price < Max
                        select new
                        {
                            Id = product.Id,
                            ImagePath = "Admin/" + product.MainImage,
                            ProductName = product.Name,
                            Price = product.Price,
                            DPrice = product.DiscountedPrice
                        };
            FeaturedProductRepeater.DataSource = query;
            FeaturedProductRepeater.DataBind();
            for (int i = 0; i < FProduct.Count; i++)
            {
                int ProductId = FProduct[i].ProductId;
                var Product = ProductsList.Where(s => s.Id.Equals(ProductId)).FirstOrDefault();
                ProductsList.Remove(Product);
            }
            NormalProductRepeater.DataSource = ProductsList;
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

        protected void NavyBlue_Click(object sender, EventArgs e)
        {
            GetColor("NavyBlue");
        }

        protected void BlackColor_Click1(object sender, EventArgs e)
        {
            GetColor("Black");
        }

        protected void GreyColor_Click(object sender, EventArgs e)
        {
            GetColor("Grey");
        }

        protected void PinkColor_Click(object sender, EventArgs e)
        {
            GetColor("Pink");
        }

        protected void MaroonColor_Click(object sender, EventArgs e)
        {
            GetColor("Maroon");
        }

        protected void PurpleColor_Click(object sender, EventArgs e)
        {
            GetColor("Purple");
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            PageLoadMethod();
        }
    }
}