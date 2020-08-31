using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SSAWebForms
{
    public partial class Add_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
         /*   if (Session["Name"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                if (!Session["_User"].Equals("Administrator"))
                {
                    Response.Redirect("Home.aspx");
                }
            }*/
        }

        protected void btnDone_Click(object sender, EventArgs e)
        {
           //Add Product code goes here
        }
    }
}