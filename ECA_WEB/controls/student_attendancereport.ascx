<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="student_attendancereport.ascx.vb" Inherits="ECA_WEB.student_attendancereport" %>
<!-- This label shows the club name and student searched by the admin or teachers-->
<asp:Label runat="server" ID="student_club_name" CssClass="h1 "></asp:Label>
<hr />
<div class="container ">
<!-- *****************************************************************
The whole page has only one gridview, which shows the  list of 
attendance information of a student in one particular club. It contains:
    Attendance id
    Date
    Attendance status
    Attendance detail

All the table in this document have the same outlooking properties:
ID: studennt_report 
Key: attd_id
cssclass: move it right for one step
width: 986px
bordercolor:grey
header: dark grey background height 35
********************************************************************-->
    <asp:GridView
        ID="sttudentattendancereport"
        runat="server"
        DataKeyNames="attd_id"
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
            <asp:BoundField DataField="attd_id" HeaderText="Attendance ID" Visible="True" HeaderStyle-Width="100px" />
            <asp:BoundField DataField="attd_date" HeaderText="Date" Visible="True" HeaderStyle-Width="100px" />
            <asp:BoundField DataField="Attendancestate" HeaderText="Attendance status" Visible="True" HeaderStyle-Width="200px" />
            <asp:BoundField DataField="attd_detail" HeaderText="Attenance Detail" Visible="True" HeaderStyle-Width="200px" />
        </Columns>
    </asp:GridView>
</div>
