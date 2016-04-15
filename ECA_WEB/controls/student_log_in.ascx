<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="student_log_in.ascx.vb" Inherits="ECA_WEB.student_log_in" %>
    <!-- *****************************************************************
        The page used by students to log in.
    ********************************************************************-->
<div class="jumbotronlll body-content">
    <div class="container">
        <h2 class="col-md-10">Student Login</h2>
    </div>
    <br />
    <br />
    <!-- the textbook used to enter e-maill. And it can not be blank-->
    <div class="form-group form-inline">
        <label class="col-md-2 control-label ">E-mail address</label>
        <asp:TextBox runat="server" ID="stu_log_email" CssClass="col-md-2"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="stu_log_email" Text="You must enter your Email" />
    </div>
    <br />
    <!-- the textbook used to enter password. And it can not be blank. The textmode is 'password' so it will not be showed on the screen.-->
    <div class="form-group ">
        <label class="col-md-2 control-label ">Password</label>
        <asp:TextBox runat="server" TextMode="Password" ID="stu_log_password" CssClass="col-md-2"></asp:TextBox>
        <asp:RequiredFieldValidator CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="stu_log_password" Text="You must enter your Password" />
    </div>
    <br />
    <!-- the button used to submit. It has the some cssclasses from bootstrap which make it pretty-->
    <asp:Button CssClass="btn btn-default col-md-3 " ID="btn_stu_log" runat="server" Text="Log In!" />
    <!-- If the user forgets  his or her password, Forget Password can help find the password back by sending the e-mail-->
     <asp:Menu CssClass="col-md-2  form-inline list-inline " runat="server" Orientation="Horizontal" ID="stulogmenu">
        <Items>
            <asp:MenuItem Text="Forget password" Value="0" />
        </Items>
    </asp:Menu>
    <br />
    <br />
</div>

