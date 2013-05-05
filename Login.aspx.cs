using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void button_Click(object sender, EventArgs e)
    {
        errorMessage.InnerHtml = "";
        string birth = birthday.Text;
        string name = username.Text;
        string password1 = inputPassword.Text;
        string password2 = inputPassword2.Text;
        string eemail = email.Text;
        string add = address.Text;
        string code = codes.Text;

        if (password1 != password2)
            errorMessage.InnerHtml += getErrorFormat("两次密码不一致！");
        if(add == "")
            errorMessage.InnerHtml += getErrorFormat("联系地址不能为空！");

    }

    private string getErrorFormat(string mesg)
    {
        string ret = "<div class=\"alert alert-error\">";
        ret += mesg;
        ret += "</div>";
        return ret;
    }
}