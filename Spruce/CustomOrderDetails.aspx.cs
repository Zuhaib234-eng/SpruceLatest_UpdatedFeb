using Spruce.Models;
using System;
using System.Linq;

namespace Spruce.User
{
    public partial class CustomOrderDetails : System.Web.UI.Page
    {
        public CustomOrderDetails()
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
                    var User = Session["UserData"] as Models.User;
                    if (User != null || Request.QueryString["UserId"] != null)
                    {
                        PageLoadMethod();
                        LoginFromGmail();
                    }
                }
                catch(Exception ex)
                { 
                
                }
            }
        }

        private void PageLoadMethod()
        {
            var getUser = Session["UserData"] as Models.User;
            if (getUser != null)
            {
                int Id = Convert.ToInt32(Request["OrderId"]);
                var customOrder = db.CustomOrders.Where(s => s.Id.Equals(Id)).FirstOrDefault();
                var Order = db.CustomOrders.Where(s => s.Id.Equals(Id)).FirstOrDefault();
                var User = db.Users.Where(o => o.Id.Equals(Order.UserId)).FirstOrDefault();
                var OrderDetail = db.CustomDesigns.Where(s => s.Id.Equals(Order.CustomDesign)).FirstOrDefault();
                var Sizes = db.MadeToMeasures.Where(s => s.Id.Equals(OrderDetail.Id)).FirstOrDefault();
                var fabric = db.Products.Where(s => s.Id.Equals(OrderDetail.FabricId)).FirstOrDefault();
                DateLabel.Text = Order.Date.ToLongDateString();
                NameLabel.Text = User.Name.ToString();
                EmailLabel.Text = User.Email.ToString();
                NoLabel.Text = User.PhoneNo.ToString();
                AddressLabel.Text = User.Address.ToString();
                CollarSizeLabel.Text = Sizes.Collar;
                ShoulderLabel.Text = Sizes.Shoulder;
                ChestLabel.Text = Sizes.Chest;
                WaistLabel.Text = Sizes.Waist;
                SleeveLengthLabel.Text = Sizes.SleeveLength;
                ShirtLengthLabel.Text = Sizes.ShirtLength;
                FabricImage.ImageUrl = string.Format("Admin/{0}", fabric.MainImage);
                FabricNameLabel.Text = fabric.Name;
                CostLabel.Text = fabric.Price.ToString();
                TotalLabel.Text = fabric.Price.ToString();
                TotalLabel.Text = fabric.Price.ToString();
                //CustomImage.ImageUrl = string.Format("Admin/OrderImages/{0}", OrderDetail.DesignImage);
                CollarImage.ImageUrl = string.Format("Admin/OrderImages/{0}.png", OrderDetail.CollorStyle);
                CuffImage.ImageUrl = string.Format("Admin/OrderImages/{0}.png", OrderDetail.CuffStyle);
                ButtonImage.ImageUrl = string.Format("Admin/OrderImages/{0}.png", OrderDetail.ButtonStyle);
                PocketImage.ImageUrl = string.Format("Admin/OrderImages/{0}.png", OrderDetail.PocketStyle);



                if (OrderDetail.BtnColor == "pink")
                {
                    ButtonColorLabel.Text = "Pink Color";
                    ButtonColor.BackColor = System.Drawing.Color.Pink;
                    ButtonColor.Enabled = false;
                }
                else if (OrderDetail.BtnColor == "green")
                {
                    ButtonColorLabel.Text = "Green Color";
                    ButtonColor.BackColor = System.Drawing.Color.Green;
                    ButtonColor.Enabled = false;
                }
                else if (OrderDetail.BtnColor == "navyBlue")
                {
                    ButtonColorLabel.Text = "Navy Blue Color";
                    ButtonColor.BackColor = System.Drawing.Color.Blue;
                    ButtonColor.Enabled = false;
                }
                else if (OrderDetail.BtnColor == "white")
                {
                    ButtonColorLabel.Text = "White Color";
                    ButtonColor.BackColor = System.Drawing.Color.White;
                    ButtonColor.Enabled = false;
                }
                else if (OrderDetail.BtnColor == "blackColor")
                {
                    ButtonColorLabel.Text = "Black Color";
                    ButtonColor.BackColor = System.Drawing.Color.Black;
                    ButtonColor.Enabled = false;
                }
                else if (OrderDetail.BtnColor == "lightblue")
                {
                    ButtonColorLabel.Text = "light blue Color";
                    ButtonColor.BackColor = System.Drawing.Color.LightBlue;
                    ButtonColor.Enabled = false;
                }
                else
                {
                    ButtonColor.Visible = false;
                }
                if (OrderDetail.ThreadColor == "blackColor")
                {
                    ThreadColorLabel.Text = "Black Color";
                    ThreadColorButton.BackColor = System.Drawing.Color.Black;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "yellow")
                {
                    ThreadColorLabel.Text = "Yellow Color";
                    ThreadColorButton.BackColor = System.Drawing.Color.Yellow;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "red")
                {
                    ThreadColorLabel.Text = "Red Color";
                    ThreadColorButton.BackColor = System.Drawing.Color.Red;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "BlueColor")
                {
                    ThreadColorLabel.Text = "Blue Color";
                    ThreadColorButton.BackColor = System.Drawing.Color.Blue;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "violet")
                {
                    ThreadColorLabel.Text = "Violet Color";
                    ThreadColorButton.BackColor = System.Drawing.Color.Violet;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "Orange")
                {
                    ThreadColorLabel.Text = "Orange Color";
                    ThreadColorButton.BackColor = System.Drawing.Color.Orange;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "Light_blue")
                {
                    ThreadColorLabel.Text = "Light Blue";
                    ThreadColorButton.BackColor = System.Drawing.Color.LightBlue;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "Green")
                {
                    ThreadColorLabel.Text = "Green Color";
                    ThreadColorButton.BackColor = System.Drawing.Color.LightGreen;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "Dark_Green")
                {
                    ThreadColorLabel.Text = "Dark Green";
                    ThreadColorButton.BackColor = System.Drawing.Color.DarkGreen;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "white")
                {
                    ThreadColorLabel.Text = "White Color";
                    ThreadColorButton.BackColor = System.Drawing.Color.WhiteSmoke;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "Yellow_Orange")
                {
                    ThreadColorLabel.Text = "Yellow Orange Color";
                    ThreadColorButton.BackColor = System.Drawing.Color.LightYellow;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "Blue_violet")
                {
                    ThreadColorLabel.Text = "Blue Violet";
                    ThreadColorButton.BackColor = System.Drawing.Color.BlueViolet;
                    ThreadColorButton.Enabled = false;
                }
                else
                {
                    ThreadColorLabel.Text = "";
                    ThreadColorButton.Visible = false;
                }
            }
        }
        private void LoginFromGmail()
        {
            if (Request.QueryString["UserId"] != null && Request.QueryString["OrderId"] != null)
            {
                int Id = Convert.ToInt32(Request["OrderId"]);
                var customOrder = db.CustomOrders.Where(s => s.Id.Equals(Id)).FirstOrDefault();
                var Order = db.CustomOrders.Where(s => s.Id.Equals(Id)).FirstOrDefault();
                var User = db.Users.Where(o => o.Id.Equals(Order.UserId)).FirstOrDefault();
                var OrderDetail = db.CustomDesigns.Where(s => s.Id.Equals(Order.CustomDesign)).FirstOrDefault();
                var Sizes = db.MadeToMeasures.Where(s => s.Id.Equals(OrderDetail.Id)).FirstOrDefault();
                var fabric = db.Products.Where(s => s.Id.Equals(OrderDetail.FabricId)).FirstOrDefault();
                DateLabel.Text = Order.Date.ToLongDateString();
                NameLabel.Text = User.Name.ToString();
                EmailLabel.Text = User.Email.ToString();
                NoLabel.Text = User.PhoneNo.ToString();
                AddressLabel.Text = User.Address.ToString();
                CollarSizeLabel.Text = Sizes.Collar;
                ShoulderLabel.Text = Sizes.Shoulder;
                ChestLabel.Text = Sizes.Chest;
                WaistLabel.Text = Sizes.Waist;
                SleeveLengthLabel.Text = Sizes.SleeveLength;
                ShirtLengthLabel.Text = Sizes.ShirtLength;
                FabricImage.ImageUrl = string.Format("Admin/{0}", fabric.MainImage);
                FabricNameLabel.Text = fabric.Name;
                CostLabel.Text = fabric.Price.ToString();
                TotalLabel.Text = fabric.Price.ToString();
                TotalLabel.Text = fabric.Price.ToString();
                //CustomImage.ImageUrl = string.Format("Admin/OrderImages/{0}", OrderDetail.DesignImage);
                CollarImage.ImageUrl = string.Format("Admin/OrderImages/{0}.png", OrderDetail.CollorStyle);
                CuffImage.ImageUrl = string.Format("Admin/OrderImages/{0}.png", OrderDetail.CuffStyle);
                ButtonImage.ImageUrl = string.Format("Admin/OrderImages/{0}.png", OrderDetail.ButtonStyle);
                PocketImage.ImageUrl = string.Format("Admin/OrderImages/{0}.png", OrderDetail.PocketStyle);



                if (OrderDetail.BtnColor == "pink")
                {
                    ButtonColorLabel.Text = "Pink Color";
                    ButtonColor.BackColor = System.Drawing.Color.Pink;
                    ButtonColor.Enabled = false;
                }
                else if (OrderDetail.BtnColor == "green")
                {
                    ButtonColorLabel.Text = "Green Color";
                    ButtonColor.BackColor = System.Drawing.Color.Green;
                    ButtonColor.Enabled = false;
                }
                else if (OrderDetail.BtnColor == "navyBlue")
                {
                    ButtonColorLabel.Text = "Navy Blue Color";
                    ButtonColor.BackColor = System.Drawing.Color.Blue;
                    ButtonColor.Enabled = false;
                }
                else if (OrderDetail.BtnColor == "white")
                {
                    ButtonColorLabel.Text = "White Color";
                    ButtonColor.BackColor = System.Drawing.Color.White;
                    ButtonColor.Enabled = false;
                }
                else if (OrderDetail.BtnColor == "blackColor")
                {
                    ButtonColorLabel.Text = "Black Color";
                    ButtonColor.BackColor = System.Drawing.Color.Black;
                    ButtonColor.Enabled = false;
                }
                else if (OrderDetail.BtnColor == "lightblue")
                {
                    ButtonColorLabel.Text = "light blue Color";
                    ButtonColor.BackColor = System.Drawing.Color.LightBlue;
                    ButtonColor.Enabled = false;
                }
                else
                {
                    ButtonColor.Visible = false;
                }
                if (OrderDetail.ThreadColor == "blackColor")
                {
                    ThreadColorLabel.Text = "Black Color";
                    ThreadColorButton.BackColor = System.Drawing.Color.Black;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "yellow")
                {
                    ThreadColorLabel.Text = "Yellow Color";
                    ThreadColorButton.BackColor = System.Drawing.Color.Yellow;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "red")
                {
                    ThreadColorLabel.Text = "Red Color";
                    ThreadColorButton.BackColor = System.Drawing.Color.Red;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "BlueColor")
                {
                    ThreadColorLabel.Text = "Blue Color";
                    ThreadColorButton.BackColor = System.Drawing.Color.Blue;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "violet")
                {
                    ThreadColorLabel.Text = "Violet Color";
                    ThreadColorButton.BackColor = System.Drawing.Color.Violet;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "Orange")
                {
                    ThreadColorLabel.Text = "Orange Color";
                    ThreadColorButton.BackColor = System.Drawing.Color.Orange;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "Light_blue")
                {
                    ThreadColorLabel.Text = "Light Blue";
                    ThreadColorButton.BackColor = System.Drawing.Color.LightBlue;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "Green")
                {
                    ThreadColorLabel.Text = "Green Color";
                    ThreadColorButton.BackColor = System.Drawing.Color.LightGreen;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "Dark_Green")
                {
                    ThreadColorLabel.Text = "Dark Green";
                    ThreadColorButton.BackColor = System.Drawing.Color.DarkGreen;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "white")
                {
                    ThreadColorLabel.Text = "White Color";
                    ThreadColorButton.BackColor = System.Drawing.Color.WhiteSmoke;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "Yellow_Orange")
                {
                    ThreadColorLabel.Text = "Yellow Orange Color";
                    ThreadColorButton.BackColor = System.Drawing.Color.LightYellow;
                    ThreadColorButton.Enabled = false;
                }
                else if (OrderDetail.ThreadColor == "Blue_violet")
                {
                    ThreadColorLabel.Text = "Blue Violet";
                    ThreadColorButton.BackColor = System.Drawing.Color.BlueViolet;
                    ThreadColorButton.Enabled = false;
                }
                else
                {
                    ThreadColorLabel.Text = "";
                    ThreadColorButton.Visible = false;
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            int Id = Convert.ToInt32(Request["OrderId"]);
            Response.Redirect("ViewShirt.aspx?OrderId=" + Id);
        }
    }
}