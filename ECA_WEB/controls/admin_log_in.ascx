<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="admin_log_in.ascx.vb" Inherits="ECA_WEB.admin_log_in" %>

    <!-- *****************************************************************
    This is the page for admin to log in.
    ********************************************************************-->
<div class="jumbotronlll body-content">
    <div class="container">
        <!-- *****************************************************************
        This is the title of the page.
        ********************************************************************-->
        <h2 class="col-md-10">Admin Login</h2>
    </div>
    <br />
    <br />
    <div class="form-group form-inline">
        <!-- *****************************************************************
        The part for users to enter the username.
        ********************************************************************-->
        <label class="col-md-2 control-label ">Username</label>
        <asp:TextBox runat="server" ID="admin_username" CssClass="col-md-2"></asp:TextBox>
         <!-- *****************************************************************
          Check if the textbox has value. If is hasn't, warning will be showed
         to remain user.
         ********************************************************************-->
        <asp:RequiredFieldValidator CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="admin_username" Text="You must enter your Username" />
    </div>
    <div class="form-group ">
        <!-- *****************************************************************
        The part for users to enter the password.
        ********************************************************************-->
        <label class="col-md-2 control-label ">Password</label>
        <asp:TextBox runat="server" TextMode="Password" ID="admin_password" CssClass="col-md-2"></asp:TextBox>
         <!-- *****************************************************************
         Check if the textbox has value. If is hasn't, warning will be showed
         to remain user.
         ********************************************************************-->
        <asp:RequiredFieldValidator CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="admin_password" Text="You must enter your Password" />
    </div>
    <!-- *****************************************************************
    The button to log in.
    ********************************************************************-->
    <asp:Button CssClass="btn btn-default col-md-2 col-md-offset-1" ID="btn_admin_log" runat="server" Text="Log In!" />
    <br />
    <br />
</div>

