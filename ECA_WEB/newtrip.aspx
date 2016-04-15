<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="newtrip.aspx.vb" Inherits="ECA_WEB.newtrip" %>

<!DOCTYPE html>
<link href="Content/header.css" rel="stylesheet" />
<link href="Content/bootstrap.css" rel="stylesheet" />
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
<div class ="container">
    <br />
    <br />
    <asp:Label CssClass ="col-md-1 " runat ="server" >Club Name:</asp:Label>
    <asp:DropDownList runat ="server" ID ="tripdropclubname" >
    </asp:DropDownList>
    <asp:Label CssClass ="col-md-1 " runat ="server" >Trip Title:</asp:Label>
    <asp:TextBox CssClass ="col-md-2 " runat ="server" ID ="triptexttriptitle" />
    <asp:Label CssClass ="col-md-1" runat ="server" >Trip Date(MMDDYYYY):</asp:Label><asp:TextBox runat ="server" ID ="tripdate" />
    <br />
    <br />
    <asp:Label CssClass ="col-md-1 " runat ="server" >Outwards time:</asp:Label>
    <asp:TextBox CssClass ="col-md-1 " runat ="server" ID ="tripouttime"></asp:TextBox>
    <asp:Label CssClass ="col-md-1 " runat ="server" >Backwards time:</asp:Label>
    <asp:TextBox CssClass ="col-md-1 " runat ="server" ID ="tripbacktime"></asp:TextBox>
    <br />
    <br />
    <asp:Label CssClass ="col-md-1 " runat="server" >Description</asp:Label><br />
    <asp:TextBox runat ="server" ID ="tripdescription" Height="193px" Width="315px"></asp:TextBox>
</div>
</body>
</html>
