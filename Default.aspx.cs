using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public void showHelloWorld()
    {
        Response.Write("<h1>Hello, World!</h1>");
        Response.Write(" <p>这是一个学习用的简单网站. 基于asp.net和bootstrap，简单构建起一个漂亮的网站，让你在起步中获得快速的成就感!<br/>");
    }

    public void showNineTable()
    {
        Response.Write("</br>9*9乘法表如下:</br></br>");
        for (int i = 1; i <= 9; i++)
        {
            for (int j = 1; j <= i; j++)
            {
                Response.Write(i + "*" + j + "=" + j * i + "  ");
            }
            Response.Write("</br>");
        }
    }
}