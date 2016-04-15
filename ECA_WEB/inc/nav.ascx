<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="nav.ascx.vb" Inherits="ECA_WEB.nav" %>
    <!-- *****************************************************************
        There are also two different panels in this page.
        one panel is used for users who have not logged in yet. 
        THe other one is used for users who have already logged in. 
        So they call easy go back to there homepage ot logoff.
    ********************************************************************-->
<asp:Panel ID="nav" runat="server">
    <!-- *****************************************************************
        This panel is used for users who have not logged in.
        There are four button here.
        Two on the left lead to home page and about page. 
        Two on the right lead to teacher login page and student login page.
    ********************************************************************-->
    <div class="nav">
        <div class="container">
    <!-- *****************************************************************
        Two on the left lead to home page and about page. 
    ********************************************************************-->
            <div class="pull-left">
                <asp:Menu ID="NavMenu1" runat="server" StaticMenuItemStyle-CssClass="navfont " EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal" SkipLinkText="">
                     <Items>
                        <asp:MenuItem Text="Home" Value="1" />
                        <asp:MenuItem Text="About" Value="2" />
                    </Items>
                </asp:Menu>
                    <!-- the first buttom has text of 'Home' and value of 1-->
                    <!-- the second buttom has text of 'About' and value of 2-->
            </div>
    <!-- *****************************************************************
        Two on the right lead to teacher login page and student login page.
    ********************************************************************-->
            <div class="pull-right">
                <asp:Menu ID="NavMenu2" runat="server" StaticMenuItemStyle-CssClass="navfont " EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal" SkipLinkText="">
                    <Items>
                        <asp:MenuItem Text="Teachers" Value="3" />
                        <asp:MenuItem Text="Students" Value="4" />
                    </Items>
                </asp:Menu>
                    <!-- the first buttom has text of 'Teachers' and value of 3-->
                    <!-- the second buttom has text of 'Students' and value of 4-->
            </div>
        </div>
    </div>
</asp:Panel>

<asp:Panel ID="nav_stu" runat="server">
    <!-- *****************************************************************
        This panel is used for users who have already logged in.
        There are four button here.
    ********************************************************************-->
    <div class="nav">
        <div class="container">
    <!-- *****************************************************************
        Two on the left lead to home page and about page. 
    ********************************************************************-->
            <div class="pull-left">
                <asp:Menu ID="NavstuMenu1" runat="server" StaticMenuItemStyle-CssClass="navfont " EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal" SkipLinkText="">
                    <Items>
                        <asp:MenuItem Text="Home" Value="1" />
                        <asp:MenuItem Text="About" Value="2" />
                    </Items>
                </asp:Menu>
                    <!-- the first buttom has text of 'Home' and value of 1-->
                    <!-- the second buttom has text of 'About' and value of 2-->
            </div>
    <!-- *****************************************************************
        Two on the right lead to usercenter page and logoff page
    ********************************************************************-->
            <div class="pull-right">
                <asp:Menu ID="NavstuMenu2" runat="server" StaticMenuItemStyle-CssClass="navfont " EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal" SkipLinkText="">
                     <Items>
                        <asp:MenuItem Text="User Center" Value="11" />
                        <asp:MenuItem Text="Log off" Value="12" />
                    </Items>
                </asp:Menu>
                    <!-- the first buttom has text of 'User Center' and value of 11-->
                    <!-- the first buttom has text of 'Log off' and value of 12-->
            </div>
        </div>
    </div>
</asp:Panel>
