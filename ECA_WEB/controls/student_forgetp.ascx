<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="student_forgetp.ascx.vb" Inherits="ECA_WEB.student_forgetp" %>
    <!-- *****************************************************************
     When students forget their passwords, they can get their password with
     their email. System will send their passwords to them directly.
    ********************************************************************-->
<div class=" jumbotronlll ">
    <h1>Find Password</h1>
    <p>Please enter your email account.</p>
    <asp:Label runat="server" ID="stu_emailvalidation_inputlabel">Email Address:</asp:Label>
    <asp:TextBox runat="server" ID="stu_findpassword_text"></asp:TextBox><br />
    <asp:Button CssClass="btn-default btn " runat="server" Text="Submit" ID="stu_findpassword_click" />
</div>
