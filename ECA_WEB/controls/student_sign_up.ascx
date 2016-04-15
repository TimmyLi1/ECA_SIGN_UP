<%@ Control Language="vb" EnableViewState="true" AutoEventWireup="false" CodeBehind="student_sign_up.ascx.vb" Inherits="ECA_WEB.student_sign_up" %>

<div class=" container jumbotronlll  ">
    <div class=" container  ">
        <h2 class="col-md-4"></h2>
        <h2 class="col-md-8">Registration</h2>
    </div>
    <br />
    <!-- *****************************************************************
    The following labels are used to show warning when the password does not 
    follow the requirement. The requirement includes:
        whether exists
        must be school's email
        correct format of tutor group
        validated password: larer than 6 
    ********************************************************************-->
    <div class="container col-md-offset-2">
        <asp:Label runat="server" CssClass="col-md-offset-2" ForeColor="Red" Visible="false" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ID="emailvalidation">This email has already existed.</asp:Label>
    </div>
    <div class="container col-md-offset-2 ">
        <asp:Label runat="server" CssClass="col-md-offset-2" ForeColor="Red" Visible="false" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ID="stu_reg_emailform">Please use school's email address</asp:Label>
    </div>
    <div class="container col-md-offset-2 ">
        <asp:Label runat="server" CssClass="col-md-offset-2" ForeColor="Red" Visible="false" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ID="stu_reg_tutorform">Please enter you tutor group in correct form. e.g. 13F1, IG1</asp:Label>
    </div>
    <div class="container col-md-offset-2 ">
        <asp:Label runat="server" CssClass="col-md-offset-2" ForeColor="Red" Visible="false" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ID="stu_reg_passform">Your password must be at least 6 characters long and less then 20 characters and contain one capital letter. (No Space)</asp:Label>
    </div>
    <div class="container col-md-offset-2 ">
        <asp:Label runat="server" CssClass="col-md-offset-2" ForeColor="Red" Visible="false" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ID="stu_reg_passconfirmform">Please enter the same password in password confirmation.</asp:Label>
    </div>
    <!-- *****************************************************************
    To build a new account, the user needs to fill these information:
        E-mail address
        password
        password confirmation
        Tutor Group

    Click the button to send these information to the system.
        If any of the information is blank, validator will tell the user what 
        is missed.
    ********************************************************************-->
    <div class="form-horizontal">
        <div class="form-group ">
            <label class="col-md-4 control-label ">E-mail address</label>
            <asp:TextBox runat="server" ID="stu_reg_email" CssClass="col-md-4"></asp:TextBox>
            <asp:RequiredFieldValidator ValidationGroup="register" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="stu_reg_email" Text="You must enter your Email" /><br />
        </div>
        <div class="form-group ">
            <label class="col-md-4 control-label ">Password</label>
            <asp:TextBox runat="server" TextMode="Password" ID="stu_reg_password" CssClass="col-md-4"></asp:TextBox>
            <asp:RequiredFieldValidator ValidationGroup="register" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="stu_reg_password" Text="You must enter your Password" /><br />
        </div>
        <div class="form-group ">
            <label class="col-md-4 control-label ">Password Confirmation</label>
            <asp:TextBox runat="server" TextMode="Password" ID="stu_reg_password_confirm" CssClass="col-md-4"></asp:TextBox>
            <asp:RequiredFieldValidator ValidationGroup="register" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="stu_reg_password_confirm" Text="You must enter your Password Confirmation" /><br />
        </div>
        <div class="form-group ">
            <label class="col-md-4 control-label ">Tutor Group</label>
            <asp:TextBox runat="server" ID="stu_reg_tutor" CssClass="col-md-4"></asp:TextBox>
            <asp:RequiredFieldValidator ValidationGroup="register" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="stu_reg_tutor" Text="You must enter your tutor group" /><br />
        </div>
        <br />
        <asp:Button CssClass="btn btn-default col-md-2 col-md-offset-4" ID="btn_stu_reg" runat="server" Text="Sign Up!" ValidationGroup="register" />
    </div>
    <br />
</div>
