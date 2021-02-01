using Spruce.Models;
using System;
using System.Linq;

namespace Spruce
{
    public partial class ViewShirt : System.Web.UI.Page
    {
        public ViewShirt()
        {
            db = new SpruceEntities();            
        }
        private SpruceEntities db;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Models.User user = Session["UserData"] as Models.User;
                if (user != null)
                {
                    LinkButton1.Visible = true;
                }
                else
                {
                    LinkButton2.Visible = true;
                }
                int CustomOrderId = Convert.ToInt32(Request.QueryString["OrderId"]);
                var CustomerOrder = db.CustomOrders.Where(s => s.Id.Equals(CustomOrderId)).FirstOrDefault();
                var CustomDesign = db.CustomDesigns.Where(s => s.Id.Equals(CustomerOrder.CustomDesign)).FirstOrDefault();
                var MadeToMeasure = db.MadeToMeasures.Where(s => s.CustomOrderId.Equals(CustomDesign.Id)).FirstOrDefault();
                var FabricId = db.Products.Where(s => s.Id.Equals(CustomDesign.FabricId)).FirstOrDefault();
                ShirtStyleHiddenField.Value = CustomDesign.ShirtStyle;
                ThreadColorHiddenField.Value = CustomDesign.ThreadColor;
                CuffStyleHiddenField.Value = CustomDesign.CuffStyle;
                ButtonStyleHiddenField.Value = CustomDesign.ButtonStyle;
                ButtonColorHiddenField.Value = CustomDesign.BtnColor;
                PocketStyleHiddenField.Value = CustomDesign.PocketStyle;
                MadeToMeasureHiddenField.Value = CustomDesign.MadeToMeasureOrStandard;
                CollarStyleHiddenField.Value = CustomDesign.CollorStyle;
                FabricImageHiddenField.Value =  "Admin/"+FabricId.MainImage;
             }
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            int CustomOrderId = Convert.ToInt32(Request.QueryString["OrderId"]);
            Response.Redirect("CustomOrderDetails.aspx?OrderId=" + CustomOrderId);
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            int CustomOrderId = Convert.ToInt32(Request.QueryString["OrderId"]);
            Response.Redirect("Admin/CustomerOrderDetail.aspx?CustomOrderID=" + CustomOrderId);
        }
    }
}