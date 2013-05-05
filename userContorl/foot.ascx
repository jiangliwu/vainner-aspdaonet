<%@ Control Language="C#" AutoEventWireup="true" CodeFile="foot.ascx.cs" Inherits="userContorl_foot" %>
<%@ Register Src="~/userContorl/peoplesAndTimes.ascx" TagPrefix="uc1" TagName="peoplesAndTimes" %>


<div class="ddd">
 <footer class="footer">
      <div class="container">
        <p>由Jiangliwu.Vainner 华丽的设计 <a href="http://www.jiangliwu.me" target="_blank">@vainner</a></p>
          <p><uc1:peoplesAndTimes runat="server" ID="peoplesAndTimes" /></p>
        <ul class="footer-links">
          <li><a href="http://www.jiangliwu.me">本人博客</a></li>
          <li class="muted">&middot;</li>
          <li><a href="http://jiangliwu.me/about-me/">关于我</a></li>
          <li class="muted">&middot;</li>
          <li><a href="https://github.com/twitter/bootstrap/blob/master/CHANGELOG.md">Changelog</a></li>
        </ul>
      </div>
     
    </footer>
    </div>

