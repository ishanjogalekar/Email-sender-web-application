<%@ page import="mail.MailService"%>
<%@ page import="javax.mail.Message"%>
<%@ page import="javax.mail.Address"%>
<%@ page import="javax.mail.Multipart"%>
<%@ page import="javax.mail.BodyPart"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Java Mail Box</title>

    <!-- Bootstrap core CSS -->

    <link href="css/bootstrap.min.css" rel="stylesheet">

    <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/animate.min.css" rel="stylesheet">

    <!-- Custom styling plus plugins -->
    <link href="css/custom.css" rel="stylesheet">
    <link href="css/icheck/flat/green.css" rel="stylesheet">


    <script src="js/jquery.min.js"></script>

    <!--[if lt IE 9]>
    <script src="js/ie8-responsive-file-warning.js"></script>
    <![endif]-->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>


<body class="nav-md">

<div class="container body">


    <div class="main_container">

        <div class="col-md-3 left_col">
            <div class="left_col scroll-view">

                <div class="navbar nav_title" style="border: 0;">
                    <a href="inbox.jsp" class="site_title"><i class="fa fa-paw"></i>
                        <span>Java Mail Box</span></a>
                </div>
                <div class="clearfix"></div>

                <!-- menu prile quick info -->
                <div class="profile">

                    <div class="profile_info">
                        <span>Welcome,</span>
                        <h2>Mickey Mouse</h2>
                    </div>
                </div>
                <!-- /menu prile quick info -->

                <br />

                <!-- sidebar menu -->
                <div id="sidebar-menu"
                     class="main_menu_side hidden-print main_menu">

                    <div class="menu_section">
                        <h3>General</h3>
                        <ul class="nav side-menu">
                            <li><a><i class="fa fa-home"></i> Home <span
                                    class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu" style="display: none">
                                    <li><a href="#">Dashboard</a></li>
                                    <li><a href="#">Dashboard2</a></li>
                                    <li><a href="#">Dashboard3</a></li>
                                </ul></li>
                            <li><a><i class="fa fa-edit"></i> Folders <span
                                    class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu" style="display: none">
                                    <li><a href="inbox.jsp">Inbox</a></li>
                                    <li><a href="#">Sent</a></li>
                                    <li><a href="#">Trash</a></li>
                                    <li><a href="#">Spam</a></li>
                                    <li><a href="#">Archive</a></li>
                                </ul></li>
                            <li><a><i class="fa fa-desktop"></i> Contacts <span
                                    class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu" style="display: none">
                                    <li><a href="#">List Contact</a></li>
                                    <li><a href="#">Sync Contact</a></li>
                                </ul></li>
                            <li><a><i class="fa fa-table"></i> Categories <span
                                    class="fa fa-chevron-down"></span></a>
                                <ul class="nav child_menu" style="display: none">
                                    <li><a href="#">Social</a></li>
                                    <li><a href="#">Promotions</a></li>
                                </ul></li>
                        </ul>
                    </div>
                    <div class="menu_section">
                        <h3>Rock On</h3>

                    </div>

                </div>
                <!-- /sidebar menu -->

                <!-- /menu footer buttons -->
                <div class="sidebar-footer hidden-small">
                    <a data-toggle="tooltip" data-placement="top" title="Settings">
                        <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
                    </a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                    <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
                </a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
                        class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
                </a> <a data-toggle="tooltip" data-placement="top" title="Logout">
                    <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
                </a>
                </div>
                <!-- /menu footer buttons -->
            </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">

            <div class="nav_menu">
                <nav class="" role="navigation">
                    <div class="nav toggle">
                        <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                    </div>

                    <ul class="nav navbar-nav navbar-right">
                        <li class=""><a href="javascript:;"
                                        class="user-profile dropdown-toggle" data-toggle="dropdown"
                                        aria-expanded="false"> Mickey Mouse <span
                                class=" fa fa-angle-down"></span>
                        </a>
                            <ul
                                    class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                                <li><a href="javascript:;"> Profile</a></li>
                                <li><a href="javascript:;"> <span
                                        class="badge bg-red pull-right">50%</span> <span>Settings</span>
                                </a></li>
                                <li><a href="javascript:;">Help</a></li>
                                <li><a href="login.html"><i
                                        class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                            </ul></li>

                        <li role="presentation" class="dropdown"><a
                                href="javascript:;" class="dropdown-toggle info-number"
                                data-toggle="dropdown" aria-expanded="false"> <i
                                class="fa fa-envelope-o"></i> <span class="badge bg-green">6</span>
                        </a>
                            <ul id="menu1"
                                class="dropdown-menu list-unstyled msg_list animated fadeInDown"
                                role="menu">
                                <li><a> <span class="image"> <img
                                        src="images/img.jpg" alt="Profile Image" />
										</span> <span> <span>John Smith</span> <span class="time">3
													mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
                                </a></li>
                                <li><a> <span class="image"> <img
                                        src="images/img.jpg" alt="Profile Image" />
										</span> <span> <span>John Smith</span> <span class="time">3
													mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
                                </a></li>
                                <li><a> <span class="image"> <img
                                        src="images/img.jpg" alt="Profile Image" />
										</span> <span> <span>John Smith</span> <span class="time">3
													mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
                                </a></li>
                                <li><a> <span class="image"> <img
                                        src="images/img.jpg" alt="Profile Image" />
										</span> <span> <span>John Smith</span> <span class="time">3
													mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
                                </a></li>
                                <li>
                                    <div class="text-center">
                                        <a> <strong>See All Alerts</strong> <i
                                                class="fa fa-angle-right"></i>
                                        </a>
                                    </div>
                                </li>
                            </ul></li>

                    </ul>
                </nav>
            </div>

        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
            <div class="">

                <div class="page-title">
                    <div class="title_left">
                        <h3>
                            Mail Inbox <small> Seed application to help you start! </small>
                        </h3>
                    </div>

                    <div class="title_right">
                        <div
                                class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                            <div class="input-group">
                                <input type="text" class="form-control"
                                       placeholder="Search for..."> <span
                                    class="input-group-btn">
										<button class="btn btn-default" type="button">Go!</button>
									</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>

                <div class="row">

                    <div class="col-md-12">
                        <div class="x_panel">
                            <div class="x_title">
                                <h2>
                                    Inbox Design<small>User Mail</small>
                                </h2>
                                <ul class="nav navbar-right panel_toolbox">
                                    <li><a href="#"><i class="fa fa-chevron-up"></i></a></li>
                                    <li class="dropdown"><a href="#" class="dropdown-toggle"
                                                            data-toggle="dropdown" role="button" aria-expanded="false"><i
                                            class="fa fa-wrench"></i></a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Settings 1</a></li>
                                            <li><a href="#">Settings 2</a></li>
                                        </ul></li>
                                    <li><a href="#"><i class="fa fa-close"></i></a></li>
                                </ul>
                                <div class="clearfix"></div>
                            </div>
                            <div class="x_content">


                                <div class="row">

                                    <div class="col-sm-3 mail_list_column">
                                        <%
                                            // It is good to Use Tag Library to display dynamic content
                                            MailService mailService = new MailService();
                                            mailService.login("imap.gmail.com", "ijkillermax@gmail.com",
                                                    "passkey@123");
                                            int messageCount = mailService.getMessageCount();

                                            //just for tutorial purpose
                                            if (messageCount > 5)
                                                messageCount = 5;
                                            Message[] messages = mailService.getMessages();
                                            for (int i = 0; i < messageCount; i++) {
                                                String subject = "";
                                                if (messages[i].getSubject() != null)
                                                    subject = messages[i].getSubject();
                                                Address[] fromAddress = messages[i].getFrom();
                                        %>
                                        <div class="mail_list">
                                            <div class="left">
                                                <i class="fa fa-circle"></i> <i class="fa fa-edit"></i>
                                            </div>
                                            <div class="right">
                                                <h3>
                                                    <%
                                                        out.print(fromAddress[0].toString());
                                                    %>
                                                    <small><%=messages[i].getReceivedDate()%></small>
                                                </h3>
                                                <p><%=subject%>
                                                    ...
                                                </p>
                                            </div>
                                        </div>
                                        <%
                                            }
                                        %>


                                    </div>
                                    <!-- /MAIL LIST -->


                                    <!-- CONTENT MAIL -->

                                    <div class="col-sm-9 mail_view">
                                        <%
                                            if (messageCount > 0) {
                                                String subject = "";
                                                if (messages[0].getSubject() != null)
                                                    subject = messages[0].getSubject();
                                                Address[] fromAddress = messages[0].getFrom();
                                                Address[] replyToAddress = messages[0].getReplyTo();
                                        %>
                                        <div class="inbox-body">
                                            <div class="mail_heading row">
                                                <div class="col-md-8">
                                                    <div class="compose-btn">
                                                        <a class="btn btn-sm btn-primary"
                                                           href="mail_compose.html"><i class="fa fa-reply"></i>
                                                            Reply</a>
                                                        <button title="" data-placement="top"
                                                                data-toggle="tooltip" type="button"
                                                                data-original-title="Print" class="btn  btn-sm tooltips">
                                                            <i class="fa fa-print"></i>
                                                        </button>
                                                        <button title="" data-placement="top"
                                                                data-toggle="tooltip" data-original-title="Trash"
                                                                class="btn btn-sm tooltips">
                                                            <i class="fa fa-trash-o"></i>
                                                        </button>
                                                    </div>

                                                </div>
                                                <div class="col-md-4 text-right">
                                                    <p class="date"><%=messages[0].getReceivedDate()%></p>
                                                </div>
                                                <div class="col-md-12">
                                                    <h4><%=subject%></h4>
                                                </div>
                                            </div>
                                            <div class="sender-info">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <strong> <%
                                                            out.print(fromAddress[0].toString());
                                                        %>
                                                        </strong> to <strong>me</strong> <a class="sender-dropdown"><i
                                                            class="fa fa-chevron-down"></i></a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="view-mail">
                                                <%
                                                    Message message = messages[0];
                                                    Object content = message.getContent();
                                                    // check for string
                                                    // then check for multipart
                                                    if (content instanceof String) {
                                                        out.println(content);
                                                    } else if (content instanceof Multipart) {
                                                        Multipart multiPart = (Multipart) content;
                                                        int multiPartCount = multiPart.getCount();
                                                        for (int i = 0; i < multiPartCount; i++) {
                                                            BodyPart bodyPart = multiPart.getBodyPart(i);
                                                            Object o;
                                                            o = bodyPart.getContent();
                                                            if (o instanceof String) {
                                                                out.println(o);
                                                            }

                                                        }

                                                    }
                                                %>
                                                <p><%=messages[0].getContent()%></p>
                                            </div>

                                            <div class="compose-btn pull-left">
                                                <a class="btn btn-sm btn-primary" href="mail_compose.html"><i
                                                        class="fa fa-reply"></i> Reply</a>
                                                <button class="btn btn-sm ">
                                                    <i class="fa fa-arrow-right"></i> Forward
                                                </button>
                                                <button title="" data-placement="top" data-toggle="tooltip"
                                                        type="button" data-original-title="Print"
                                                        class="btn  btn-sm tooltips">
                                                    <i class="fa fa-print"></i>
                                                </button>
                                                <button title="" data-placement="top" data-toggle="tooltip"
                                                        data-original-title="Trash" class="btn btn-sm tooltips">
                                                    <i class="fa fa-trash-o"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <%
                                            }
                                        %>


                                    </div>
                                    <!-- /CONTENT MAIL -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- footer content -->
            <footer>
                <div class="">
                    <p class="pull-right">
                        This is a starter application, brought to you by <a>javapapers.com</a>.
                        | <span class="lead"> <i class="fa fa-paw"></i> Java Mail
								Box!
							</span>
                    </p>
                </div>
                <div class="clearfix"></div>
            </footer>
            <!-- /footer content -->

        </div>
        <!-- /page content -->
    </div>

</div>

<div id="custom_notifications" class="custom-notifications dsp_none">
    <ul class="list-unstyled notifications clearfix"
        data-tabbed_notifications="notif-group">
    </ul>
    <div class="clearfix"></div>
    <div id="notif-group" class="tabbed_notifications"></div>
</div>

<script src="js/bootstrap.min.js"></script>

<!-- chart js -->
<script src="js/chartjs/chart.min.js"></script>
<!-- bootstrap progress js -->
<script src="js/progressbar/bootstrap-progressbar.min.js"></script>
<script src="js/nicescroll/jquery.nicescroll.min.js"></script>
<!-- icheck -->
<script src="js/icheck/icheck.min.js"></script>
<!-- pace -->
<script src="js/pace/pace.min.js"></script>
<script src="js/custom.js"></script>

</body>

</html>