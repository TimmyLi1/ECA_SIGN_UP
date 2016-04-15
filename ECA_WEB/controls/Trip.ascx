<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="Trip.ascx.vb" Inherits="ECA_WEB.Trip" %>
<!-- *****************************************************************
This is the page is used to show the detail information of trips.
********************************************************************-->
<div class =" jumbotronllll ">
    <div class ="container ">
        <h1>Trip detail</h1>
        <br />
        <br />
        <br />
    <asp:Label CssClass ="col-md-2 " runat ="server" >Club Name:</asp:Label>
    <asp:TextBox CssClass ="col-md-2" runat ="server" ID ="labelclubname"/>
    <asp:Label CssClass ="col-md-2 " runat ="server" >Trip Title:</asp:Label>
    <asp:TextBox CssClass ="col-md-2 " runat ="server" ID ="labeltriptitle"/>
    <asp:Label CssClass ="col-md-2 " runat ="server" >Teacher:</asp:Label>
    <asp:TextBox CssClass ="col-md-2 " runat ="server" ID ="labeltripteacher"/>
            <br />
    <br />
    <asp:Label CssClass ="col-md-2" runat ="server" >Trip Date(YYYYMMDD):</asp:Label>
    <asp:TextBox CssClass="col-md-2" runat ="server" ID ="labeltripdate" />
    <asp:Label CssClass ="col-md-2" runat ="server" >Outwards time:</asp:Label>
    <asp:TextBox CssClass ="col-md-2" runat ="server" ID ="labeltripouttime"></asp:TextBox>
    <asp:Label CssClass ="col-md-2" runat ="server" >Backwards time:</asp:Label>
    <asp:TextBox CssClass ="col-md-2" runat ="server" ID ="labeltripbacktime"></asp:TextBox>
    <br />
    <br />
    <asp:Label CssClass ="col-md-2 " runat="server" >Description</asp:Label>
    <asp:TextBox runat ="server"  ID ="tripdescription" Height="193px" Width="315px"></asp:TextBox>
    <br />
    <asp:Label CssClass ="col-md-2" runat ="server" >State:</asp:Label>
    <asp:TextBox CssClass ="col-md-2" runat ="server" ID ="labeltripstate"></asp:TextBox>

    </div>
</div>
