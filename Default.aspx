<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>


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
    <form id="form1" runat="server">
        <div class="hero-unit">
            <%showHelloWorld();
              showNineTable();
            %>
        </div>


    </form>

    <uc1:foot runat="server" ID="foot" />
</body>
</html>
