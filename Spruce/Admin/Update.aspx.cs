using Spruce.Models;
using System;
using System.Linq;

namespace Spruce.Admin
{
    public partial class Update : System.Web.UI.Page
    {
        public Update()
        {
            db = new SpruceEntities();
        }
        private SpruceEntities db;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int ProductId = Convert.ToInt32(Request.QueryString["ProductId"]);
                var Product = db.Products.Where(s => s.Id.Equals(ProductId)).FirstOrDefault();
                NameTextbox.Text = Product.Name;
                DiscountedPriceTextBox.Text = Product.DiscountedPrice.ToString();
                PriceTextbox.Text = Product.Price.ToString();
                QuantityTextbox.Text = Product.Quantity.ToString();
                TypeDropdownList.SelectedValue = Product.Type;
                ColorSelectHiddenField.Value = Product.Color;
                DescriptionTextbox.Text = Product.Description;
            }
        }

        protected void ProceedButton_Click(object sender, EventArgs e)
        {
            int ProductId = Convert.ToInt32(Request.QueryString["ProductId"]);
            var Product = db.Products.Where(s => s.Id.Equals(ProductId)).FirstOrDefault();
            Product.Name = NameTextbox.Text;
            Product.DiscountedPrice = Convert.ToInt32(DiscountedPriceTextBox.Text);
            Product.Price = Convert.ToInt32(PriceTextbox.Text.Trim());
            Product.Quantity = Convert.ToInt32(QuantityTextbox.Text.Trim());
            Product.Type = TypeDropdownList.SelectedValue;
            Product.Color = ColorSelectHiddenField.Value;
            Product.Description = DescriptionTextbox.Text;
            db.Entry(Product).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }
    }
}