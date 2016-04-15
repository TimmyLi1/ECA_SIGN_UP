<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="admin_main.ascx.vb" Inherits="ECA_WEB.admin_main" %>
<!-- *****************************************************************
This is the main page for admin
********************************************************************-->
<!-- *****************************************************************
At top of the page, there is a meau for admin. It contains:
    Usercenter              The page shows the new activities
    Student List            The page shows information of all the students
    Club List               The page shows information of all the clubs
    Trip booking report     The page shows the trip booking states
    Change Password         The page used to change the password
********************************************************************-->
<div class="nav">
    <!-- nav: make the menu pretty-->
    <div class="container">
        <!-- class of nav: to make sure all menuitems are in the container-->
        <div class="pull-left">
            <!-- pull-left: make the all items be one the left of the page-->
            <asp:Menu ID="Menu1" runat="server" StaticMenuItemStyle-CssClass="navfont " EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal" SkipLinkText="">
                <Items>
                    <asp:MenuItem Text="Usercenter" Value="0" />
                    <asp:MenuItem Text="Student List" Value="1" />
                    <asp:MenuItem Text="Club List" Value="2" />
                    <asp:MenuItem Text="Trip booking report" Value="3" />
                    <asp:MenuItem Text="Change Password" Value="4" />
                </Items>
            </asp:Menu>
                <!-- Menu1: The menuitems have different styles with under different conditions-->
                <!-- the first buttom has text of 'Usercenter' and value of 0-->
                <!-- the second buttom has text of 'Student List' and value of 1-->
                <!-- the third buttom has text of 'Club List' and value of 2-->
                <!-- the fourth buttom has text of 'Trip booking report"' and value of 3-->
                <!-- the fifth buttom has text of 'Change Password' and value of 4-->
        </div>
    </div>
</div>
<!-- *****************************************************************
Under the page is the main body of the page.
    Different panels will be showed when the user click different meunitems
