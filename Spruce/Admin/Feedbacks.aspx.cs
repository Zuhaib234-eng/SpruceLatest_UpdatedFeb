using Spruce.Models;
using System;
using System.Linq;
using System.Web.UI.WebControls;

namespace Spruce.Admin
{
    public partial class Feedbacks : System.Web.UI.Page
    {
        public Feedbacks()
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
            Repeater1.DataSource = db.FeedBacks.ToList();
            Repeater1.DataBind();
        }
    }
}