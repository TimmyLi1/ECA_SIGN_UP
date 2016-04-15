<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="student_main.ascx.vb" Inherits="ECA_WEB.student_main" %>
    <!-- *****************************************************************
     This page is the main page for students. It lists all the clubs students
    can choose and students can choose only one sport club and one academic 
    club.
    ********************************************************************-->
<div class=" container ">
    <h1>Personal Information</h1>
    <hr />
    <!-- *****************************************************************
     This part will list student's name and the two clubs the student choosed.
    ********************************************************************-->
    <div class="container col-md-offset-2">
        <asp:Button runat="server" CssClass="btn btn-default col-md-2 " ID="changepassword" Text="Change Password" /><br />
        <br />
        <asp:Label runat="server" ID="name" /><br />
        <asp:Label runat="server" ID="sportclub" /><br />
        <asp:Label runat="server" ID="academicclub" /><br />
    </div>
</div>
<div class="container ">
    <h1>Sport ECAs</h1>
    <hr />
    <!-- *****************************************************************
     This part shows all the information of sport ECAs with one table.
        The table includes:
        Club id
        Club name
        Current number of students
        Max number
        Existing Student names

     There is a checkbox at the last column of each row and students can 
     select the club they want by click the checkbox.

    All the table in this document have the same outlooking properties:
    ID: studennt_report 
    Key: attd_id
    cssclass: move it right for one step
    width: 986px
    bordercolor:grey
    header: dark grey background height 35
    ********************************************************************-->
    <div class="container">
        <asp:GridView
            ID="spclub"
            runat="server"
            DataKeyNames="Club_id"
            AutoGenerateColumns="false"
            BorderColor="#eeeeee"
            AllowSorting="true"
            CssClass="col-md-11 col-md-offset-1 "
            Width="986px">
            <HeaderStyle BackColor="#444444" ForeColor="#ffffff" Height="35" />
            <AlternatingRowStyle BackColor="#f5f5f5" CssClass="gridItems" HorizontalAlign="Center" />
            <RowStyle CssClass="gridItems" HorizontalAlign="Center" />
            <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
            <FooterStyle HorizontalAlign="Center" Height="55" BackColor="#eeeeee" />
            <EditRowStyle HorizontalAlign="Center" Height="35" />
            <Columns>
                <asp:BoundField DataField="club_id" HeaderText="ClubID" Visible="True" HeaderStyle-Width="50px" />
                <asp:BoundField DataField="cLub_name" HeaderText="Club bname" Visible="True" HeaderStyle-Width="300px" />
                <asp:BoundField DataField="number" HeaderText="Current Number" Visible="True" HeaderStyle-Width="100px" />
                <asp:BoundField DataField="max_number" HeaderText="Max Number" Visible="True" HeaderStyle-Width="100px" />
                <asp:BoundField DataField="exiting_students" HeaderText="Existing students" Visible="True" HeaderStyle-Width="300px" />
                <asp:TemplateField HeaderStyle-Width="30" HeaderText="select">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>
    </div>
</div>
<div class="container ">
    <h1>Skills ECAs</h1>
    <hr />
    <!-- *****************************************************************
     This part shows all the information of Academic ECAs with one table.
        The table includes:
        Club id
        Club name
        Current number of students
        Max number
        Existing Student names

     There is a checkbox at the last column of each row and students can 
     select the club they want by click the checkbox.
    ********************************************************************-->
    <div class="container">
        <asp:GridView
            ID="acclub"
            runat="server"
            DataKeyNames="Club_id"
            AutoGenerateColumns="false"
            BorderColor="#eeeeee"
            AllowSorting="true"
            CssClass="col-md-11 col-md-offset-1  "
            Width="986px">
            <HeaderStyle BackColor="#444444" ForeColor="#ffffff" Height="35" />
            <AlternatingRowStyle BackColor="#f5f5f5" CssClass="gridItems" HorizontalAlign="Center" />
            <RowStyle CssClass="gridItems" HorizontalAlign="Center" />
            <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
            <FooterStyle HorizontalAlign="Center" Height="55" BackColor="#eeeeee" />
            <EditRowStyle HorizontalAlign="Center" Height="35" />
            <Columns>
                <asp:BoundField DataField="club_id" HeaderText="ClubID" Visible="True" HeaderStyle-Width="50px" />
                <asp:BoundField DataField="cLub_name" HeaderText="Club Name" Visible="True" HeaderStyle-Width="300px" />
                <asp:BoundField DataField="number" HeaderText="Current Number" Visible="True" HeaderStyle-Width="100px" />
                <asp:BoundField DataField="max_number" HeaderText="Max Number" Visible="True" HeaderStyle-Width="100px" />
                <asp:BoundField DataField="exiting_students" HeaderText="Existing students" Visible="True" HeaderStyle-Width="300px" />
                <asp:TemplateField HeaderStyle-Width="30" HeaderText="select">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox2" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</div>
<br />
    <!-- *****************************************************************
    After student select their clubs, they can click this button to submit.
    ********************************************************************-->
<div class="container ">
    <asp:Button runat="server" Text="Submit" ID="selectsubmmit" CssClass="btn-default btn col-md-offset-3 col-md-6" />
</div>
<br />
