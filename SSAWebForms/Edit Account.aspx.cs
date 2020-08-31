using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Windows.Forms;


namespace SSAWebForms
{
public partial class Edit_Account_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["Name"] == null)
            {
                Response.Redirect("Home.aspx");
            }
            else if (!Session["_User"].Equals("client"))
            {
                 Response.Redirect("Home.aspx");
            }
            else
            {
                if (!IsPostBack)
                {

                }
            }
            

        }

        public void btnProfileImage_Click(object sender, EventArgs e)
        {
            string file = null;
            OpenFileDialog browse = new OpenFileDialog();
            browse.ShowDialog();
            if (browse.ShowDialog() == DialogResult.OK)
            {
                file = browse.FileName;
                MessageBox.Show(file);
            }
        }





    }
}