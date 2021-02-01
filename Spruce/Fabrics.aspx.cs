using Spruce.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace Spruce
{
    public partial class Fabrics : System.Web.UI.Page
    {
        public Fabrics()
        {
            products = new List<Product>();
            db = new SpruceEntities();
            ProductsList = new List<Product>();
            FProduct = new List<Featured>();
        }
        private SpruceEntities db;
        static List<Models.Product> ProductsList;
        static List<Models.Featured> FProduct;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    PageLoadMethod();
                }
                catch (Exception ex)
                {

                }
            }

        }

        private void PageLoadMethod()
        {
            ProductsList = db.Products.Where(s => s.Type.Equals("Fabric") && s.delete == false).ToList();
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
                NormalProductsR(e);
            }
            catch (Exception ex)
            {

            }
        }

        private void NormalProductsR(RepeaterCommandEventArgs e)
        {
            var command = e.CommandName;
            if (command == "GoToProduct")
            {
                Response.Redirect("FabricSingle.aspx?ProductId=" + e.CommandArgument);
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
                FeaturedMethod(e);
            }
            catch (Exception ex)
            {

            }
        }

        private void FeaturedMethod(RepeaterCommandEventArgs e)
        {
            var command = e.CommandName;
            if (command == "GoToProduct")
            {
                Response.Redirect("FabricSingle.aspx?ProductId=" + e.CommandArgument);
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

        public void CheckBox(string category)
        {
            ProductsList = db.Products.Where(s => s.Type.Equals("Fabric") && s.Category.Equals(category) && s.delete == false).ToList();
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

        protected void blackColor_Click(object sender, EventArgs e)
        {
            ColorMethod("Black");
        }

        protected void yellowColor_Click(object sender, EventArgs e)
        {
            ColorMethod("yellow");
        }

        protected void RedColorButton_Click(object sender, EventArgs e)
        {
            ColorMethod("red");
        }

        protected void BlueColor_Click(object sender, EventArgs e)
        {
            ColorMethod("Blue");
        }

        protected void OrangeColor_Click(object sender, EventArgs e)
        {
            ColorMethod("Orange");
        }

        protected void LightBlueColor_Click(object sender, EventArgs e)
        {
            ColorMethod("Blue");
        }

        protected void GreenColor_Click(object sender, EventArgs e)
        {
            ColorMethod("Green");
        }

        protected void DarkGreenColor_Click(object sender, EventArgs e)
        {
            ColorMethod("Dark_Green");
        }

        protected void WhiteColor_Click(object sender, EventArgs e)
        {
            ColorMethod("White");
        }

        protected void Yellow_OrangeColor_Click(object sender, EventArgs e)
        {
            ColorMethod("Yellow_Orange");
        }

        protected void BlueVioletColor_Click(object sender, EventArgs e)
        {
            ColorMethod("Blue");
        }
        private void ColorMethod(string Color)
        {
            ProductsList = db.Products.Where(s => s.Type.Equals("Fabric") && s.Color.Equals(Color) && s.delete == false).ToList();
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

        protected void NavyBlueButton_Click(object sender, EventArgs e)
        {
            ColorMethod("NavyBlue");
        }

        protected void GreyButton_Click(object sender, EventArgs e)
        {
            ColorMethod("Grey");
        }

        protected void PinkButton_Click(object sender, EventArgs e)
        {
            ColorMethod("Pink");
        }

        protected void MaroonButton_Click(object sender, EventArgs e)
        {
            ColorMethod("Maroon");
        }

        protected void PurpleButton_Click(object sender, EventArgs e)
        {
            ColorMethod("Purple");
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            PageLoadMethod();
        }
    }
}