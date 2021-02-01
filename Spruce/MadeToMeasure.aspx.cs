using Spruce.Models;
using System;
using System.Linq;

namespace Spruce
{
    public partial class MadeToMeasure : System.Web.UI.Page
    {
        public MadeToMeasure()
        {
            db = new SpruceEntities();
        }
        private SpruceEntities db;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            { 
                
            }
        }

        protected void SaveButton_Click(object sender, EventArgs e)
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
                    Chest = ChestDropdown.SelectedValue,
                    Collar = CollarDropdown.SelectedValue,
                    ShirtLength = ShirtDropdown.SelectedValue,
                    Shoulder = ShoulderDropdown.SelectedValue,
                    SleeveLength = SleeveDropdown.SelectedValue,
                    Waist = WaistDropdown.SelectedValue,
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
        }
    }
}