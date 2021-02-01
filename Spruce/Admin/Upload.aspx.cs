using Spruce.Models;
using System;
using System.IO;
using System.Linq;
using System.Web;

namespace Spruce.Admin
{
    public partial class Upload : System.Web.UI.Page
    {
        public Upload()
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
                    int newOrders = db.Orders.Where(s => s.AdminView == false).ToList().Count();
                    if (newOrders > 0)
                    {
                        NewOrderHiddenField.Value = newOrders.ToString();
                    }
                    int newCustomOrder = db.CustomOrders.Where(s => s.AdminView == false).ToList().Count();
                    if (newCustomOrder > 0)
                    {
                        CustomOrderHiddenField.Value = newCustomOrder.ToString();
                    }
                    LoginMethod();
                }
                catch(Exception ex)
                { 
                
                }
            }
        }

        private void LoginMethod()
        {
            var chkLogin = Session["AdminData"];
            if (chkLogin != null)
            {

            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void ProceedButton_Click(object sender, EventArgs e)
        {            
            try
            {
                ProceedMethod();
                ClearText();
            }
            catch(Exception ex)
            { 
            
            }
        }
        private void ClearText()
        {
            NameTextbox.Text = "";
            DiscountedPriceTextBox.Text = "";
            PriceTextbox.Text = "";
            QuantityTextbox.Text = "";
            DescriptionTextbox.Text = "";
        }
        private void ProceedMethod()
        {
            bool IsFileNotSupported = false;
            var Product = new Product()
            {
                Description = DescriptionTextbox.Text.Trim(),
                DiscountedPrice = Convert.ToInt32(DiscountedPriceTextBox.Text),
                Name = NameTextbox.Text.Trim(),
                Price = Convert.ToInt32(PriceTextbox.Text),
                Quantity = Convert.ToInt32(QuantityTextbox.Text),
                Type = TypeDropdownList.SelectedValue,
                sold = false,
                Category = CategoryHiddenField.Value,
                Color = ColorDropDownList.SelectedValue
            };
            HttpPostedFile FrontImage = FrontImageFileUpload.PostedFile;
            string filePath = Server.MapPath("Images/");
            string fileName = Path.GetFileName(FrontImage.FileName);
            string extension = Path.GetExtension(fileName);
            string path = string.Empty;
            if (FrontImageFileUpload.HasFile == true)
            {
                if (extension.ToLower() == ".png" || extension.ToLower() == ".jpg" || extension.ToLower() == ".jpeg")
                {
                    FrontImageFileUpload.SaveAs(filePath + fileName);
                    path = "Images/" + fileName;
                    Product.MainImage = path;
                }
                else
                {
                    IsFileNotSupported = true;
                }
            }
            //Get Multiple Images
            if (ImagesFileUpload.HasFiles)
            {

                foreach (HttpPostedFile uploadedFile in ImagesFileUpload.PostedFiles)
                {
                    fileName = Path.GetFileName(uploadedFile.FileName);
                    extension = Path.GetExtension(fileName);
                    path = string.Empty;
                    if (extension.ToLower() == ".png" || extension.ToLower() == ".jpg" || extension.ToLower() == ".jpeg")
                    {
                        uploadedFile.SaveAs(Path.Combine(Server.MapPath("Images/"), uploadedFile.FileName));
                        Product.ImageGallery += String.Format("{0},", fileName);
                    }
                    else
                    {
                        IsFileNotSupported = true;
                    }
                }
            }
            if (IsFileNotSupported == false)
            {
                Product.delete = false;
                db.Products.Add(Product);
                db.SaveChanges();
                if (FeaturedCheckBox.Checked)
                {
                    Featured featured = new Featured()
                    {
                        ProductId = Product.Id
                    };
                    db.Featureds.Add(featured);
                    db.SaveChanges();
                }
                ProductNotificationHiddenField.Value = "Success";
            }
            else
            {
                ProductNotificationHiddenField.Value = "Image format is not valid";
            }
        }
    }
}