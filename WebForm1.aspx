<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PersonalDetailsRedesign.WebForm1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Staff Personal Details Form</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/app.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" />
</head>
<body>
       <nav class="navbar navbar-inverse">
    <div class="container">
      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="http://atintranet/default.aspx"><class="auto-style1">Atintranet</a>
      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
         <li class="active"><a href="http://web. .ie/personaldetails/"> Personal Details Form</a></li>
         <li><a href="http://web. .ie/holiday/"> Weekend Requests</a></li>
         <li><a href="http://web. .ie/cashadvance/">Cash Advance Form</a></li>
         <li><a href="http://web. .ie/overtimeform/">Overtime Form</a></li>
       </ul>
 </div><!-- /.navbar-collapse -->
</div><!-- /.container-fluid -->
</nav>
    <div class="container">

        <form runat="server" id="form1">
        <div class="jumbotron">
            <img alt="" class="auto-style4" src="pic/irlfooter.jpg" />
            <h4>Personal Details Form</h4>
            <p>We would appreciate if you could please complete the form to follow. These will be kept strictly confidential.</p>
            <h3>GENERAL INFORMATION (REQUIRED)</h3>
            <ul>
                <li>Complete Personal Details Form</li>
                <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://atintranet/Shared%20Documents/Staff%20Handbooks%20and%20Induction/Employee%20Handbook_OCT18_ONLINE.pdf">Employee Handbook</asp:HyperLink>
                </li>
                 <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="http://atintranet/Shared%20Documents/Health%20and%20Safety/Employee%20Safety%20Handbook%2010.18.pdf">Health &amp; Safety Handbook</asp:HyperLink>
                </li>
           
            </ul>
            <p>All fields Must be filled. Please </p>
        </div>

            <div>
                <h4>PERSONAL INFORMATION</h4>
                <hr />

            </div>
            <div class="form-group row">
                <label id="Label17t" runat="server" class="col-sm-2 col-form-label col-form-label-sm">Title</label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="DropDownList10t" runat="server" CssClass="col-sm-10 form-control">
                        <asp:ListItem>Please Select...</asp:ListItem>
                        <asp:ListItem>Mr</asp:ListItem>
                        <asp:ListItem>Ms</asp:ListItem>
                        <asp:ListItem>Miss</asp:ListItem>
                        <asp:ListItem>Mrs</asp:ListItem>
                        <asp:ListItem>Dr</asp:ListItem>
                        <asp:ListItem>Mx</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
 
            <div class="form-group row">
                <label id="Label1" runat="server" class="col-sm-2 col-form-label col-form-label-lg">First Name</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control form-control-lg" placeholder="John"></asp:TextBox>

                </div>
            </div>
            <div class="form-group row">
                <label id="Label2" runat="server" class="col-sm-2 col-form-label col-form-label-lg">Surname</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control form-control-lg" placeholder="Smith"></asp:TextBox>

                </div>
            </div>
                        <div class="form-group row">
                <label id="Label19" runat="server" class="col-sm-2 col-form-label col-form-label-lg">Further last name (If applicable)</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox17" runat="server" CssClass="form-control form-control-lg" placeholder="Jones"></asp:TextBox>
                </div>
            </div>
                <div class="form-group row">
                <label id="Label20" runat="server" class="col-sm-2 col-form-label col-form-label-sm">Gender</label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="col-sm-10 form-control">
                        <asp:ListItem>Please Select...</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label21" runat="server" class="col-sm-2 col-form-label col-form-label-lg">Date Of Birth</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox18" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                </div>
            </div>
              <div class="form-group row">
                <label id="Label17" runat="server" class="col-sm-2 col-form-label col-form-label-lg">Marital Status</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox15" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label3" runat="server" class="col-sm-2 col-form-label col-form-label-sm">Current Address</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control form-control-lg" placeholder="123 Dublin lane, Dublin 7"></asp:TextBox>
                    <small id="emailHelp" class="form-text text-muted">Please enter your Dublin/London/Scotland in the address field above</small>
                </div>
            </div>

            <div class="form-group row">
                <label id="Label4" runat="server" class="col-sm-2 col-form-label col-form-label-sm">Postcode</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control form-control-lg" placeholder="D08 A5R7"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label5" runat="server" class="col-sm-2 col-form-label col-form-label-sm">Current Phone Number</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control form-control-lg" placeholder="081 2345 678"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="col-sm-2  col-form-label col-form-label-sm">
                    <asp:ListItem> Choose your type of ID</asp:ListItem>
                    <asp:ListItem>Passport</asp:ListItem>
                    <asp:ListItem>National ID</asp:ListItem>
                </asp:DropDownList>
                <div class="col-sm-10">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <small id="fileHelp" class="form-text text-muted">Click on button to attach your passport/ID (You must scan it)</small>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label6" runat="server" class="col-sm-2 col-form-label col-form-label-sm">Personal Email Address</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control form-control-lg" placeholder="myname@ .ie"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label7" runat="server" class="col-sm-2 col-form-label col-form-label-sm">Department</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label35" runat="server" class="col-sm-2 col-form-label col-form-label-sm">Office Location</label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="DropDownList9" runat="server" CssClass="col-sm-10 form-control" AutoPostBack="true">
                        <asp:ListItem>Please Select...</asp:ListItem>
                        <asp:ListItem Value="1">No. 22 Dublin</asp:ListItem>
                        <asp:ListItem Value="2">No 5 Dublin (M&amp;K)</asp:ListItem>
                        <asp:ListItem Value="3">No 6 Dublin (C&amp;E)</asp:ListItem>
                        <asp:ListItem Value="4">London</asp:ListItem>
                        <asp:ListItem Value="5">Edinburgh</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList9" SetFocusOnError="true" ErrorMessage="Required Field" Display="Dynamic" EnableTheming="True" InitialValue="Please Select...">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label8" runat="server" class="col-sm-2 col-form-label col-form-label-sm">Is home Country Address the same as above</label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="col-sm-10 form-control" style="left: 0px; top: 0px">
                        <asp:ListItem>Please Select...</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No (see below)</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label9" runat="server" class="col-sm-2 col-form-label col-form-label-sm">PPS/NI Number</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control form-control-lg" placeholder="123456789N"></asp:TextBox>
                </div>
            </div>

            <h4><i style="border-style: none; border-color: currentColor; border-width: 0px; margin: 0px; padding: 0px; background: ; background-clip: border-box; background-origin: padding-box; background-size: auto; border-image-outset: 0; border-image-repeat: stretch; border-image-slice: 100%; border-image-source: none; border-image-width: 1; color: rgb(31, 73, 125); font-family: system-ui, -apple-system, BlinkMacSystemFont, &amp;quot; Segoe UI&amp;quot;, Roboto,Oxygen-Sans,Ubuntu,Cantarell,&amp;quot; Helvetica Neue&amp;quot;, Arial,sans-serif; font-size: 16px; font-style: italic; margin-left: 0px; margin-right: 0px; margin-top: 0px; orphans: 2; padding-left: 0px; padding-right: 0px; padding-top: 0px; text-align: left; text-decoration: none; text-indent: 0px; text-transform: none; vertical-align: baseline; -webkit-text-stroke-width: 0px; white-space: normal; word-spacing: 0px;">Emergency contact details</i></h4>
            <hr />

            <div class="form-group row">
                <label id="Label10" runat="server" class="col-sm-2 col-form-label col-form-label-lg">First Name</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control form-control-lg" placeholder="Mary"></asp:TextBox>

                </div>
            </div>
            <div class="form-group row">
                <label id="Label11" runat="server" class="col-sm-2 col-form-label col-form-label-lg">Surname</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control form-control-lg" placeholder="Smith"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label12" runat="server" class="col-sm-2 col-form-label col-form-label-sm">Relationship</label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="col-sm-10 form-control">
                        <asp:ListItem>Please Select...</asp:ListItem>
                        <asp:ListItem>Aunt</asp:ListItem>
                        <asp:ListItem>Brother</asp:ListItem>
                        <asp:ListItem>Brother in Law</asp:ListItem>
                        <asp:ListItem>Cousin</asp:ListItem>
                        <asp:ListItem>Father</asp:ListItem>
                        <asp:ListItem>Friend</asp:ListItem>
                        <asp:ListItem>Grand Father</asp:ListItem>
                        <asp:ListItem>Grand Mother</asp:ListItem>
                        <asp:ListItem>Husband</asp:ListItem>
                        <asp:ListItem>Mother</asp:ListItem>
                        <asp:ListItem>Partner</asp:ListItem>
                        <asp:ListItem>Sister</asp:ListItem>
                        <asp:ListItem>Sister in law</asp:ListItem>
                        <asp:ListItem>Spouse</asp:ListItem>
                        <asp:ListItem>Step Father</asp:ListItem>
                        <asp:ListItem>Step Mother</asp:ListItem>
                        <asp:ListItem>Uncle</asp:ListItem>
                        <asp:ListItem>Other (please specify in additional remarks)</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label13" runat="server" class="col-sm-2 col-form-label col-form-label-lg">Address</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox11" runat="server" CssClass="form-control form-control-lg" placeholder="123 Dublin lane, Dublin 7"></asp:TextBox>

                </div>
            </div>
            <div class="form-group row">
                <label id="Label14" runat="server" class="col-sm-2 col-form-label col-form-label-lg">Phone Number</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox12" runat="server" CssClass="form-control form-control-lg" placeholder="081 2345 678"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label15" runat="server" class="col-sm-2 col-form-label col-form-label-lg">Email</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox13" runat="server" CssClass="form-control form-control-lg" placeholder="johnsmith@gmail.com"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label16" runat="server" class="col-sm-2 col-form-label col-form-label-lg">Additional remarks...</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox14" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                </div>
            </div>
            <div>
                <h4>Details</h4>
                <hr />
            </div>
            <div class="form-group row">
                <label id="Label22" runat="server" class="col-sm-2 col-form-label col-form-label-lg">Address</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox19" runat="server" CssClass="form-control form-control-lg" placeholder="123 Imagine lane, Narnia "></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label23" runat="server" class="col-sm-2 col-form-label col-form-label-lg">Postcode</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox20" runat="server" CssClass="form-control form-control-lg" placeholder="PHQ 123"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label24" runat="server" class="col-sm-2 col-form-label col-form-label-lg">Start Date</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox21" runat="server" CssClass="form-control form-control-lg" placeholder="04/04/2017"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label25" runat="server" class="col-sm-2 col-form-label col-form-label-lg">Finish Date (if applicable)</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox22" runat="server" CssClass="form-control form-control-lg" placeholder="04/04/2017(optional)"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label26" runat="server" class="col-sm-2 col-form-label col-form-label-sm">P45/Statement of earnings</label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="col-sm-10 form-control">
                        <asp:ListItem>Please Select...</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>Available on Revenue online</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label29" runat="server" class="col-sm-2 col-form-label col-form-label-lg">  Group e-mail address</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox23" runat="server" CssClass="form-control form-control-lg" placeholder="IT@ .ie"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label30" runat="server" class="col-sm-2 col-form-label col-form-label-lg">Manager's Email</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox24" runat="server" CssClass="form-control form-control-lg" placeholder="manager@ .ie"></asp:TextBox>
                </div>
            </div>
            <div>
                <h4>Pay-path details (payment via bank transfer)</h4>
                <hr />
            </div>
            <div class="form-group row">
                <label id="Label31" runat="server" class="col-sm-2 col-form-label col-form-label-lg">Bank Name</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox25" runat="server" CssClass="form-control form-control-lg" placeholder="AIB"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label32" runat="server" class="col-sm-2 col-form-label col-form-label-lg">Account Name</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox26" runat="server" CssClass="form-control form-control-lg" placeholder="John Smith"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label33" runat="server" class="col-sm-2 col-form-label col-form-label-lg">BIC/Swift Code</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox27" runat="server" CssClass="form-control form-control-lg" placeholder="NEDSZAJJXXX"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label34" runat="server" class="col-sm-2 col-form-label col-form-label-lg">IBAN</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox28" runat="server" CssClass="form-control form-control-lg" placeholder="GB29 NWBK 6016 1331 9268 19"></asp:TextBox>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label37" runat="server" class="col-sm-2 col-form-label col-form-label-sm">Cost Center</label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="DropDownList6" runat="server" CssClass="col-sm-10 form-control">
                        <asp:ListItem>Please Select...</asp:ListItem>
                        <asp:ListItem>Accommodation</asp:ListItem>
                        <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Finance(Accounts payable)</asp:ListItem>
                        <asp:ListItem>Finance(AR Credit control)</asp:ListItem>
                        <asp:ListItem>Administration</asp:ListItem>
                        <asp:ListItem>Business Development</asp:ListItem>
                        <asp:ListItem>Conference</asp:ListItem>
                        <asp:ListItem>Contracting</asp:ListItem>
                        <asp:ListItem>Corporate Incentive</asp:ListItem>
                        <asp:ListItem>Events</asp:ListItem>
                        <asp:ListItem>FIT &amp; Online</asp:ListItem>
                        <asp:ListItem>French</asp:ListItem>
                        <asp:ListItem>German</asp:ListItem>
                        <asp:ListItem>Groups London</asp:ListItem>
                        <asp:ListItem>HR</asp:ListItem>
                        <asp:ListItem>Int - English speaking markets</asp:ListItem>
                        <asp:ListItem>Information System (Tourplan)</asp:ListItem>
                        <asp:ListItem>IT</asp:ListItem>
                        <asp:ListItem>Meds</asp:ListItem>
                        <asp:ListItem>Nordics &amp; NONE</asp:ListItem>
                        <asp:ListItem>Operations</asp:ListItem>
                        <asp:ListItem>Product</asp:ListItem>
                        <asp:ListItem>Sales &amp; Marketing</asp:ListItem>
                        <asp:ListItem>Others...</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label38" runat="server" class="col-sm-2 col-form-label col-form-label-sm">Department</label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="DropDownList7" runat="server" CssClass="col-sm-10 form-control">
                        <asp:ListItem>Please Select...</asp:ListItem>
                        <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Finance(Accounts payable)</asp:ListItem>
                        <asp:ListItem>Finance(AR Credit control)</asp:ListItem>
                        <asp:ListItem>Administration</asp:ListItem>
                        <asp:ListItem>Business Development</asp:ListItem>
                        <asp:ListItem>Corporate &amp; Events</asp:ListItem>
                        <asp:ListItem>Contractor</asp:ListItem>
                        <asp:ListItem>FIT & Online</asp:ListItem>
                        <asp:ListItem>Groups</asp:ListItem>
                        <asp:ListItem>IS & IT</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label39" runat="server" class="col-sm-2 col-form-label col-form-label-sm">Job Codes</label>
                <div class="col-sm-10">
                    <asp:DropDownList ID="DropDownList8" runat="server" CssClass="col-sm-10 form-control">
                        <asp:ListItem>Please Select...</asp:ListItem>
                        <asp:ListItem>Intern</asp:ListItem>
                        <asp:ListItem>Staff</asp:ListItem>
                        <asp:ListItem>Area Manager</asp:ListItem>
                        <asp:ListItem>Manager</asp:ListItem>
                        
                    </asp:DropDownList>
                </div>
            </div>
            <div>
                <h2>Employee Handbook and Health &amp; Safety agreement</h2>
                <hr />
            </div> <label id="legalStatement" runat="server">   Our Employee and H&S Handbooks have been prepared for your information and understanding of the policies, philosophies, practices and benefits of   Group.
