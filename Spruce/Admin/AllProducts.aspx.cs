using Spruce.Models;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace Spruce.Admin
{
    public partial class AllProducts : System.Web.UI.Page
    {
        public AllProducts()
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
                    PageLoadMethod();
                }
                catch (Exception ex)
                {

                }
            }
        }

        private void PageLoadMethod()
        {
            var GetAuthentication = Session["AdminData"] as Models.AdminLog;
            if (GetAuthentication != null)
            {
                int newOrders = db.Orders.Where(s => s.AdminView == false).ToList().Count();
                int newCustomOrder = db.CustomOrders.Where(s => s.AdminView == false).ToList().Count();

                if (newOrders > 0)
                {
                    NewOrderHiddenField.Value = newOrders.ToString();
                }
                if (newCustomOrder > 0)
                {
                    CustomOrderHiddenField.Value = newCustomOrder.ToString();
                }
                ProductRepeater.DataSource = db.Products.Where(s => s.delete == false).OrderByDescending(s=>s.Id).ToList();
                ProductRepeater.DataBind();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void ProductRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "View Product")
                {
                    Response.Redirect("../ProductSingle.aspx?ProductId=" + e.CommandArgument);
                }
                else if (e.CommandName == "Update")
                {
                    Response.Redirect("Update.aspx?ProductId=" + e.CommandArgument);
                }
                else
                {
                    int Id = Convert.ToInt32(e.CommandArgument);
                    var product = db.Products.Where(s => s.Id.Equals(Id)).FirstOrDefault();
                    product.delete = true;
                    db.Entry(product).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                    CategoryIndexChange();
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void CategoryDropdownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                CategoryIndexChange();
            }
            catch (Exception ex)
            {

            }
        }

        private void CategoryIndexChange()
        {
            var Products = db.Products.Where(s => s.delete == false).ToList();
            var FProduct = db.Featureds.ToList();
            var query = from product in Products
                        join Featured in FProduct on
                        product.Id equals Featured.ProductId
                        select product;
            var getvalue = CategoryDropdownList.SelectedValue;
            if (getvalue == "Featured")
            {
                ProductRepeater.DataSource = query;
                ProductRepeater.DataBind();
            }
            else if (getvalue == "Normal")
            {
                for (int i = 0; i < FProduct.Count; i++)
                {
                    int ProductId = FProduct[i].ProductId;
                    var Product = Products.Where(s => s.Id.Equals(ProductId)).FirstOrDefault();
                    Products.Remove(Product);
                }
                ProductRepeater.DataSource = Products;
                ProductRepeater.DataBind();
            }
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            try
            {
                ProductRepeater.DataSource = db.Products.Where(s => s.Name.Equals(SearchTextbox.Text)).ToList();
                ProductRepeater.DataBind();
            }
            catch (Exception ex)
            {

            }
        }
    }
}