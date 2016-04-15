<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="admin_studentlist.ascx.vb" Inherits="ECA_WEB.admin_studentlist" %>
<!-- This label shows the club name searched by the admin-->
<asp:Label runat="server" ID="student_club_name" CssClass="h1 "></asp:Label>
<hr />
<!-- *****************************************************************
The whole page has only one gridview, which shows the student list of 
the club we choosed. It contains:
    Student id
    Student First Name
    Student Second Name
    Student Tutor Group

And a button,
    Detail Inforamtion
    It shows all attendance record of the student in that club.

All the table in this document have the same outlooking properties:
ID: studennt_report 
Key: attd_id
cssclass: move it right for one step
width: 986px
bordercolor:grey
header: dark grey background height 35
********************************************************************-->
<div class=" container ">
    <asp:GridView
        ID="gvclubstulist"
        runat="server"
        DataKeyNames="student_id"
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

            <asp:BoundField DataField="student_id" HeaderText="Studentid" Visible="True" />
            <asp:BoundField DataField="student_firname" HeaderText="First Name" Visible="True" />
            <asp:BoundField DataField="student_famname" HeaderText="Family Name" Visible="True" />
            <asp:BoundField DataField="student_tutorgroup" HeaderText="Student TutorGroup" Visible="True" />
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="stuattreport" CommandArgument='<%# Eval("student_id")%>' CommandName="stuattreport" Text="Detail Report" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</div>
<br />
