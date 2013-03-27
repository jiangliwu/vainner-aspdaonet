<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>
<!-- #include file="pages/_head.html" -->

<div class="container" >
    <form class="form-horizontal">

        <div class="control-group" id="input-username-control">
            <label class="control-label" for="account">账户</label>
            <div class="controls">
                <input type="text" name="username" id="username" placeholder="请输入6-12位的数字和字母"/>
                <span class="help-inline" id="login-username-hints"></span>
            </div>
        </div>
        
        <div class="control-group" id="input-password-control">
            <label class="control-label" for="inputPassword">密码</label>
            <div class="controls">
                <input type="password" id="inputPassword" placeholder="请输入6-24位的数字和字母"/>
                <span class="help-inline" id="login-password-hints"></span>
            </div>
        </div>

        <div class="control-group">
            <div class="controls">
                <label class="checkbox">
                    <input type="checkbox"/> 记住密码
                </label>
                <button type="button" class="btn btn-primary" onclick="inputCheck()">登陆</button>
                <button type="button" class="btn" onclick="clearInput()">清除</button>
            </div>
        </div>
    </form>

   
</div>

<!-- #include file="pages/_foot.html" -->