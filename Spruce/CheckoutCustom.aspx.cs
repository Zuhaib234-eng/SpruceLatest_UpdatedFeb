using Spruce.Models;
using System;
using System.Linq;
using System.Net.Mail;

namespace Spruce
{
    public partial class CheckoutCustom : System.Web.UI.Page
    {
        public CheckoutCustom()
        {
            db = new SpruceEntities();
        }
        private SpruceEntities db;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var UserData = Session["UserData"] as Models.User;
                if (UserData != null)
                {
                    EmailTextbox.Text = UserData.Email;
                    PasswordTextBox.Text = UserData.Password;
                    NameTextBox.Text = UserData.Name;
                    PhoneNoTextBox.Text = UserData.PhoneNo;
                    AddressArea.Text = UserData.Address;

                    var getCustomDesign = Session["customerDesignData"] as Models.CustomDesign;
                    var Product = db.Products.Where(s => s.Id.Equals(getCustomDesign.FabricId)).FirstOrDefault();
                    CollarLabel.Text= getCustomDesign.CollorStyle;
                    CuffLabel.Text = getCustomDesign.CuffStyle;
                    TotalLabel.Text = Product.Price.ToString();
                    FabImage.ImageUrl = "Admin/"+Product.MainImage;
                    ButtonColorLabel.Text = getCustomDesign.BtnColor;
                    PocketLabel.Text = getCustomDesign.PocketStyle;
                    ThreadColorLabel.Text = getCustomDesign.ThreadColor;





                }
            }
        }

        protected void BuyProd_Click(object sender, EventArgs e)
        {
            try
            {
                BuyProduct();
            }
            catch(Exception ex)
            { 
            
            }
        }

        private void BuyProduct()
        {
            var UserData = Session["UserData"] as Models.User;
            if (UserData != null)
            {
                var getCustomDesign = Session["customerDesignData"] as Models.CustomDesign;
                db.CustomDesigns.Add(getCustomDesign);
                db.SaveChanges();


                Models.MadeToMeasure madeToMeasure = Session["MadeToMeasure"] as Models.MadeToMeasure;
                madeToMeasure.CustomOrderId = getCustomDesign.Id;

                db.MadeToMeasures.Add(madeToMeasure);
                db.SaveChanges();


                var getAmount = db.Products.Where(s => s.Id.Equals(getCustomDesign.FabricId)).FirstOrDefault();
                CustomOrder customOrder = new CustomOrder()
                {
                    Status = false,
                    UserId = UserData.Id,
                    Date = DateTime.Now,
                    CustomDesign = getCustomDesign.Id,
                    AdminView = false,
                    Total = getAmount.Price,
                    secondAddress = AddressArea.Text.Trim()
                };
                db.CustomOrders.Add(customOrder);
                db.SaveChanges();
                CheckOutSucceedHiddenField.Value = "success";
                SendEmailShirt(UserData.Email, customOrder.Id);
                Response.Redirect("Fabrics.aspx");
            }
            else
            {
                Response.Redirect("SignIn.aspx");
            }
        }

        private void SendEmailShirt(string Email, int OrderId)
        {
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            MailMessage message = new MailMessage();
            //senderemail
            message.From = new MailAddress("sprucecustomization.pk@gmail.com");
            var getUser = db.Users.Where(s => s.Email.Equals(Email)).FirstOrDefault();
            string Design = string.Format("<div style='width: 600px; font - family: Arial, Helvetica, sans - serif'><div style='display: flex; justify - content: space - between; padding: 20px'><div><img src='www.spruce.pk/Assets/Images/Logo-black.png' style='width: 140px' alt='' /></div><div>Need help? <a href='{0}'>Contact us</a></div></div><div style='padding: 50px; background: lightblue; border: 2px solid #272727; border-bottom: 0;'><h1>Your Order Has Been Placed</h1><div style='margin-top: 20px'><div style=' display: inline-block; padding: 15px 30px; background: #272727; color: #fff; text-decoration: none;'><a href='{1}'>View Your Shirt</a></div></div><div style=' background: #fff; padding: 30px 30px 40px; border: 2px solid #272727; border-top: 0;'><h3>Contact us:</h3><p>Phone No : 0336 3989249 <br>Email : support@spruce.pk </p><p>As they say 'Style is a way to say who you are without having to speak', at Spruce we aim to help you express yourself and your style without having to speak for it. Whether you are seeking an elegant dress shirt for a formal occasion, or simply relaxing with friends and family in style, you can trust us to deliver superior bespoke shirts, with perfect details right from quality fabric to top-notch stitching and designing to suit your style statement. At Spruce, we strive our best to meet the dressing needs of our customers with top-class customer service.</p></div></div>", "www.spruce.pk", "www.spruce.pk/CustomOrderDetails.aspx?UserId=" + getUser.Id + "& OrderId=" + OrderId);
            //recieverEmail            
            message.To.Add(Email);
            message.Subject = "Spruce(Your Order)";
            message.Body = string.Format(Design);  //"Your activation code is " + addnew.ActivationCode.ToString();
            message.IsBodyHtml = true;
            client.UseDefaultCredentials = false;
            client.EnableSsl = true;
            client.Credentials = new System.Net.NetworkCredential("sprucecustomization.pk@gmail.com", "Spruce.pk!@#");
            client.Send(message);
        }
    }
}