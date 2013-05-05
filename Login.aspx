<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<%@ Register Src="~/userContorl/foot.ascx" TagPrefix="uc1" TagName="foot" %>
<%@ Register Src="~/userContorl/head.ascx" TagPrefix="uc1" TagName="head" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Jiangliwu.Vainner's Website</title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet" />
    <link href="bootstrap/css/docs.css" rel="stylesheet" />
    <script type='text/javascript' src="bootstrap/js/bootstrap.js"></script>
    <script type='text/javascript' src="bootstrap/js/docs.js"></script>
</head>

<body>
    <uc1:head runat="server" ID="head" />
    
    <h1>用户注册</h1>
    <br />
    <br />
    <br />

    <div class="container" id="errorMessage" runat="server">
    </div>

    <strong>
    关键信息：</strong>
     <hr class="soften"/>
    <br />
    <form id="loginForm" runat="server" class="container" onsubmit="return inputCheck();">

        <div class="container">
            <div class="control-group" id="input-username-control">
                
                <div class="controls">
                    <asp:Label ID="usernameLable" runat="server" Text=" 您的账户："></asp:Label>
                   <asp:TextBox ID="username" runat="server" placeholder="请输入6-12位的数字和字母"></asp:TextBox>
                    <span class="help-inline" id="login-username-hints"></span>
                </div>
            </div>

            <div class="control-group" id="input-password-control">
                <div class="controls">
                     <asp:Label ID="Label1" runat="server" Text=" 您的密码："></asp:Label>
                    <asp:TextBox TextMode="Password" ID="inputPassword" runat="server" placeholder="请输入6-24位的数字和字母">sds</asp:TextBox>
                    <br />
                     <asp:Label ID="Label2" runat="server" Text=" 确认密码："></asp:Label>
                    <asp:TextBox  TextMode="Password" ID="inputPassword2" runat="server" placeholder="请输入6-24位的数字和字母"></asp:TextBox>
                    <span class="help-inline" id="login-password-hints"></span>
                </div>
            </div>

            <br />
            <br />
            <strong>
            其他信息：</strong>
            <hr class="soften"/>
            <br />
            <div class="control-group" id="others">
                <div class="controls">
                    <asp:Label ID="Label3" runat="server" Text=" 联系地址："></asp:Label>
                    <asp:TextBox  ID="address" runat="server" placeholder="XXXX省XXXX市XXXXX区XXXXX"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="V1" ControlToValidate="address" runat="server">
                        *不能为空
                    </asp:RequiredFieldValidator> 
                    <br />

                     <asp:Label ID="Label4" runat="server" Text=" 电子邮件："></asp:Label>
                    <asp:TextBox ID="email" runat="server" placeholder="jiangliwu.ipple@gmail.com"></asp:TextBox>
                  
                    <asp:RegularExpressionValidator ID="v2" ControlToValidate="email" runat="server" ValidationExpression="^\s*([A-Za-z0-9_-]+(\.\w+)*@([\w-]+\.)+\w{2,3})\s*$">
                        *邮件地址格式错误！
                    </asp:RegularExpressionValidator>


                    <br />
                     <asp:Label ID="Label5" runat="server" Text=" 邮政编码："></asp:Label>
                    <asp:TextBox ID="codes" runat="server" placeholder="519000"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ControlToValidate="codes" runat="server" ValidationExpression="[1-9]\d{5}(?!\d)">
                        *邮政编码错误！
                    </asp:RegularExpressionValidator>


                    <br />
                     <asp:Label ID="Label6" runat="server" Text=" 联系电话："></asp:Label>
                    <asp:TextBox ID="phones" runat="server" placeholder="13811111111" ></asp:TextBox>
                     <br />
                     <asp:Label ID="Label7" runat="server" Text=" 出生年份："></asp:Label>
                    <asp:TextBox ID="birthday" runat="server"  placeholder="1990"></asp:TextBox>
                    <asp:RangeValidator MinimumValue="0" MaximumValue="2014" runat="server" ControlToValidate="birthday" Type="Integer">
                        *出生年份错误！
                    </asp:RangeValidator>
                         <br />
                     <asp:Label ID="Label8" runat="server" Text=" 出生月份："></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"  placeholder="05"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" MinimumValue="01" MaximumValue="12" runat="server" ControlToValidate="TextBox1" Type="Integer">
                        *出生月份错误！
                    </asp:RangeValidator>
                         <br />
                     <asp:Label ID="Label9" runat="server" Text=" 出生日期："></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server"  placeholder="24"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator2" MinimumValue="1" MaximumValue="31" runat="server" ControlToValidate="TextBox2" Type="Integer">
                        *出生日期错误！
                    </asp:RangeValidator>
                      
                </div>
            </div>



            
     
            <div class="control-group">
                <div class="controls">
                    <label class="checkbox">
                        <input type="checkbox" />
                        记住密码
                    </label>

                    <asp:Button ID="button" runat="server" Text="注册" OnClick="button_Click" CssClass="btn btn-primary" />
                    <button type="button" class="btn" onclick="clearInput()">清除</button>
                </div>
            </div>
        </div>
    </form>

    <uc1:foot runat="server" ID="foot" />
</body>
</html>