********************************************************************-->
<div class=" jumbotronllll ">
    <!-- jumbotronllll:used to make the main body in the right posistion-->
    <!-- *****************************************************************
    Usercenter Plane:
        This plane contains some basic new information of the ECA system.
    ********************************************************************-->
    <asp:Panel runat="server" ID="Usercenter">
        <h1>Usercenter</h1>
        <hr />
        <asp:Label runat="server" ID="date" /><br />
        <!-- The label to show the data in that day-->
        <br />
        <asp:Label runat="server" ID="students" /><br />
        <!-- The number of students who is absent or late-->
        <br />
        <!-- *****************************************************************
        Student attendance table:
            This is the table used to show detail information of students who
            does not attend properly to admin. Following columns are showed:
            -Attendanceid
            -Student Name
            -Club Name
            -Attendance date
            -Attendance State
            -Student TutorGroup

            Three columns are also in this gridview but are not showed out:
            -Studentid
            -Clubid

            There are also one column used for buttons. 
            -Detail Report (This button will return value of 'Student_id' and club
             id in that row back)

            All the table in this document have the same outlooking properties:
            ID: studennt_report
            Key: attd_id
            cssclass: move it right for one step
            width: 986px
            bordercolor:grey
            header: dark grey background height 35

        ********************************************************************-->
        <asp:GridView
            ID="studennt_report"
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
            <EditRowStyle HorizontalAlign="Center" Height="35" />
            <Columns>
                <asp:BoundField DataField="attd_id" HeaderText="Attendanceid" Visible="True" />
                <asp:BoundField DataField="student_id" HeaderText="Studentid" Visible="false" />
                <asp:BoundField DataField="club_id" HeaderText="Club id" Visible="false" />
                <asp:BoundField DataField="Studentname" HeaderText="Student Name" Visible="True" />
                <asp:BoundField DataField="Clubname" HeaderText="Club Name" Visible="True" />
                <asp:BoundField DataField="attd_date" HeaderText="Attendance Date" Visible="True" />
                <asp:BoundField DataField="attdstate" HeaderText="Attendance State" Visible="True" />
                <asp:BoundField DataField="attd_detail" HeaderText="Extra Detail " Visible="True" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button ID="stuattreport" CommandArgument='<%# Eval("student_id") & "," & Eval("club_id")%>' CommandName="stuattreport" Text="Detail Report" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
    </asp:Panel>
    <!-- *****************************************************************
    Student_List Plane:
        This plane contains all the information of students. 
        Admin can search different students with their personal information
    ********************************************************************-->
    <asp:Panel runat="server" ID="Student_list">
        <h1>Student List</h1>
        <hr />
          <!-- *****************************************************************
           In the research part, admin can look for students with their:
              Name
              Club-Name
              Tutor-Group
            Student
          ********************************************************************-->
        <div class="container ">
            <div class="col-md-4 ">
                <asp:Label runat="server">Student Name:</asp:Label>
                <asp:TextBox runat="server" ID="stustudent" />
            </div>
            <div class="col-md-3 ">
                <asp:Label runat="server">Club Name:</asp:Label>
                <asp:TextBox runat="server" ID="stuclub" />
            </div>
            <div class="col-md-3 ">
                <asp:Label runat="server">Tutor Group:</asp:Label>
                <asp:TextBox runat="server" ID="stututorgroup" />
            </div>
            <asp:Button runat="server" CssClass="btn btn-default col-md-1" ID="btnstu" Text="Research!" />
            <br />
            <!-- *****************************************************************
             Student List Table:
                 This is the table used to show all the information of students.
                 Following columns are showed:
                 -Student ID
                 -Student Name
                 -Student Tutorgroup
                 -Sport Club Name
                 -Academic Club Name

                 Two columns are also in this gridview but are not showed out:
                 -Sport Club id
                 -Academic Club id

                 There are also one column used for buttons. 
                 -Detail Report (This button will return value of 'Sport Club id' and 
                  Academic Club id in that row )
             ********************************************************************-->
            <asp:GridView
                ID="stu_list"
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
                    <asp:BoundField DataField="student_id" HeaderText="Studentid" Visible="true" />
                    <asp:BoundField DataField="sport_club_id" HeaderText="Club id" Visible="false" />
                    <asp:BoundField DataField="aca_club_id" HeaderText="Club id" Visible="false" />
                    <asp:BoundField DataField="studentname" HeaderText="Student Name" Visible="True" />
                    <asp:BoundField DataField="student_tutorgroup" HeaderText="Student Tutorgroup" Visible="True" />
                    <asp:BoundField DataField="sportclubname" HeaderText="Sport Club Name" Visible="True" />
                    <asp:BoundField DataField="acaclubname" HeaderText="Academic Club Name" Visible="True" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="stuspattreport" CommandArgument='<%# Eval("student_id") & "," & Eval("sport_club_id")%>' CommandName="stuspattreport" Text="Sport Club Report" runat="server" />
                            <asp:Button ID="stuacattreport" CommandArgument='<%# Eval("student_id") & "," & Eval("aca_club_id")%>' CommandName="stuacattreport" Text="Academic Club Report" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
        </div>
    </asp:Panel>
    <br />
    <br />
    <!-- *****************************************************************
    Club_list Plane:
        This plane contains all the information of clubs. 
        Admin can search different clubs with their information.
    ********************************************************************-->
    <asp:Panel runat="server" ID="Club_list">
        <div class="container ">
            <h1>Club List</h1>
            <hr />
          <!-- *****************************************************************
           In the research part, admin can look for clubs with their:
              Name
              Instructing teacher
              Club Type
          ********************************************************************-->
            <div class="col-md-3">
                <asp:Label runat="server">Club Name:</asp:Label>
                <asp:TextBox runat="server" ID="clubclub" />
            </div>
            <!-- Textbox used to input club name-->
            <div class="col-md-4">
                <asp:Label runat="server">Teacher Name:</asp:Label>
                <asp:TextBox runat="server" ID="clubteacher" />
            </div>
            <!-- Textbox used to input teacher name-->
            <div class="col-md-3">
                <asp:Label runat="server">Club Type:</asp:Label>
                <!-- *****************************************************************
                 The Droplist has 3 different options. Each option contain a value.
                    All Club      -- 0
                    Academic CLub -- 1
                    Sport CLub    -- 2
                ********************************************************************-->
                <asp:DropDownList runat="server" ID="clubtype">
                    <asp:ListItem Value="0" Text="All Club" />
                    <asp:ListItem Value="1" Text="Academic Club" />
                    <asp:ListItem Value="2" Text="Sport Club" />
                </asp:DropDownList>
            </div>
            <!-- A button used to send information to backstage-->
            <asp:Button runat="server" CssClass="btn btn-default  col-md-1" ID="btnclub" Text="Research!" />
            <br />
            <!-- *****************************************************************
             Club List Table:
                 This is the table used to show all the information of clubs to admin.
                 Following columns are showed:
                 -club ID
                 -Club Name
                 -Teacher Name
                 -Club Type
                 -Number of Students

                 There are also one column used for buttons. 
                 -Student List (This button will return value of 'Club id' and 
                  in that row )
             ********************************************************************-->
            <asp:GridView
                ID="gvclub_list"
                runat="server"
                DataKeyNames="club_id"
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

                    <asp:BoundField DataField="club_id" HeaderText="Club id" Visible="true" />
                    <asp:BoundField DataField="club_name" HeaderText="Club Name" Visible="True" />
                    <asp:BoundField DataField="teacher_name" HeaderText="Teacher Name" Visible="True" />
                    <asp:BoundField DataField="clubtype" HeaderText="Club Type" Visible="True" />
                    <asp:BoundField DataField="number" HeaderText="Current Number" Visible="True" />
                    <asp:BoundField DataField="max_number" HeaderText="Max Number" Visible="True" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="clubreport" CommandArgument='<%# Eval("club_id")%>' CommandName="clubreport" Text="Student List" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>

            </asp:GridView>

        </div>
    </asp:Panel>
    <br />
    <!-- *****************************************************************
    Trip_booking Plane:
        This plane contains all the information of trip_booking and permit
        bookings if they are acceptable. 
        Admin can search different bookings with their detail information
    ********************************************************************-->
    <asp:Panel runat="server" ID="Trip_booking_report">
        <div class="container ">
            <h1>Trip Booking List</h1>
            <hr />
            <br />
            <!-- *****************************************************************
             Tripbooking List Table:
                 This is the table used to show all the information of bookings to admin.
                 Following columns are showed:
                 -Trip ID
                 -Club Name
                 -Teacher Name
                 -Trip Title
                 -Date
                 -State

                 There are also one column used for buttons. 
                 -Detail Report (This button will return value of 'Trip id'  
                  in that row and redirect the page to "trip" to show more inforamtion
                  of the trip.)
             ********************************************************************-->
            <asp:GridView
                ID="gvadmtripbooking"
                runat="server"
                DataKeyNames="trip_id"
                AutoGenerateColumns="false"
                BorderColor="#eeeeee"
                AllowSorting="true"
                CssClass=" col-md-11  col-md-offset-1 "
                Width="986px">

                <HeaderStyle BackColor="#444444" ForeColor="#ffffff" Height="35" />
                <AlternatingRowStyle BackColor="#f5f5f5" CssClass="gridItems" HorizontalAlign="Center" />
                <RowStyle CssClass="gridItems" HorizontalAlign="Center" />
                <PagerStyle HorizontalAlign="Right" CssClass="GridPager" />
                <FooterStyle HorizontalAlign="Center" Height="55" BackColor="#eeeeee" />
                <EditRowStyle HorizontalAlign="Center" Height="35" />

                <Columns>

                    <asp:BoundField DataField="trip_id" HeaderText="Trip id" Visible="True" />
                    <asp:BoundField DataField="clubname" HeaderText="Club Name" Visible="True" />
                    <asp:BoundField DataField="teachername" HeaderText="Teacher" Visible="True" />
                    <asp:BoundField DataField="trip_title" HeaderText="Trip Title" Visible="True" />
                    <asp:BoundField DataField="trip_date" HeaderText="Date" Visible="True" />
                    <asp:BoundField DataField="state" HeaderText="State" Visible="True" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="admintripdetailreport" CommandArgument='<%#Eval("trip_id")%>' CommandName="admintripdetailreport" Text="Detail Report" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-Width="30" HeaderText="select">
                        <ItemTemplate>
                            <asp:CheckBox ID="admintripbookingaccept" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

        </div>
        <asp:Button runat="server" CssClass="btn btn-default  col-md-1" ID="btnadmintripaccept" Text="Permit!" />
        <asp:Button runat="server" CssClass="btn btn-default  col-md-1" ID="btnadmintriprefuse" Text="Refuse!" />
        <!-- These two buttons are used to permit the trip or denied it. Admin can select the trip with the tickbox in the front.--> 
    </asp:Panel>
    <!-- *****************************************************************
        This panel is used for admin to change the password.
        The function is the same as other users'.
    ********************************************************************-->
    <asp:Panel runat="server" ID="Change_password">
        <h1>Account Management</h1>
        <hr />
        <!-- The following labels are used to show warnings if any input is invalidated.-->
        <asp:Label runat="server" CssClass="col-md-offset-2" ForeColor="Red" Visible="false" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ID="mananewpasswordform">Your password must be at least 6 characters long and contain one capital letter. (No Space)</asp:Label>
        <asp:Label runat="server" CssClass="col-md-offset-2" ForeColor="Red" Visible="false" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ID="mananewpasswordconfirmform">Please enter the same password in password confirmation.</asp:Label>
        <asp:Label runat="server" CssClass="col-md-offset-2" ForeColor="Red" Visible="false" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ID="manapasswordcheckform">Please enter correct original password and username.</asp:Label>
        <asp:Label runat="server" CssClass="col-md-offset-2" ForeColor="Red" Visible="false" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ID="mananewpasswordform2">Your password should less than 50 characters.</asp:Label><br />
        <!-- *****************************************************************
            To change the password, you need to enter following information:
            -UserName
            -Password
            -New UserName
            -New Password:
            -New Password confirmation

            I will take about validation in backstage codes.
        ********************************************************************-->
        <asp:Label runat="server" CssClass="col-md-1 ">UserName:</asp:Label>
        <asp:TextBox runat="server" CssClass="col-md-2 " ID="manausername" />
        <asp:RequiredFieldValidator ValidationGroup="vgmanaadmin" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="manausername" Text="You must enter your current account." /><br />
        <br />
        <asp:Label runat="server" CssClass="col-md-1 ">Password:</asp:Label>
        <asp:TextBox runat="server" CssClass="col-md-2" TextMode="Password" ID="manapassword" />*
        <asp:RequiredFieldValidator ValidationGroup="vgmanaadmin" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="manapassword" Text="You must enter your current password" /><br />
        <br />
        <asp:Label runat="server" CssClass="col-md-1 ">New UserName:</asp:Label>
        <asp:TextBox runat="server" CssClass="col-md-2 " ID="manaunewsername" /><br />
        <br />
        <asp:Label runat="server" CssClass="col-md-1 ">New Password:</asp:Label>
        <asp:TextBox runat="server" CssClass="col-md-2 " TextMode="Password" ID="mananewpassword" />*
        <asp:RequiredFieldValidator ValidationGroup="vgmanaadmin" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="mananewpassword" Text="You must enter your new password." /><br />
        <br />
        <asp:Label runat="server" CssClass="col-md-1 ">New Password Confirmation:</asp:Label>
        <asp:TextBox runat="server" CssClass="col-md-2 " TextMode="Password" ID="mananewpasswordconfirmation" />*
        <asp:RequiredFieldValidator ValidationGroup="vgmanaadmin" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="mananewpasswordconfirmation" Text="You must enter your new password confirmation." /><br />
        <br />
        <asp:Button runat="server" ValidationGroup="vgmanaadmin" CssClass=" col-md-2 btn btn-default " Text="Save" ID="btnmana" />
    </asp:Panel>
    <br />
</div>
<br />
