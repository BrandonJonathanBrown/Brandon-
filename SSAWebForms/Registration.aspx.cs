using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SSAWebForms
{
    public partial class Registration_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string User = null;
            if (Session["_User"] != null)
            {
                if (Session["_User"].Equals("Administrator"))
                {
                    if (!IsPostBack)
                    {
                        Response.Redirect("AdministratorPanel.aspx");
                        User = "Administrator";
                    }
                    else
                    {
                        User = "Client";
                    }
                }
            }
        }


        protected void btnRegister_Click(object sender, EventArgs e)
        {
            //This is where the register code goes
        }



    }
}