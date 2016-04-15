<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="teacher_log_in.ascx.vb" Inherits="ECA_WEB.teacher_log_in" %>
    <!-- *****************************************************************
        The page used by teachers to log in.
    ********************************************************************-->
<div class="jumbotronlll body-content">
    <div class="container">
        <h2 class="col-md-10">Teacher Login</h2>
    </div>
    <br />
    <br />
    <!-- the textbook used to enter e-maill. And it can not be blank-->
    <div class="form-group form-inline">
        <label class="col-md-2 control-label ">E-mail address</label>
        <asp:TextBox runat="server" ID="tec_log_email" CssClass="col-md-2"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="tec_log_email" Text="You must enter your Email" />
    </div>
    <br />
    <!-- the textbook used to enter password. And it can not be blank. The textmode is 'password' so it will not be showed on the screen.-->
    <div class="form-group ">
        <label class="col-md-2 control-label ">Password</label>
        <asp:TextBox runat="server" TextMode="Password" ID="tec_log_password" CssClass="col-md-2"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="tec_log_password" Text="You must enter your Password" />
    </div>
    <!-- the button used to submit. It has the some cssclasses from bootstrap which make it pretty-->
    <asp:Button CssClass="btn btn-default col-md-2 col-md-offset-1" ID="btn_tec_log" runat="server" Text="Log In!" />
    <br />
    <br />
</div>

