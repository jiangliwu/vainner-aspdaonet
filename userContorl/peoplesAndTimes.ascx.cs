using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userContorl_peoplesAndTimes : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        online.Text = ((int)Application["count"]).ToString();
        times.Text = ((int)Application["times"]).ToString();
    }
}