<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="student_emailvalidation.ascx.vb" Inherits="ECA_WEB.student_emailvalidation" %>
    <!-- *****************************************************************
    After students fill all the information and submit, the web will send a
    confirmation e-mail to students' email. It will contain a validation code
    that students can only finished the sign up by submiting the validation code.
    ********************************************************************-->
<div class=" jumbotronlll ">
    <h1>Email Validation</h1>
    <p>Please enter the verification code we just send to your account</p>
    <asp:Label runat="server" ID="stu_emailvalidation_inputlabel">Verification code:</asp:Label>
    <!-- enter the validation code-->
    <asp:TextBox runat="server" ID="stu_emailvalidation_text"></asp:TextBox><br />
    <asp:Button CssClass="btn-default btn " runat="server" Text="Submit" ID="stu_emailvalidation_click" />
</div>
