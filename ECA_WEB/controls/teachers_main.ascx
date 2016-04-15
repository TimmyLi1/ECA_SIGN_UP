<%@ Control Language="vb" AutoEventWireup="false" CodeBehind="teachers_main.ascx.vb" Inherits="ECA_WEB.teachers_main" %>
<!-- *****************************************************************
This is the main page for teachers.
********************************************************************-->
<!-- *****************************************************************
At top of the page, there is a meau for admin. It contains:
    Check Attendance            The page shows the new activities
    Club Management            The page shows information of all the students
    Account Management         The page shows information of all the clubs
    Trip booking               The page shows the trip booking states
********************************************************************-->
<div class="nav">
    <div class="container">
        <div class="pull-left">
            <asp:Menu ID="Menu1" runat="server" StaticMenuItemStyle-CssClass="navfont " EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal" SkipLinkText="">
                <Items>
                    <asp:MenuItem Text="Check attendance" Value="1" />
                    <asp:MenuItem Text="Club Management" Value="2" />
                    <asp:MenuItem Text="Account Management" Value="3" />
                    <asp:MenuItem Text="Trip Booking" Value="4" />
                </Items>
            </asp:Menu>
            <!-- Menu1: The menuitems have different styles with under different conditions-->
            <!-- the first buttom has text of 'Check attendance' and value of 1-->
            <!-- the second buttom has text of 'Club Management' and value of 2-->
            <!-- the third buttom has text of 'Account Management' and value of 3-->
            <!-- the fourth buttom has text of 'Trip booking"' and value of 4-->
        </div>
    </div>
