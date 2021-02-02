using Spruce.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;

namespace Spruce
{
    public partial class Checkout : System.Web.UI.Page
    {
        public Checkout()
        {
            db = new SpruceEntities();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                var getQuantity = Session["singleQuantity"];
                if (getQuantity != null)
                { 
                   
                }

                PageLoadMethod();
            }
            catch(Exception ex)
            { 
            
            }
        }

        private void PageLoadMethod()
        {
     
                if (Session["CartSession"] == null)
                {
                    Response.Redirect("Index.aspx");
                }
                if (Session["UserData"] != null)
                {
                    var User = Session["UserData"] as Models.User;
                    EmailTextbox.Text = User.Email;
                    PhoneNoTextBox.Text = User.PhoneNo;
                    AddressAreaTextBox.Text = User.Address;
                    NameTextBox.Text = User.Name;
                    PasswordTextBox.Text = User.Password;
                }
                List<Models.Product> products = Session["CartSession"] as List<Models.Product>;
                double Total = 0;
                for (int i = 0; i < products.Count; i++)
                {
                    double Quantity = products[i].Quantity;
                    double Price = products[i].Price;

                    Total += (Quantity) * (Price);
                }
                TotalLabel.Text = Total.ToString();

        }
        private SpruceEntities db;
        protected void BuyProd_Click(object sender, EventArgs e)
        {
                BuyProductsMethod();
                CheckOutSucceedHiddenField.Value = "success";

        }

