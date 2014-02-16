using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQuerySampleWebApp.MySamples
{
    public partial class GetCurrentDate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Creating a webmethod to get date and time
        [System.Web.Services.WebMethod]
        public static string GetCurrentDateTime(string name)
        {
            return "Hey! " + name + Environment.NewLine + "The Current Date & Time is: "
                + DateTime.Now.ToString();
        }
    }
}