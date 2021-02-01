using Spruce.Models;
using System;
using System.Drawing;
using System.Drawing.Imaging;
using System.Linq;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Spruce.Admin
{
    public partial class CustomerOrderDetail : System.Web.UI.Page
    {
        public CustomerOrderDetail()
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
                catch(Exception ex)
                { 
                
                }
            }
        }

        private void PageLoadMethod()
        {
            int newOrders = db.Orders.Where(s => s.AdminView == false).ToList().Count();
            if (newOrders > 0)
            {
                NewOrderHiddenField.Value = newOrders.ToString();
            }
            int Id = Convert.ToInt32(Request.QueryString["CustomOrderID"]);
            var Order = db.CustomOrders.Where(s => s.Id.Equals(Id)).FirstOrDefault();
            var User = db.Users.Where(o => o.Id.Equals(Order.UserId)).FirstOrDefault();
            var customDesign = db.CustomDesigns.Where(s => s.Id.Equals(Order.CustomDesign)).FirstOrDefault();
            var Sizes = db.MadeToMeasures.Where(s => s.CustomOrderId.Equals(customDesign.Id)).FirstOrDefault();
            var fabric = db.Products.Where(s => s.Id.Equals(customDesign.FabricId)).FirstOrDefault();
            CreatedDateLabel.Text = Order.Date.ToLongDateString();
            CustomerNameLabel.Text = User.Name.ToString();
            CustomerEmailLabel.Text = User.Email.ToString();
            CustomerPhoneNoLabel.Text = User.PhoneNo.ToString();
            CustomerAddressLabel.Text = User.Address.ToString();
            CollarSizeLabel.Text = Sizes.Collar;
            ShoulderLabel.Text = Sizes.Shoulder;
            ChestLabel.Text = Sizes.Chest;
            WaistLabel.Text = Sizes.Waist;
            SleeveLengthLabel.Text = Sizes.SleeveLength;
            ShirtLengthLabel.Text = Sizes.ShirtLength;
            FabricImage.ImageUrl = fabric.MainImage;
            FabricNameLabel.Text = fabric.Name;
            PriceLabel.Text = fabric.Price.ToString();
            TotalLabel.Text = fabric.Price.ToString();
            TotalsubLabel.Text = fabric.Price.ToString();
          //  CustomizedImage.ImageUrl = string.Format("OrderImages/{0}", customDesign.DesignImage);
            CollarImage.ImageUrl = string.Format("OrderImages/{0}.png", customDesign.CollorStyle);
            CuffImage.ImageUrl = string.Format("OrderImages/{0}.png", customDesign.CuffStyle);
            ButtonImage.ImageUrl = string.Format("OrderImages/{0}.png", customDesign.ButtonStyle);
            PocketImage.ImageUrl = string.Format("OrderImages/{0}.png", customDesign.PocketStyle);
            if (customDesign.BtnColor == "pink")
            {
                ButtonColorLabel.Text = "Pink Color";
                ButtonColor.BackColor = System.Drawing.Color.Pink;
                ButtonColor.Enabled = false;
            }
            else if (customDesign.BtnColor == "green")
            {
                ButtonColorLabel.Text = "Green Color";
                ButtonColor.BackColor = System.Drawing.Color.Green;
                ButtonColor.Enabled = false;
            }
            else if (customDesign.BtnColor == "navyBlue")
            {
                ButtonColorLabel.Text = "Navy Blue Color";
                ButtonColor.BackColor = System.Drawing.Color.Blue;
                ButtonColor.Enabled = false;
            }
            else if (customDesign.BtnColor == "white")
            {
                ButtonColorLabel.Text = "White Color";
                ButtonColor.BackColor = System.Drawing.Color.White;
                ButtonColor.Enabled = false;
            }
            else if (customDesign.BtnColor == "blackColor")
            {
                ButtonColorLabel.Text = "Black Color";
                ButtonColor.BackColor = System.Drawing.Color.Black;
                ButtonColor.Enabled = false;
            }
            else if (customDesign.BtnColor == "lightblue")
            {
                ButtonColorLabel.Text = "light blue Color";
                ButtonColor.BackColor = System.Drawing.Color.LightBlue;
                ButtonColor.Enabled = false;
            }
            else
            {
                ButtonColor.Visible = false;
            }
            if (customDesign.ThreadColor == "blackColor")
            {
                ThreadColorLabel.Text = "Black Color";
                ThreadColorButton.BackColor = System.Drawing.Color.Black;
                ThreadColorButton.Enabled = false;
            }
            else if (customDesign.ThreadColor == "yellow")
            {
                ThreadColorLabel.Text = "Yellow Color";
                ThreadColorButton.BackColor = System.Drawing.Color.Yellow;
                ThreadColorButton.Enabled = false;
            }
            else if (customDesign.ThreadColor == "red")
            {
                ThreadColorLabel.Text = "Red Color";
                ThreadColorButton.BackColor = System.Drawing.Color.Red;
                ThreadColorButton.Enabled = false;
            }
            else if (customDesign.ThreadColor == "BlueColor")
            {
                ThreadColorLabel.Text = "Blue Color";
                ThreadColorButton.BackColor = System.Drawing.Color.Blue;
                ThreadColorButton.Enabled = false;
            }
            else if (customDesign.ThreadColor == "violet")
            {
                ThreadColorLabel.Text = "Violet Color";
                ThreadColorButton.BackColor = System.Drawing.Color.Violet;
                ThreadColorButton.Enabled = false;
            }
            else if (customDesign.ThreadColor == "Orange")
            {
                ThreadColorLabel.Text = "Orange Color";
                ThreadColorButton.BackColor = System.Drawing.Color.Orange;
                ThreadColorButton.Enabled = false;
            }
            else if (customDesign.ThreadColor == "Light_blue")
            {
                ThreadColorLabel.Text = "Light Blue";
                ThreadColorButton.BackColor = System.Drawing.Color.LightBlue;
                ThreadColorButton.Enabled = false;
            }
            else if (customDesign.ThreadColor == "Green")
            {
                ThreadColorLabel.Text = "Green Color";
                ThreadColorButton.BackColor = System.Drawing.Color.LightGreen;
                ThreadColorButton.Enabled = false;
            }
            else if (customDesign.ThreadColor == "Dark_Green")
            {
                ThreadColorLabel.Text = "Dark Green";
                ThreadColorButton.BackColor = System.Drawing.Color.DarkGreen;
                ThreadColorButton.Enabled = false;
            }
            else if (customDesign.ThreadColor == "white")
            {
                ThreadColorLabel.Text = "White Color";
                ThreadColorButton.BackColor = System.Drawing.Color.WhiteSmoke;
                ThreadColorButton.Enabled = false;
            }
            else if (customDesign.ThreadColor == "Yellow_Orange")
            {
                ThreadColorLabel.Text = "Yellow Orange Color";
                ThreadColorButton.BackColor = System.Drawing.Color.LightYellow;
                ThreadColorButton.Enabled = false;
            }
            else if (customDesign.ThreadColor == "Blue_violet")
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

        protected void ViewProfileButton_Click(object sender, EventArgs e)
        {
            try
            {
                ProfileMethod();
            }
            catch(Exception ex)
            { 
            
            }
        }

        private void ProfileMethod()
        {
            int Id = Convert.ToInt32(Request.QueryString["CustomOrderID"]);
            var customOrder = db.CustomOrders.Where(s => s.Id.Equals(Id)).FirstOrDefault();
            Response.Redirect("UserDetails.aspx?UserID=" + customOrder.UserId);
        }

        protected void UpdateStatusBtn_Click(object sender, EventArgs e)
        {
            try
            {
                UpdateStatusMethod();
            }
            catch(Exception ex)
            { 
            
            }
        }

        private void UpdateStatusMethod()
        {
            int Id = Convert.ToInt32(Request.QueryString["CustomOrderID"]);
            var customOrder = db.CustomOrders.Where(s => s.Id.Equals(Id)).FirstOrDefault();
            customOrder.Status = true;
            db.Entry(customOrder).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
        }

        protected void SendEmailButton_Click(object sender, EventArgs e)
        {

        }

        protected void GoToFabric_Click(object sender, EventArgs e)
        {
            try
            {
                GoToFabricMethod();
            }
            catch(Exception ex)
            { 
            
            }
        }

        private void GoToFabricMethod()
        {
            int Id = Convert.ToInt32(Request.QueryString["CustomOrderID"]);
            var Order = db.CustomOrders.Where(s => s.Id.Equals(Id)).FirstOrDefault();
            var CustomDesign = db.CustomDesigns.Where(s => s.Id.Equals(Order.CustomDesign)).FirstOrDefault();
            Response.Redirect("../FabricSingle.aspx?ProductId=" + CustomDesign.FabricId);
        }

        protected void ScreenshotButton_Click(object sender, EventArgs e)
        {
            try
            {
                int Id = Convert.ToInt32(Request.QueryString["CustomOrderID"]);
                Response.Redirect("../ViewShirt.aspx?OrderId="+ Id);                
            }
            catch(Exception ex)
            { 
            
            }
        }
        private void SaveMethod()
        {
            Guid myGuid = Guid.NewGuid();
            string path = Server.MapPath("TailorImages/" + myGuid.ToString() + ".jpg");
            CaptureImage(path);
            Response.ContentType = ContentType;
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + path);
            Response.WriteFile(path);
            Response.End();
        }
        private void CaptureImage(string CapturedFilePath)
        {
            Bitmap bitmap = new Bitmap(Screen.PrimaryScreen.Bounds.Width, Screen.PrimaryScreen.Bounds.Height);
            Graphics graphics = Graphics.FromImage(bitmap as System.Drawing.Image);
            graphics.CopyFromScreen(0, 0, 0, 0, bitmap.Size);
            bitmap.Save(CapturedFilePath, ImageFormat.Jpeg);
        }
    }
}