        private void BuyProductsMethod()
        {
            if (Session["CartSession"] != null)
            {
                
                if (Session["UserData"] != null)
                {
                    var User = Session["UserData"] as Models.User;
                    Order order = new Order()
                    {
                        Date = DateTime.Now,
                        Status = false,
                        Total = Convert.ToInt32(TotalLabel.Text.Trim()),
                        UserId = User.Id,
                        AdminView = false,
                        secondAddress = User.Address
                    };
                    if (SameAs.Checked == false)
                    {
                        order.secondAddress = AddressAreaTextBox.Text.Trim();
                    }
                    db.Orders.Add(order);
                    db.SaveChanges();
                    List<Models.Product> CartData = Session["CartSession"] as List<Models.Product>;
                    for (int i = 0; i < CartData.Count; i++)
                    {
                        Models.Cart cart = new Models.Cart()
                        {
                            ProductId = CartData[i].Id,
                            OrderId = order.Id,
                            Quantity = CartData[i].Quantity
                        };
                        //Product Quantity minus
                        var Product = db.Products.Where(s => s.Id.Equals(cart.ProductId)).FirstOrDefault();
                        Product.Quantity = Product.Quantity - Convert.ToInt32(cart.Quantity);
                        db.Entry(Product).State = System.Data.Entity.EntityState.Modified;
                        db.SaveChanges();
                        //save cart after that
                        db.Carts.Add(cart);
                        db.SaveChanges();
                        SendEmailShirt(User.Email, order.Id);
                    }
                }
                else
                {
                    string Email = EmailTextbox.Text;
                    var User = db.Users.Where(a => a.Email.Equals(Email)).FirstOrDefault();
                    if (User != null)
                    {
                        Order order = new Order()
                        {
                            Date = DateTime.Now,
                            Status = false,
                            Total = Convert.ToInt32(TotalLabel.Text.Trim()),
                            UserId = User.Id,
                            AdminView = false,
                            secondAddress = AddressAreaTextBox.Text.Trim()
                        };
                        if (SameAs.Checked == false)
                        {
                            order.secondAddress = AddressAreaTextBox.Text.Trim();
                        }
                        db.Orders.Add(order);
                        db.SaveChanges();
                        List<Models.Product> CartData = Session["CartSession"] as List<Models.Product>;
                        for (int i = 0; i < CartData.Count; i++)
                        {
                            Models.Cart cart = new Models.Cart()
                            {
                                ProductId = CartData[i].Id,
                                OrderId = order.Id,
                                Quantity = CartData[i].Quantity
                            };

                            //Product Quantity minus
                            var Product = db.Products.Where(s => s.Id.Equals(cart.ProductId)).FirstOrDefault();
                            Product.Quantity = Product.Quantity - Convert.ToInt32(cart.Quantity);
                            db.Entry(Product).State = System.Data.Entity.EntityState.Modified;
                            db.SaveChanges();
                            //save cart after that
                            db.Carts.Add(cart);
                            db.SaveChanges();
                            SendEmailShirt(User.Email, order.Id);
                        }
                    }
                    else
                    {
                        var NewUser = new Models.User()
                        {
                            Email = EmailTextbox.Text.Trim(),
                            Address = AddressAreaTextBox.Text.Trim(),
                            PhoneNo = PhoneNoTextBox.Text.Trim(),
                            Password = PasswordTextBox.Text.Trim(),
                            Name = NameTextBox.Text.Trim()
                        };
                        db.Users.Add(NewUser);
                        Order order = new Order()
                        {
                            Date = DateTime.Now,
                            Status = false,
                            Total = Convert.ToInt32(TotalLabel.Text),
                            UserId = NewUser.Id,
                            AdminView = false,
                             secondAddress = AddressAreaTextBox.Text.Trim()
                        };
                        if (SameAs.Checked == false)
                        {
                            order.secondAddress = AddressAreaTextBox.Text.Trim();
                        }
                        db.Orders.Add(order);
                        db.SaveChanges();
                        List<Models.Product> CartData = Session["CartSession"] as List<Models.Product>;
                        for (int i = 0; i < CartData.Count; i++)
                        {
                            Models.Cart cart = new Models.Cart()
                            {
                                ProductId = CartData[i].Id,
                                OrderId = order.Id,
                                Quantity = CartData[i].Quantity
                            };
                            //Product Quantity minus
                            var Product = db.Products.Where(s => s.Id.Equals(cart.ProductId)).FirstOrDefault();
                            Product.Quantity = Product.Quantity - Convert.ToInt32(cart.Quantity);
                            db.Entry(Product).State = System.Data.Entity.EntityState.Modified;
                            db.SaveChanges();
                            //save cart after that
                            db.Carts.Add(cart);
                            db.SaveChanges();
                            SendEmailShirt(NewUser.Email, order.Id);
                        }
                    }
                }
            }            
            Session["CartSession"] = null;
            Response.Redirect("Products.aspx");
        }
        private void SendEmailShirt(string Email,int OrderId)
        {
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            MailMessage message = new MailMessage();
            //senderemail
            message.From = new MailAddress("sprucecustomization.pk@gmail.com");
            var getUser = db.Users.Where(s => s.Email.Equals(Email)).FirstOrDefault();
            string Design = string.Format("<div style='width: 600px; font - family: Arial, Helvetica, sans - serif'><div style='display: flex; justify - content: space - between; padding: 20px'><div><img src='www.spruce.pk/Assets/Images/Logo-black.png' style='width: 140px' alt='' /></div><div>Need help? <a href='{0}'>Contact us</a></div></div><div style='padding: 50px; background: lightblue; border: 2px solid #272727; border-bottom: 0;'><h1>Your Order Has Been Placed</h1><div style='margin-top: 20px'><div style=' display: inline-block; padding: 15px 30px; background: #272727; color: #fff; text-decoration: none;'><a href='{1}'>View Your Shirt</a></div></div><div style=' background: #fff; padding: 30px 30px 40px; border: 2px solid #272727; border-top: 0;'><h3>Contact us:</h3><p>Phone No : 0336 3989249 <br>Email : support@spruce.pk </p><p>As they say 'Style is a way to say who you are without having to speak', at Spruce we aim to help you express yourself and your style without having to speak for it. Whether you are seeking an elegant dress shirt for a formal occasion, or simply relaxing with friends and family in style, you can trust us to deliver superior bespoke shirts, with perfect details right from quality fabric to top-notch stitching and designing to suit your style statement. At Spruce, we strive our best to meet the dressing needs of our customers with top-class customer service.</p></div></div>", "www.spruce.pk", "www.spruce.pk/ProductOrderDetails.aspx?UserId="+ getUser.Id +"& OrderId=" +OrderId);
            //recieverEmail            
            message.To.Add(Email);
            message.Subject = "Spruce(Your Order)";
            message.Body = string.Format(Design);  //"Your activation code is " + addnew.ActivationCode.ToString();
            message.IsBodyHtml = true;
            client.UseDefaultCredentials = false;
            client.EnableSsl = true;
            client.Credentials = new System.Net.NetworkCredential("sprucecustomization.pk@gmail.com", "Spruce@2020");
            client.Send(message);
        }
    }
}