</div>
<div class="jumbotronllll">
    <!-- *****************************************************************
    Attendance Plane:
        This plane contains some basic information of the system, like date
        and student list.
    ********************************************************************-->
    <asp:Panel runat="server" ID="panelcheckattendance" CssClass="container " Visible="false">
        <h1>Attendance</h1>
        <hr />
        <div class="container ">
            <asp:Label CssClass="h2" ID="sportclub" runat="server" />
        </div>
        <div class="container ">
            <!-- *****************************************************************
        Sport Attendance table:
            This is the table used for teachers to chack each students' attendance
            state. Following columns are showed:
            -Student id
            -Student Firstname
            -Student Secondname
            -Student tutorgroup

            There are also one column used to enter the state.. 
            -Attendance state (droplist)
            -description (textbox)

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
                ID="spattendance"
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
                            <asp:DropDownList ID="list1" runat="server">
                                <asp:ListItem Value="1">Attended</asp:ListItem>
                                <asp:ListItem Value="2">Absent</asp:ListItem>
                                <asp:ListItem Value="3">Late</asp:ListItem>
                                <asp:ListItem Value="4">Other</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                        <HeaderTemplate>
                            Attendance Status
                        </HeaderTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:TextBox ID="attdetail" runat="server"></asp:TextBox>
                        </ItemTemplate>
                        <HeaderTemplate>
                            Description
                        </HeaderTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="stuattreport" CommandArgument='<%# Eval("student_id")%>' CommandName="stuattreport" Text="Detail Report" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
        <div class="container">
            <asp:Label CssClass="h2" ID="academicclub" runat="server" />
        </div>
        <div class="container ">
            <!-- *****************************************************************
            Academic Attendance table:
                It is a similar table with the one above but just the other club.
        ********************************************************************-->
            <asp:GridView
                ID="acaattendance"
                runat="server"
                DataKeyNames="student_id"
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

                    <asp:BoundField DataField="student_id" HeaderText="Studentid" Visible="True" />
                    <asp:BoundField DataField="student_firname" HeaderText="First Name" Visible="True" />
                    <asp:BoundField DataField="student_famname" HeaderText="Family Name" Visible="True" />
                    <asp:BoundField DataField="student_tutorgroup" HeaderText="Student TutorGroup" Visible="True" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:DropDownList ID="list1" runat="server">
                                <asp:ListItem Value="1">Attended</asp:ListItem>
                                <asp:ListItem Value="2">Absent</asp:ListItem>
                                <asp:ListItem Value="3">Late</asp:ListItem>
                                <asp:ListItem Value="4">Other</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                        <HeaderTemplate>
                            Attendance Status
                        </HeaderTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:TextBox ID="attdetail" runat="server"></asp:TextBox>
                        </ItemTemplate>
                        <HeaderTemplate>
                            Description
                        </HeaderTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="stuattreport" CommandArgument='<%# Container.DataItemIndex %>' CommandName="stuattreport" Text="Detail Report" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>
        <br />
        <div class="col-md-offset-2 col-md-8 ">
            <asp:Button ID="attsubmit" runat="server" Text="submit" CssClass="btn btn-default btn-lg btn-block col-md-offset-2 col-lg-6 " Height="57px" Width="215px" />
        </div>
    </asp:Panel>
    <!-- *****************************************************************
    Club Setting Plane:
        This plane is used to change the setting of the club, including
        add a new club or delete the club, change the max number of the club
        and change the name of the club.
    ********************************************************************-->
    <asp:Panel runat="server" ID="paneladdclub" Visible="false">
        <h1>Club Setting</h1>
        <hr />
        <h2>Sport Club</h2>
        <!-- The following two buttons are used to show different panels in order to do modify to the settings-->
        <asp:Button runat="server" ID="addnewspclubbtn" CssClass="btn btn-default col-md-2 " Text="Add" />
        <asp:Button runat="server" ID="modifyspclubbtn" CssClass="btn btn-default col-md-2 " Text="Modify" />
        <asp:Button runat="server" ID="removespclubbtn" CssClass="btn btn-default col-md-2 " Text="Romove" />
         <br />
        <!-- *****************************************************************
         Club setting---Sport club---textbox Panel
            This panel is used to add or modify the settings.
            When the change is finished, use button to submit.
        ********************************************************************-->
        <asp:Panel runat="server" Visible="false" ID="spclubsetting">
            <br />
            <div class="form-group ">
                <label class="col-md-2 control-label ">Club Name</label>
                <asp:TextBox runat="server" ID="spclubname" CssClass="col-md-2"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="sport" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="spclubname" Text="You must enter your Club Name" /><br />
            </div>
            <br />
            <div class="form-group ">
                <label class="col-md-2 control-label ">Max member</label>
                <asp:TextBox runat="server" ID="spclubmaxmember" CssClass="col-md-2"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="sport" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="spclubmaxmember" Text="You must set the Maximum number of the club" /><br />
            </div>
            <br />
            <asp:Button ValidationGroup="sport" CssClass="btn btn-default col-md-2 col-md-offset-1" ID="saveaspclubbtn" runat="server" Text="Submit!" />
        </asp:Panel>
        <br />
        <!-- *****************************************************************
         Club setting---Academic club---label Panel
            This panel is used to show the current setting of the clubs.
        ********************************************************************-->
        <asp:Panel runat="server" Visible="true" ID="spclubsettinglabel">
            <div class="form-group ">
                <label class="col-md-2 control-label ">Club Name:</label>
                <asp:Label runat="server" ID="spclubnamelabel" CssClass="col-md-2"></asp:Label>
            </div>
            <br />
            <br />
            <div class="form-group ">
                <label class="col-md-2 control-label ">Max member:</label>
                <asp:Label runat="server" ID="spclubmaxmemberlabel" CssClass="col-md-2"></asp:Label>
            </div>
            <br />
        </asp:Panel>
        <hr />
        <h2>Academic Club</h2>
        <!-- The following two buttons are used to show different panels in order to do modify to the settings-->
        <asp:Button runat="server" ID="addnewacclubbtn" CssClass="btn btn-default col-md-2 " Text="Add" />
        <asp:Button runat="server" ID="modifyacclubbtn" CssClass="btn btn-default col-md-2 " Text="Modify" />
        <asp:Button runat="server" ID="removeacclubbtn" CssClass="btn btn-default col-md-2 " Text="Romove" />
         <br />
        <!-- *****************************************************************
         Club setting---Academic club---textbox Panel
            This panel is used to add or modify the settings.
            When the change is finished, use button to submit.
        ********************************************************************-->
        <asp:Panel runat="server" Visible="false" ID="acclubsetting">
            <br />
            <asp:Label runat ="server" CssClass ="col-md-offset-2" ForeColor  ="Red" Visible ="false"  Font-Bold="true" Font-Size ="X-Small"  Font-Italic="true"    ID ="acclubnamevali">Your club name should less than 50 characters.</asp:Label><br />
            <div class="form-group ">
                <label class="col-md-2 control-label ">Club Name</label>
                <asp:TextBox runat="server" ID="acclubname" CssClass="col-md-2"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="sport" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="acclubname" Text="You must enter your Club Name" /><br />
            </div>
            <br />
            <div class="form-group ">
                <label class="col-md-2 control-label ">Max member</label>
                <asp:TextBox runat="server" ID="acclubmaxnumber" CssClass="col-md-2"></asp:TextBox>
                <asp:RequiredFieldValidator ValidationGroup="aca" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="acclubmaxnumber" Text="You must set the Maximum number of the club" /><br />
            </div>
            <br />
            <asp:Button ValidationGroup="aca" CssClass="btn btn-default col-md-2 col-md-offset-4" ID="saveacclubbtn" runat="server" Text="Submit!" />
        </asp:Panel>
        <br />
        <!-- *****************************************************************
         Club setting---Academic club---label Panel
            This panel is used to show the current setting of the clubs.
        ********************************************************************-->
        <asp:Panel runat="server" Visible="true" ID="acclubsettinglabel">
            <div class="form-group ">
                <label class="col-md-2 control-label ">Club Name:</label>
                <asp:Label runat="server" ID="acclubnamelabel" CssClass="col-md-2"></asp:Label>
            </div>
            <br />
            <br />
            <div class="form-group ">
                <label class="col-md-2 control-label ">Max member:</label>
                <asp:Label runat="server" ID="acclubmaxnumberlabel" CssClass="col-md-2"></asp:Label>
            </div>
            <br />
        </asp:Panel>
    </asp:Panel>
    <!-- *****************************************************************
    Trip Booking Plane:
        This plane is used show all the trip the teacher asked and the result
        of it. Also, it can be used to send a request.
        Teachers can search different trips with some paraments.
    ********************************************************************-->
    <asp:Panel runat="server" ID="paneltripbooking" Visible="false">
        <h1>Trip Booking</h1>
        <hr />
        <!-- when this button is clicked, the adding panel will be showed-->
        <asp:Button runat="server" ID="btnaddtripbooking" CssClass="btn btn-lg col-md-3 col-md-offset-1 " Text="Add" />
        <br />
        <!-- *****************************************************************
         Adding Plane:
           This plane is used to add a new trip booking.
           Teacher need to fill details and send it to admin and wait for permission. 
           Following information is needed:
               Club name ( drop list)
               Trip title
               Date
               Outwards time:
               Backwards time:
               Description
               
         ********************************************************************-->
        <asp:Panel runat="server" ID="paneltripbookingadd" Visible="false">
            <br />
            <div class="container">
                <br />
                <asp:RequiredFieldValidator ValidationGroup="trip" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="triptexttriptitle" Text="You must enter your Trip Title" /><br />
                <asp:RequiredFieldValidator ValidationGroup="trip" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="tripouttime" Text="You must enter your outward time" /><br />
                <asp:RequiredFieldValidator ValidationGroup="trip" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="tripdate" Text="You must enter your trip date" /><br />
                <asp:RequiredFieldValidator ValidationGroup="trip" CssClass="text-danger " runat="server" ForeColor="Red" Font-Bold="true" Font-Size="X-Small" Font-Italic="true" ControlToValidate="tripbacktime" Text="You must enter your backward time" /><br />
                <asp:Label CssClass="col-md-2 " runat="server">Club Name:</asp:Label>
                <asp:DropDownList CssClass="col-md-2" runat="server" ID="tripdropclubname">
                </asp:DropDownList>
                <asp:Label CssClass="col-md-2 " runat="server">Trip Title:</asp:Label>
                <asp:TextBox CssClass="col-md-2 " runat="server" ID="triptexttriptitle" />
                <asp:Label CssClass="col-md-2" runat="server">Trip Date(YYYYMMDD):</asp:Label><asp:TextBox CssClass="col-md-2" runat="server" ID="tripdate" />
                <br />
                <br />
                <asp:Label CssClass="col-md-2" runat="server">Outwards time:</asp:Label>
                <asp:TextBox CssClass="col-md-2" runat="server" ID="tripouttime"></asp:TextBox>
                <asp:Label CssClass="col-md-2" runat="server">Backwards time:</asp:Label>
                <asp:TextBox CssClass="col-md-2" runat="server" ID="tripbacktime"></asp:TextBox>
                <br />
                <br />
                <asp:Label CssClass="col-md-2 " runat="server">Description</asp:Label>
                <asp:TextBox runat="server" ID="tripdescription" Height="193px" Width="315px"></asp:TextBox>
                <br />
                <asp:Button runat="server" ValidationGroup="trip" CssClass="btn btn-default  col-md-1" ID="btnpaneltripadd" Text="Submmit!" />
            </div>
        </asp:Panel>
        <br />
        <br />
        <!-- *****************************************************************
            Also in the panel, the history record will be showed in table. The 
            information in it are the sane to the ones teachers wrote before 
            except a new column called "state". It shows the result feedback 
            by the admin.
        ********************************************************************-->
        <div class="container ">
            <h1>History Record</h1>
            <hr />
            <!-- search engine:
                    with paraments: name and date-->
            <div class="col-md-5">
                <asp:Label runat="server">Date:(YYYYMMDD)</asp:Label>
                <asp:TextBox runat="server" ID="restripclubdate" />
            </div>
            <asp:Button runat="server" CssClass="btn btn-default  col-md-1" ID="btntripclubresearch" Text="Research!" />
            <br />
            <br />
            <!-- *****************************************************************
             Trip Booking Table:
                 This is the table used to show all the histoy record of trip booking.
                 Following columns are showed:
                 -Trip id
                 -Club Name
                 -Teacher Name
                 -Trip Title
                 -Date
                 -State

                 There are also one column used for buttons. 
                 -Student List (To show more information of the trip, like decription)
             ********************************************************************-->
            <asp:GridView
                ID="gvteatripbooking"
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
                            <asp:Button ID="tripdetailreport" CommandArgument='<%#Eval("trip_id")%>' CommandName="tripdetailreport" Text="Detail Report" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </asp:Panel>
</div>
