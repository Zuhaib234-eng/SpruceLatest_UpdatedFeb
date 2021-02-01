using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;

namespace Spruce
{
    public partial class Cart : System.Web.UI.Page
    {
        public Cart()
        {

        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    string quantity = Session["singleQuantity"] as string;
                    if (quantity != "")
                    {
                        int q2 = Convert.ToInt32(quantity);
                        if (q2 > 0)
                        {
                         QuantityHiddenField.Value = q2.ToString();
                        }
                    }
                    CartSession();
                    CartCounter();
                }
                catch (Exception ex)
                {

                }
            }
        }

        private void CartSession()
        {
            if (Session["CartSession"] != null)
            {
                List<Models.Product> products = Session["CartSession"] as List<Models.Product>;
                for (int i = 0; i < products.Count; i++)
                {
                    if (products[i].DiscountedPrice > 0)
                    {
                        products[i].Price = Convert.ToInt32(products[i].DiscountedPrice);
                    }
                }
                ProductRepeater.DataSource = from product in products
                                             select new
                                             {
                                                 Id = product.Id,
                                                 Image = string.Format("Admin/{0}", product.MainImage),
                                                 ProductName = product.Name,
                                                 Description = product.Description,
                                                 Price = product.Price
                                             };
                ProductRepeater.DataBind();
                int Total = 0;
                for (int i = 0; i < products.Count; i++)
                {
                    Total += products[i].Price;
                }
                TotalLabel.Text = Total.ToString();
                //                SubTotalLabel.Text = Total.ToString();
            }
            else
            {
                RemoveAllCartItems.Visible = false;
                //              SubTotalLabel.Text = "0";
                TotalLabel.Text = "0";
            }
        }

        private void CartCounter()
        {
            if (Session["CartSession"] != null)
            {
                var products = Session["CartSession"] as List<Models.Product>;
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

        protected void RemoveAllCartItems_Click(object sender, EventArgs e)
        {
            try
            {
                RemovecartItem();
            }
            catch (Exception ex)
            {

            }
        }

        private void RemovecartItem()
        {
            Session.Remove("CartSession");
            ProductRepeater.DataSource = null;
            ProductRepeater.DataBind();
        }

        protected void ProductRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            try
            {
                DeleteCartItem(e);
            }
            catch (Exception ex)
            {

            }
        }

        private void DeleteCartItem(RepeaterCommandEventArgs e)
        {
            try
            {
                DeleteProductMethod(e);
            }
            catch (Exception ex)
            {

            }
        }

        private void DeleteProductMethod(RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "DeleteProduct")
            {
                int productId = Convert.ToInt32(e.CommandArgument);
                List<Models.Product> products = Session["CartSession"] as List<Models.Product>;
                var Product = products.Where(s => s.Id.Equals(productId)).FirstOrDefault();
                products.Remove(Product);
                Session["CartSession"] = products;
                ProductRepeater.DataSource = from product in products
                                             select new
                                             {
                                                 Id = product.Id,
                                                 Image = string.Format("Admin/{0}", product.MainImage),
                                                 ProductName = product.Name,
                                                 Description = product.Description,
                                                 Price = product.Price
                                             };
                ProductRepeater.DataBind();
                Response.Redirect("Cart.aspx");
            }
        }

        protected void prToCheckoutBtn_Click(object sender, EventArgs e)
        {
            try
            {
                ProcceedToCheckOutMethod();
            }
            catch (Exception ex)
            {

            }
        }

        private void ProcceedToCheckOutMethod()
        {
            if (Session["CartSession"] != null)
            {
                List<Models.Product> products = Session["CartSession"] as List<Models.Product>;
                string[] arr = CartQuantityHiddenField.Value.ToString().Split(',');
                for (int i = 0; i < products.Count; i++)
                {
                    products[i].Quantity = Convert.ToInt32(arr[i]);
                }
                Session["CartSession"] = products;
            }
            Response.Redirect("Checkout");
        }

        protected void ctToSopping_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Redirect("Index.aspx");
            }
            catch (Exception ex)
            {

            }
        }
    }
}