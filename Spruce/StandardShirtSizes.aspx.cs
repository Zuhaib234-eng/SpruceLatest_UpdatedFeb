using Spruce.Models;
using System;
using System.Linq;

namespace Spruce
{
    public partial class StandardShirtSizes : System.Web.UI.Page
    {
        public StandardShirtSizes()
        {
            db = new SpruceEntities();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
            
            }
        }
        private SpruceEntities db;
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SaveMethod();
            }
            catch(Exception ex)
            { 
            
            }
        }

        private void SaveMethod()
        {
            var UserData = Session["UserData"] as Models.User;
            if (UserData != null)
            {
                //       var getCustomDesign = Session["customerDesignData"] as Models.CustomDesign;                
                //              db.CustomDesigns.Add(getCustomDesign);
                //                db.SaveChanges();
                Models.MadeToMeasure madeToMeasure = new Models.MadeToMeasure
                {
                    Chest = ChestHiddenField.Value,
                    Collar = CollarSizeHiddenField.Value,
                    ShirtLength = ShirtLengthHiddenField.Value,
                    Shoulder = ShoulderHiddenField.Value,
                    SleeveLength = SleeveLengthHiddenField.Value,
                    Waist = WaistHiddenField.Value,
                    // CustomOrderId = getCustomDesign.Id
                };
                Session["MadeToMeasure"] = madeToMeasure;
                //db.MadeToMeasures.Add(madeToMeasure);
                //db.SaveChanges();
                /* var getAmount = db.Products.Where(s => s.Id.Equals(getCustomDesign.FabricId)).FirstOrDefault();
                 CustomOrder customOrder = new CustomOrder()
                 {
                     Status = false,
                     UserId = UserData.Id,
                     Date = DateTime.Now,
                     CustomDesign = getCustomDesign.Id,
                     AdminView = false,
                     Total = getAmount.Price
                 };
                 db.CustomOrders.Add(customOrder);
                 db.SaveChanges();*/

                Response.Redirect("CheckoutCustom.aspx");

            }
            else
            {
                Response.Redirect("SignIn.aspx");
            }



            /*var UserData = Session["UserData"] as Models.User;
            if (UserData != null)
            {
                var getCustomDesign = Session["customerDesignData"] as Models.CustomDesign;
                db.CustomDesigns.Add(getCustomDesign);
                db.SaveChanges();
                Models.MadeToMeasure madeToMeasure = new Models.MadeToMeasure
                {
                    Chest = ChestHiddenField.Value,
                    Collar = CollarSizeHiddenField.Value,
                    ShirtLength = ShirtLengthHiddenField.Value,
                    Shoulder = ShoulderHiddenField.Value,
                    SleeveLength = SleeveLengthHiddenField.Value,
                    Waist = WaistHiddenField.Value,
                    CustomOrderId = getCustomDesign.Id
                };
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
                    Total = getAmount.Price
                };
                db.CustomOrders.Add(customOrder);
                db.SaveChanges();
            }
            else
            {
                Response.Redirect("SignIn.aspx");
            }*/
        }
    }
}