using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestWeb
{
	public partial class _Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        // Method must be declared as static, and must be decorated with the [WebMethod] attribute.
        [WebMethod]
        public static bool IsValid(string name, string color, bool isAdult, string time)
        {
            return true;// "Welcome, " + name;
        }
	}
}
