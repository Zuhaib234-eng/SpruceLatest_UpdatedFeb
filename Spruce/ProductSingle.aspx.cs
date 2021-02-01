using Spruce.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace Spruce
{
    public partial class ProductSingle : System.Web.UI.Page
    {
        public ProductSingle()
        {
            db = new SpruceEntities();
            GalleryImages = new List<string>();
            Relatedproducts = new List<Product>(12);
            products = new List<Product>();
        }
        private SpruceEntities db;
        static List<string> GalleryImages;
        private List<Product> Relatedproducts;
        private List<Product> products;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //CartMethod();
                PageLoadMethod();
            }
        }

        private void PageLoadMethod()
        {
            int productId = Convert.ToInt32(Request.QueryString["ProductId"]);
            var product = db.Products.Where(s => s.Id.Equals(productId)).FirstOrDefault();
            ProductSingleMainImage.ImageUrl = string.Format("Admin/{0}", product.MainImage);
            string productImage = product.ImageGallery;
            string[] Images = productImage.Split(',');
            for (int i = 0; i < Images.Length - 1; i++)
            {
                GalleryImages.Add(Images[i]);
            }
            ImageGalleryRepeater.DataSource = from image in GalleryImages
                                              select new
                                              {
                                                  Image = string.Format("Admin/Images/{0}", image)
                                              };
            ImageGalleryRepeater.DataBind();
            NameLabel.Text = product.Name;
            CategoryLabel.Text = product.Category;
            DescriptionLabel.Text = product.Description;
            if (product.DiscountedPrice > 0)
            {
                PriceLabel.Text = product.DiscountedPrice.ToString() + "/-";
            }
            else
            {
                PriceLabel.Text = product.Price.ToString() + "/-";
            }
            var User = Session["UserData"] as Models.User;
            if (User != null)
            {
                //EmailTextBox.Text = User.Email;
            }
            Random NumberGenerator = new Random();
            List<Models.Product> randomProducts = new List<Product>(14);
            var Products = db.Products.Where(s => s.delete == false).ToList();
            for (int i = 0; i < 14; i++)
            {
                int CounterLimit = db.Products.Where(s => s.Category.Equals(product.Category) && s.delete == false).Count();
                int Randomers = NumberGenerator.Next(0, CounterLimit);

                randomProducts.Add(Products[Randomers]);

            }
            var randomeRs = from a in randomProducts
                            select new
                            {
                                Id = a.Id,
                                Image = string.Format("Admin/{0}", a.MainImage),
                                ProductName = a.Name,
                                DPrice = a.DiscountedPrice,
                                Price = a.Price
                            };
            RelatedProductsRepeater.DataSource = randomeRs.Distinct().Take(12);
            RelatedProductsRepeater.DataBind();
        }

        private void CartMethod()
        {
            //Counter for items
            if (Session["CartSession"] == null)
            {
                int productIdforcounter = Convert.ToInt32(Request.QueryString["ProductId"]);
                Models.Product getProduct = db.Products.Where(s => s.Id.Equals(productIdforcounter)).FirstOrDefault();
                products.Add(getProduct);
                Session["CartSession"] = products;
            }
            else
            {
                products = Session["CartSession"] as List<Product>;
                int getProduct = Convert.ToInt32(Request.QueryString["ProductId"]);
                var chkproduct = products.Where(s => s.Id.Equals(getProduct)).FirstOrDefault();
                if (chkproduct == null)
                {
                    Models.Product getProductById = db.Products.Where(s => s.Id.Equals(getProduct)).FirstOrDefault();
                    products.Add(getProductById);
                    Session["CartSession"] = products;
                }
                else
                {
                    Response.Write("<script>alert('This product is already in cart')</script>");
                }
            }
            CounterHiddenField.Value = products.Count().ToString();
        }

        protected void RelatedProductsRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void BuynowButton_Click(object sender, EventArgs e)
        {

            string Quantity = QuantityHiddenField.Value;
            Session["singleQuantity"] = Quantity;
            ButNowMethod();
        }

        private void ButNowMethod()
        {
            AddToCartMethod();
            Response.Redirect("Cart.aspx");
        }

        protected void AddToCartButton_Click(object sender, EventArgs e)
        {
            try
            {
                AddToCartMethod();
            }
            catch (Exception ex)
            {

            }
        }

        private void AddToCartMethod()
        {
            if (Session["CartSession"] == null)
            {
                int productId = Convert.ToInt32(Request.QueryString["ProductId"]);
                Models.Product product = db.Products.Where(s => s.Id.Equals(productId)).FirstOrDefault();
                products.Add(product);
                Session["CartSession"] = products;
            }
            else
            {
                products = Session["CartSession"] as List<Product>;
                int productId = Convert.ToInt32(Request.QueryString["ProductId"]);
                var chkproduct = products.Where(s => s.Id.Equals(productId)).FirstOrDefault();
                if (chkproduct == null)
                {
                    Models.Product product = db.Products.Where(s => s.Id.Equals(productId)).FirstOrDefault();
                    products.Add(product);
                    Session["CartSession"] = products;
                }
                else
                {
                    Response.Write("<script>alert('This product is already in cart')</script>");
                }
            }
            CounterHiddenField.Value = products.Count().ToString();
        }

        protected void ReviewButton_Click(object sender, EventArgs e)
        {
            try
            {
                ReviewMethod();
            }
            catch (Exception ex)
            {

            }
        }

        private void ReviewMethod()
        {
            /*if (ReviewTextbox.Text != "" || EmailTextBox.Text != "")
            {
                int productId = Convert.ToInt32(Request.QueryString["ProductId"]);
                Review review = new Review()
                {
                    ProductId = productId,
                    Review1 = ReviewTextbox.Text.Trim(),
                    Email = EmailTextBox.Text.Trim()
                };
                db.Reviews.Add(review);
                db.SaveChanges();
                ReviewHiddenField.Value = "success";
            }
            else
            {
                ReviewHiddenField.Value = "fail";
            }*/
        }
    }
}