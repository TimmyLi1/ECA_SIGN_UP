<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="student_changep.ascx.vb" Inherits="ECA_WEB.student_changep" %>
<div class="jumbotronlll">
    <h1>Account Management</h1>
    <hr />
    <!-- The following labels are used to show warnings if any input is invalidated.-->
    <div class="container">
        <asp:Label runat="server" CssClass="col-md-offset-2" ForeColor="Red" Visible="false" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ID="mananewpasswordform">Your password must be at least 6 characters long and contain one capital letter. (No Space)</asp:Label><br />
        <asp:Label runat="server" CssClass="col-md-offset-2" ForeColor="Red" Visible="false" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ID="mananewpasswordconfirmform">Please enter the same password in password confirmation.</asp:Label><br />
        <asp:Label runat="server" CssClass="col-md-offset-2" ForeColor="Red" Visible="false" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ID="manapasswordcheckform">Please enter correct original password and username.</asp:Label><br />
        <asp:Label runat="server" CssClass="col-md-offset-2" ForeColor="Red" Visible="false" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ID="mananewpasswordform2">Your password should less than 50 characters.</asp:Label><br />
    </div>
    <br />
        <!-- *****************************************************************
            To change the password, you need to enter following information:
            -UserName
            -Password
            -New Password:
            -New Password confirmation

            I will take about validation in backstage codes.

            For each textbox, there's a validator to check whether it is blank.
            If so, when students click the button, it will not work and the
            warning will be showed.
        ********************************************************************-->
    <asp:Label runat="server" CssClass="col-md-2 ">UserName:</asp:Label>
    <asp:TextBox runat="server" CssClass="col-md-2 " ID="username" />
        <asp:RequiredFieldValidator ValidationGroup="vgmanaadmin" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="username" Text="You must enter your current account." /><br />
    <br />
    <asp:Label runat="server" CssClass="col-md-2 ">Password:</asp:Label>
    <asp:TextBox runat="server" CssClass="col-md-2" TextMode="Password" ID="oldpassword" />*
        <asp:RequiredFieldValidator ValidationGroup="vgmanaadmin" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="oldpassword" Text="You must enter your current password" /><br />
    <br />
    <asp:Label runat="server" CssClass="col-md-2 ">New Password:</asp:Label>
    <asp:TextBox runat="server" CssClass="col-md-2 " TextMode="Password" ID="newpassword" />*
        <asp:RequiredFieldValidator ValidationGroup="vgmanaadmin" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="newpassword" Text="You must enter your new password." /><br />
    <br />
    <asp:Label runat="server" CssClass="col-md-2 ">New Password Confirmation:</asp:Label>
    <asp:TextBox runat="server" CssClass="col-md-2 " TextMode="Password" ID="newpasswordconfirmation" />*
        <asp:RequiredFieldValidator ValidationGroup="vgmanaadmin" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="newpasswordconfirmation" Text="You must enter your new password confirmation." /><br />
    <br />
    <asp:Button runat="server" ValidationGroup="vgmanaadmin" CssClass=" col-md-2 btn btn-default " Text="Save" ID="btnmana" />
    <br />
</div>
<br />
