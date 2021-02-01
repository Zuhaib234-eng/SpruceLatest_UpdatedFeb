using Spruce.Models;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Spruce
{
    public partial class FabricSingle : System.Web.UI.Page
    {
        public FabricSingle()
        {
            db = new SpruceEntities();
            GalleryImages = new List<string>();
        }
        private SpruceEntities db;
        static List<string> GalleryImages;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                    PageLoadMethod();
            }
        }

        private void PageLoadMethod()
        {
            int productId = Convert.ToInt32(Request.QueryString["ProductId"]);
            var product = db.Products.Where(s => s.Id.Equals(productId)).FirstOrDefault();
            ProductSingleMainImage.ImageUrl = string.Format("Admin/{0}", product.MainImage);
            string productImage = product.ImageGallery;
            //string[] Images = productImage.Split(',');
            //for (int i = 0; i < Images.Length - 1; i++)
            //{
            //    GalleryImages.Add(Images[i]);
            //}
            /*ImageGalleryRepeater.DataSource = from image in GalleryImages
                                              select new
                                              {
                                                  Image = string.Format("Admin/Images/{0}", image)
                                              };
            ImageGalleryRepeater.DataBind();*/
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
           //     EmailTextBox.Text = User.Email;
            }
            Random NumberGenerator = new Random();
            List<Models.Product> randomProducts = new List<Product>(14);
            var Products = db.Products.Where(s=>s.delete == false).ToList();
            for (int i = 0; i < 14; i++)
            {
                int CounterLimit = db.Products.Where(s => s.Category.Equals(product.Category)).Count();
                int Randomers = NumberGenerator.Next(0, CounterLimit);
                randomProducts.Add(Products[Randomers]);
            }
            var ranDomers = from a in randomProducts
                            select new
                            {
                                Id = a.Id,
                                Image = string.Format("Admin/{0}", a.MainImage),
                                ProductName = a.Name,
                                DPrice = a.DiscountedPrice,
                                Price = a.Price
                            };
            RelatedProductsRepeater.DataSource = ranDomers.Distinct().Take(12);
            RelatedProductsRepeater.DataBind();
        }

        protected void RelatedProductsRepeater_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
        {

        }

        protected void RedirectToCustomDesigner_Click(object sender, EventArgs e)
        {
            try
            {
                RedirectCustomDesignMethod();
            }
            catch(Exception ex)
            { 
            
            }
        }

        private void RedirectCustomDesignMethod()
        {
            var checkUserLogin = Session["UserData"] as Models.User;
            if (checkUserLogin != null)
            {
                string FabricID = Request.QueryString["ProductId"];
                Response.Redirect("CustomDesigner.aspx?FabricID=" + FabricID);
            }
            else
            {
                ReviewHiddenField.Value = "Not Login";
            }
        }

        protected void SendReviewButton_Click(object sender, EventArgs e)
        {
            try
            {
            //    SendReviewMethod();
            }
            catch(Exception ex)
            { 
            
            }
        }

       /* private void SendReviewMethod()
        {
            if (ReviewTextbox.Text != "" || EmailTextBox.Text != "")
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
            }
        }*/
    }
}