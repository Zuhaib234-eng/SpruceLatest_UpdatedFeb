using Spruce.Models;
using System;
using System.Linq;
using System.Drawing;
using System.Drawing.Imaging;

namespace Spruce
{
    public partial class CustomDesigner : System.Web.UI.Page
    {
        //Guid myGuid = Guid.NewGuid();
        //string path = Server.MapPath("Admin/OrderImages/" + myGuid.ToString() + ".jpg");
        //CaptureImage(path);
        public CustomDesigner()
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
            checkToShowMainImageHiddenField.Value = "False";
            int FabricID = Convert.ToInt32(Request.QueryString["FabricID"]);
            var getProduct = db.Products.Where(s => s.Id.Equals(FabricID)).FirstOrDefault();
            CustomFabriceImageHiddenField.Value = string.Format("Admin/{0}", getProduct.MainImage);
        }

        //string CapturedFilePath        
        private void CaptureImage(string CapturedFilePath)
        {
            Bitmap bitmap = new Bitmap(650, 650);
            Graphics graphics = Graphics.FromImage(bitmap as System.Drawing.Image);
            graphics.CopyFromScreen(550, 200, 0, 0, bitmap.Size);
            bitmap.Save(CapturedFilePath, ImageFormat.Jpeg);
        }
        protected void StandardSizesButton_Click(object sender, EventArgs e)
        {
            try
            {
                StandardSizeMethod();
            }
            catch (Exception ex)
            {

            }
        }

        private void StandardSizeMethod()
        {
            string cuff = cuffHiddenField.Value;
            string newString = cuff.Substring(54);
            int getr = newString.IndexOf("\r");
            string getmyValue = newString.Substring(0, getr);


            string collar = collarHiddenField.Value;
            string newString2 = collar.Substring(54);
            int getc = newString2.IndexOf("\r");
            string getmyValue2 = newString2.Substring(0, getc);

            CustomDesign customerDesign = new CustomDesign()
            {
                ButtonStyle = btnsHiddenField.Value,
                BtnColor = BtnColorHiddenField.Value,
                CuffStyle = getmyValue,
                FabricId = Convert.ToInt32(Request.QueryString["FabricID"]),
                PocketStyle = pocketHiddenField.Value,
                ShirtStyle = ShirtStyleHiddenField.Value,
                ThreadColor = ThrdColorHiddenField.Value,
                MadeToMeasureOrStandard = "Standard Size",
                CollorStyle = getmyValue2
            };
            Session["customerDesignData"] = customerDesign;
            Response.Redirect("StandardShirtSizes.aspx");
        }

        protected void MadeToMeasureButton_Click(object sender, EventArgs e)
        {
            try
            {
                MadeToMeasureMethod();
            }
            catch (Exception ex)
            {
            }
        }

        private void MadeToMeasureMethod()
        {
            string cuff = cuffHiddenField.Value;
            string newString = cuff.Substring(54);
            int getr = newString.IndexOf("\r");
            string getmyValue = newString.Substring(0, getr);


            string collar = collarHiddenField.Value;
            string newString2 = collar.Substring(54);
            int getc = newString2.IndexOf("\r");
            string getmyValue2 = newString2.Substring(0, getc);


            CustomDesign customerDesign = new CustomDesign()
            {
                ButtonStyle = btnsHiddenField.Value,
                BtnColor = BtnColorHiddenField.Value,
                CuffStyle = getmyValue,
                FabricId = Convert.ToInt32(Request.QueryString["FabricID"]),
                PocketStyle = pocketHiddenField.Value,
                ShirtStyle = ShirtStyleHiddenField.Value,
                ThreadColor = ThrdColorHiddenField.Value,
                MadeToMeasureOrStandard = "Made To Measure",
                CollorStyle = getmyValue2
            };

            Session["customerDesignData"] = customerDesign;
            Response.Redirect("MadeToMeasure.aspx");
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                SaveMethod();
            }
            catch (Exception ex)
            {

            }
        }

        private void SaveMethod()
        {
           // Guid myGuid = Guid.NewGuid();
           // string path = Server.MapPath("Admin/OrderImages/" + myGuid.ToString() + ".jpg");
            // CaptureImage(path);
           // ViewState["ImagePath"] = myGuid.ToString() + ".jpg";
            checkToShowMainImageHiddenField.Value = "True";
        }

        protected void CustomDesignerButton_Click(object sender, EventArgs e)
        {
            try
            {
                checkToShowMainImageHiddenField.Value = "False";
            }
            catch (Exception ex)
            {

            }
        }
    }
}