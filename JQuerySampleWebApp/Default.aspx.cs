using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JQuerySampleWebApp
{
    public partial class _Default : Page
    {
        //TODO: реализовать jquery Request в MVC App
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // Method must be declared as static, and must be decorated with the [WebMethod] attribute.
        [WebMethod]
        //[ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string GetWelcomeMessage(string name)
        {
            return "Welcome, " + name;
        }
    }
}