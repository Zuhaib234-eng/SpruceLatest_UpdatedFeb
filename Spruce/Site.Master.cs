using Spruce.Models;
using System;
using System.Collections.Generic;
using System.Web.UI;

namespace Spruce
{
    public partial class SiteMaster : MasterPage
    {
        public SiteMaster()
        {
            db = new SpruceEntities();
        }
        private SpruceEntities db;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                UserData();
                CartData();
            }
        }

        private void CartData()
        {
            if (Session["CartSession"] != null)
            {
                var List = Session["CartSession"] as List<Models.Product>;
                ShopingCounterLabel.Text = List.Count.ToString();
            }
            else
            {
                ShopingCounterLabel.Text = "0";
            }
        }

        private void UserData()
        {
            if (Session["UserData"] == null)
            {
                UsernameLabel.Text = "";
                LoginLabel.Text = "Sign In";
            }
            else
            {
                var UserSession = Session["UserData"] as Models.User;
                LoginLabel.Text = "Logout";//UserSession.Name;
                UsernameLabel.Text = UserSession.Name;
            }
        }

        protected void CartBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart");
        }

        protected void UsernameLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Dashboard.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session.Remove("UserData");
            Response.Redirect("SignIn.aspx");
        }

        protected void HomeButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void ProductsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }

        protected void FabricsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Fabrics.aspx");
        }

        protected void AboutUsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("About.aspx");
        }

        protected void ContactUsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContactUs.aspx");
        }
        private void FeedBackMethod()
        {
            var value = FeelingEmogiHiddenField.Value;
            var value2 = IssueHiddenField.Value;
            FeedBack feedBack = new FeedBack()
            {
                Feeling = value,
                Issue = value2,
                Description = FeedbackDescriptionTextbox.Text.Trim(),
                Email = FeedBackEmailTextbox.Text.Trim()
            };
            db.FeedBacks.Add(feedBack);
            db.SaveChanges();
            MessageHiddenField.Value = "success";
        }

        protected void FeedbackButton_Click(object sender, EventArgs e)
        {
            FeedBackMethod();
        }
    }
}