Upon completion of your review of these Handbooks, please sign the statement below to confirm you have received and read a copy of the   Group Employee Handbook which outlines the goals, policies, benefits and expectations of the Company as well as your responsibilities as an employee. And read a copy of the   Group Health & Safety information which outlines the goals, policies, benefits and expectations of the Company as well as my responsibilities as an employee
I have familiarized myself, at least generally, with the contents of these Handbooks. By my signature below, I acknowledge, understand, accept and agree to comply with the information contained in the Employee Handbook provided to me by   Group. I understand that this Handbook is not intended to cover every situation that may arise during my employment, but is simply a general guide to the goals, policies, practice, benefits and expectations of the Company.
I understand that the   Group Employee Handbook forms part of my Contract of Employment and should be deemed as such, and that I am an employee at will.
Ihave received and . I have familiarised myself, at least generally, with the contents of this information. By my signature below, I acknowledge, understand, accept and agree to comply with the information contained in the Health & Safety information provided to me by   Group. I understand that this handbook is not intended to cover every situation that may arise during my employment, but is simply a general guide to the goals, policies, practice, benefits and expectations of the Company.
I understand that the   Group Health & Safety information forms part of my contract of employment and should be deemed as such, and that I am an employee at will. If I have any medical condition that my employer would need to be aware of I will contact a member of the HR team and let them know in confidence.</label>
         
            <div class="form-group row">
                <label id="Label42" runat="server" class="col-sm-2 col-form-label col-form-label-lg">Employee</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox33" runat="server" CssClass="form-control form-control-lg" placeholder="John Smith"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox33" SetFocusOnError="true" ErrorMessage="RequiredField" Display="Dynamic" EnableTheming="True">*</asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group row">
                <label id="Label43" runat="server" class="col-sm-2 col-form-label col-form-label-lg">Date (Today)</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="TextBox34" runat="server" CssClass="form-control form-control-lg" placeholder="05/05/2017"></asp:TextBox>
                </div>
            </div>
            <%--<hr />--%>
            <div class="form-group">
                <asp:LinkButton ID="Button1" CssClass="btn btn-default btn-lg" runat="server" OnClick="Button1_Click">(Ireland) Submit to HR & Payroll team</asp:LinkButton>
                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-default btn-lg" runat="server" OnClick="LinkButton1_Click" Visible="false">(UK) Submit to HR & Payroll team</asp:LinkButton>
            </div>
        </form>
    </div>
    <script
        src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
