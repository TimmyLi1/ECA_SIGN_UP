<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="header.ascx.vb" Inherits="ECA_WEB.header" %>
<!-- *****************************************************************
    There are two different panels in this page. The first panel will only
    be showed in Home page and the second panel is used for other page
    ********************************************************************-->
<asp:Panel ID="pnlnormal" runat="server">
    <!-- *****************************************************************
    The first panel has a class of jumbotron.
    It is used for all pages except the home page.
    ********************************************************************-->
    <div class="jumbotron">
        <div class="container">              
            <h1>ECA SIGN UP</h1>
        </div>
     </div>
</asp:Panel>

<asp:Panel ID="pnlhome" runat="server" Visible="false">
    <!-- *****************************************************************
    The second panel has a class of jumbotronll.
    I set its css format to make it fill the screen.
    And there are two botton one the header which link to the student_log_in
    and student_sign_up
    ********************************************************************-->
    <div class="jumbotronll">
        <div class="container">
            <h1>ECA SIGN UP</h1>
                <asp:Button ID="btn_2" runat="server" CssClass="btn btn-header" ForeColor ="Black"  style="height: 56px; width: 217px" Text="Students Log In" />
                <asp:button  CssClass ="btn btn-header" runat  ="server" ForeColor ="Black"  Text ="Students Sign Up" id ="btn_1"  style="height: 56px; width: 217px"/>
        </div>
    </div>
</asp:Panel>


