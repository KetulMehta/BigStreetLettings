﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="buttons.aspx.cs" Inherits="Ext_RealEstate.Admin.buttons" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="mainwrapper">
            <div class="leftpanel">
                <div class="media profile-left">
                    <a class="pull-left profile-thumb" href="profile.html">
                        <img class="img-circle" src="images/photos/profile.png" alt="">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading">Elen Adarna</h4>
                        <small class="text-muted">Beach Lover</small>
                    </div>
                </div>
                <!-- media -->

                <h5 class="leftpanel-title">Navigation</h5>
                <ul class="nav nav-pills nav-stacked">
                    <li><a href="index-2.html"><i class="fa fa-home"></i><span>Dashboard</span></a></li>
                    <li><a href="messages.html"><span class="pull-right badge">5</span><i class="fa fa-envelope-o"></i> <span>Messages</span></a></li>
                    <li class="active parent"><a href="#"><i class="fa fa-suitcase"></i><span>UI Elements</span></a>
                        <ul class="children">
                            <li><a href="alerts.html">Alerts &amp; Notifications</a></li>
                            <li class="active"><a href="buttons.html">Buttons</a></li>
                            <li><a href="extras.html">Extras</a></li>
                            <li><a href="graphs.html">Graphs &amp; Charts</a></li>
                            <li><a href="icons.html">Icons</a></li>
                            <li><a href="modals.html">Modals</a></li>
                            <li><a href="widgets.html">Panels &amp; Widgets</a></li>
                            <li><a href="sliders.html">Sliders</a></li>
                            <li><a href="tabs-accordions.html">Tabs &amp; Accordions</a></li>
                            <li><a href="typography.html">Typography</a></li>
                        </ul>
                    </li>
                    <li class="parent"><a href="#"><i class="fa fa-edit"></i><span>Forms</span></a>
                        <ul class="children">
                            <li><a href="code-editor.html">Code Editor</a></li>
                            <li><a href="general-forms.html">General Forms</a></li>
                            <li><a href="form-layouts.html">Layouts</a></li>
                            <li><a href="wysiwyg.html">Text Editor</a></li>
                            <li><a href="form-validation.html">Validation</a></li>
                            <li><a href="form-wizards.html">Wizards</a></li>
                        </ul>
                    </li>
                    <li class="parent"><a href="#"><i class="fa fa-bars"></i><span>Tables</span></a>
                        <ul class="children">
                            <li><a href="basic-tables.html">Basic Tables</a></li>
                            <li><a href="data-tables.html">Data Tables</a></li>
                        </ul>
                    </li>
                    <li><a href="maps.html"><i class="fa fa-map-marker"></i><span>Maps</span></a></li>
                    <li class="parent"><a href="#"><i class="fa fa-file-text"></i><span>Pages</span></a>
                        <ul class="children">
                            <li><a href="notfound.html">404 Page</a></li>
                            <li><a href="blank.html">Blank Page</a></li>
                            <li><a href="calendar.html">Calendar</a></li>
                            <li><a href="invoice.html">Invoice</a></li>
                            <li><a href="locked.html">Locked Screen</a></li>
                            <li><a href="media-manager.html">Media Manager</a></li>
                            <li><a href="people-directory.html">People Directory</a></li>
                            <li><a href="profile.html">Profile</a></li>
                            <li><a href="search-results.html">Search Results</a></li>
                            <li><a href="signin.html">Sign In</a></li>
                            <li><a href="signup.html">Sign Up</a></li>
                        </ul>
                    </li>

                </ul>

            </div>
            <!-- leftpanel -->

            <div class="mainpanel">
                <div class="pageheader">
                    <div class="media">
                        <div class="pageicon pull-left">
                            <i class="fa fa-hand-o-up"></i>
                        </div>
                        <div class="media-body">
                            <ul class="breadcrumb">
                                <li><a href="#"><i class="glyphicon glyphicon-home"></i></a></li>
                                <li><a href="alerts.html">UI Elements</a></li>
                                <li>Buttons</li>
                            </ul>
                            <h4>Buttons</h4>
                        </div>
                    </div>
                    <!-- media -->
                </div>
                <!-- pageheader -->
                <div class="contentpanel">

                    <div class="row">
                        <div class="col-sm-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-btns">
                                        <a href="#" class="panel-minimize tooltips" data-toggle="tooltip" title="Minimize Panel"><i class="fa fa-minus"></i></a>
                                        <a href="#" class="panel-close tooltips" data-toggle="tooltip" title="Close Panel"><i class="fa fa-times"></i></a>
                                    </div>
                                    <!-- panel-btns -->
                                    <h4 class="panel-title">Built-In Buttons</h4>
                                    <p>Use any of the available button classes to quickly create a styled button.</p>
                                </div>
                                <!-- panel-heading -->
                                <div class="panel-body">
                                    <div class="btn-list">
                                        <button class="btn btn-default">Default</button>
                                        <button class="btn btn-primary">Primary</button>
                                        <button class="btn btn-success">Success</button>
                                        <button class="btn btn-warning">Warning</button>
                                        <button class="btn btn-danger">Danger</button>
                                        <button class="btn btn-info">Info</button>
                                    </div>
                                </div>
                            </div>
                            <!-- panel -->
                        </div>
                        <!-- col-sm-6 -->

                        <div class="col-sm-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-btns">
                                        <a href="#" class="panel-minimize tooltips" data-toggle="tooltip" title="Minimize Panel"><i class="fa fa-minus"></i></a>
                                        <a href="#" class="panel-close tooltips" data-toggle="tooltip" title="Close Panel"><i class="fa fa-times"></i></a>
                                    </div>
                                    <!-- panel-btns -->
                                    <h4 class="panel-title">Rounded Buttons</h4>
                                    <p>Built-in buttons that has a super rounded corners by adding a class name <code>.btn-rounded</code></p>
                                </div>
                                <!-- panel-heading -->
                                <div class="panel-body">
                                    <div class="btn-list">
                                        <button class="btn btn-default btn-rounded">Default</button>
                                        <button class="btn btn-primary btn-rounded">Primary</button>
                                        <button class="btn btn-success btn-rounded">Success</button>
                                        <button class="btn btn-warning btn-rounded">Warning</button>
                                        <button class="btn btn-danger btn-rounded">Danger</button>
                                    </div>
                                </div>
                            </div>
                            <!-- panel -->
                        </div>
                        <!-- col-sm-6 -->

                        <div class="col-sm-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-btns">
                                        <a href="#" class="panel-minimize tooltips" data-toggle="tooltip" title="Minimize Panel"><i class="fa fa-minus"></i></a>
                                        <a href="#" class="panel-close tooltips" data-toggle="tooltip" title="Close Panel"><i class="fa fa-times"></i></a>
                                    </div>
                                    <!-- panel-btns -->
                                    <h4 class="panel-title">Bordered Buttons</h4>
                                    <p>Colored border buttons instead of background color by adding class name <code>.btn-bordered</code></p>
                                </div>
                                <!-- panel-heading -->
                                <div class="panel-body">
                                    <div class="btn-list">
                                        <button class="btn btn-default btn-bordered">Default</button>
                                        <button class="btn btn-primary btn-bordered">Primary</button>
                                        <button class="btn btn-success btn-bordered">Success</button>
                                        <button class="btn btn-warning btn-bordered">Warning</button>
                                        <button class="btn btn-danger btn-bordered">Danger</button>
                                        <button class="btn btn-info btn-bordered">Info</button>
                                    </div>
                                </div>
                            </div>
                            <!-- panel -->
                        </div>
                        <!-- col-sm-6 -->

                        <div class="col-sm-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-btns">
                                        <a href="#" class="panel-minimize tooltips" data-toggle="tooltip" title="Minimize Panel"><i class="fa fa-minus"></i></a>
                                        <a href="#" class="panel-close tooltips" data-toggle="tooltip" title="Close Panel"><i class="fa fa-times"></i></a>
                                    </div>
                                    <!-- panel-btns -->
                                    <h4 class="panel-title">Metro-Styled Buttons</h4>
                                    <p>Buttons with zero radius in the corner with thin text by adding class name <code>.btn-metro</code></p>
                                </div>
                                <!-- panel-heading -->
                                <div class="panel-body">
                                    <div class="btn-list">
                                        <button class="btn btn-default btn-metro">Default</button>
                                        <button class="btn btn-primary btn-metro">Primary</button>
                                        <button class="btn btn-success btn-metro">Success</button>
                                        <button class="btn btn-warning btn-metro">Warning</button>
                                        <button class="btn btn-danger btn-metro">Danger</button>
                                        <button class="btn btn-info btn-metro">Info</button>
                                    </div>
                                </div>
                            </div>
                            <!-- panel -->
                        </div>
                        <!-- col-sm-6 -->

                        <div class="col-sm-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-btns">
                                        <a href="#" class="panel-minimize tooltips" data-toggle="tooltip" title="Minimize Panel"><i class="fa fa-minus"></i></a>
                                        <a href="#" class="panel-close tooltips" data-toggle="tooltip" title="Close Panel"><i class="fa fa-times"></i></a>
                                    </div>
                                    <!-- panel-btns -->
                                    <h4 class="panel-title">Button Sizes</h4>
                                    <p>Fancy larger or smaller buttons? Add <code>.btn-lg</code>, <code>.btn-sm</code>, or <code>.btn-xs</code> for additional sizes.</p>
                                </div>
                                <!-- panel-heading -->
                                <div class="panel-body">
                                    <p>
                                        <button class="btn btn-default btn-lg">Large Button</button>&nbsp;
                                           
                                        <button class="btn btn-primary btn-lg">Large Button</button>
                                    </p>
                                    <p>
                                        <button class="btn btn-default">Default Button</button>&nbsp;
                                           
                                        <button class="btn btn-primary">Default Button</button>
                                    </p>
                                    <p>
                                        <button class="btn btn-default btn-sm">Small Button</button>&nbsp;
                                           
                                        <button class="btn btn-primary btn-sm">Small Button</button>
                                    </p>
                                    <p class="nomargin">
                                        <button class="btn btn-default btn-xs">Extra Small Button</button>&nbsp;
                                           
                                        <button class="btn btn-primary btn-xs">Extra Small Button</button>
                                    </p>
                                </div>
                                <!-- btn-body -->
                            </div>
                            <!-- panel -->
                        </div>
                        <!-- col-sm-6 -->

                        <div class="col-sm-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-btns">
                                        <a href="#" class="panel-minimize tooltips" data-toggle="tooltip" title="Minimize Panel"><i class="fa fa-minus"></i></a>
                                        <a href="#" class="panel-close tooltips" data-toggle="tooltip" title="Close Panel"><i class="fa fa-times"></i></a>
                                    </div>
                                    <!-- panel-btns -->
                                    <h4 class="panel-title">Button Blocks</h4>
                                    <p>Create block level buttons - those that span the full width of a parent - by adding <code>.btn-block</code>.</p>
                                </div>
                                <!-- panel-heading -->
                                <div class="panel-body">
                                    <p>
                                        <button class="btn btn-default btn-lg btn-block">Block Level Button</button></p>
                                    <p>
                                        <button class="btn btn-primary btn-block">Block Level Button</button></p>
                                    <p>
                                        <button class="btn btn-success btn-sm btn-block">Block Level Button</button></p>
                                </div>
                                <!-- btn-body -->
                            </div>
                            <!-- panel -->
                        </div>
                        <!-- col-sm-6 -->

                    </div>
                    <!-- row -->

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-btns">
                                <a href="#" class="panel-minimize tooltips" data-toggle="tooltip" title="Minimize Panel"><i class="fa fa-minus"></i></a>
                                <a href="#" class="panel-close tooltips" data-toggle="tooltip" title="Close Panel"><i class="fa fa-times"></i></a>
                            </div>
                            <!-- panel-btns -->
                            <h4 class="panel-title">Button Blocks</h4>
                            <p>Create block level buttons - those that span the full width of a parent - by adding <code>.btn-block</code>.</p>
                        </div>
                        <!-- panel-heading -->
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <p>Wrap a series of buttons with <code>.btn</code> in <code>.btn-group</code>.</p>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default">Left</button>
                                        <button type="button" class="btn btn-default">Middle</button>
                                        <button type="button" class="btn btn-default">Right</button>
                                    </div>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary">Left</button>
                                        <button type="button" class="btn btn-primary">Middle</button>
                                        <button type="button" class="btn btn-primary">Right</button>
                                    </div>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary btn-bordered">Left</button>
                                        <button type="button" class="btn btn-primary btn-bordered">Middle</button>
                                        <button type="button" class="btn btn-primary btn-bordered">Right</button>
                                    </div>
                                </div>
                                <!-- col-md-4 -->

                                <div class="col-md-4">
                                    <p>Combine sets of <code>btn-group</code> into a <code>btn-toolbar</code> for more complex components.</p>
                                    <div class="btn-toolbar">
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-default">1</button>
                                            <button type="button" class="btn btn-default">2</button>
                                            <button type="button" class="btn btn-default">3</button>
                                        </div>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-primary">Next</button>
                                            <button type="button" class="btn btn-primary">Last</button>
                                        </div>
                                    </div>
                                    <!-- btn-toolbar -->
                                    <div class="btn-toolbar">
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-default btn-metro">1</button>
                                            <button type="button" class="btn btn-default btn-metro">2</button>
                                            <button type="button" class="btn btn-default btn-metro">3</button>
                                        </div>
                                        <div class="btn-group">
                                            <button type="button" class="btn btn-success btn-metro">Next</button>
                                            <button type="button" class="btn btn-success btn-metro">Last</button>
                                        </div>
                                    </div>
                                    <!-- btn-toolbar -->
                                </div>
                                <!-- col-md-4 -->

                                <div class="col-md-4">
                                    <p>Place a <code>.btn-group</code> within another <code>.btn-group</code> when you want dropdown menus mixed with a series of buttons.</p>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default">1</button>
                                        <button type="button" class="btn btn-default">2</button>

                                        <div class="btn-group">
                                            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                                Dropdown
                                                   
                                                <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li><a href="#">Dropdown link</a></li>
                                                <li><a href="#">Dropdown link</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- btn-group -->

                                    <div class="btn-group">
                                        <button type="button" class="btn btn-primary btn-bordered">1</button>
                                        <button type="button" class="btn btn-primary btn-bordered">2</button>

                                        <div class="btn-group">
                                            <button type="button" class="btn btn-primary btn-bordered dropdown-toggle" data-toggle="dropdown">
                                                Dropdown
                                                   
                                                <span class="caret"></span>
                                            </button>
                                            <ul class="dropdown-menu">
                                                <li><a href="#">Dropdown link</a></li>
                                                <li><a href="#">Dropdown link</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- btn-group -->
                                </div>
                                <!-- col-md-4 -->

                            </div>
                            <!-- row -->

                        </div>
                        <!-- btn-body -->
                    </div>
                    <!-- panel -->

                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <div class="panel-btns">
                                <a href="#" class="panel-minimize tooltips" data-toggle="tooltip" title="Minimize Panel"><i class="fa fa-minus"></i></a>
                                <a href="#" class="panel-close tooltips" data-toggle="tooltip" title="Close Panel"><i class="fa fa-times"></i></a>
                            </div>
                            <!-- panel-btns -->
                            <h4 class="panel-title">Button Dropdowns</h4>
                            <p>Use any button to trigger a dropdown menu by placing it within a .btn-group and providing the proper menu markup.</p>
                        </div>
                        <!-- panel-heading -->
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <h5 class="md-title text-muted">Single Button Dropdowns</h5>
                                    <p>Turn a button into a dropdown toggle with some basic markup changes.</p>
                                    <br />
                                    <div class="btn-group mr5">
                                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                            Action <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                    <!-- btn-group -->

                                    <div class="btn-group mr5">
                                        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                            Action <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                    <!-- btn-group -->

                                    <div class="btn-group mr5">
                                        <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
                                            Action <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                    <!-- btn-group -->

                                    <div class="btn-group mr5">
                                        <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
                                            Action <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                    <!-- btn-group -->

                                    <div class="btn-group mr5">
                                        <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
                                            Action <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                    <!-- btn-group -->

                                    <div class="btn-group">
                                        <button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">
                                            Action <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                    <!-- btn-group -->

                                </div>
                                <!-- col-md-4 -->
                                <div class="col-md-4">
                                    <h5 class="md-title text-muted">Split Button Dropdowns</h5>
                                    <p>Similarly, create split button dropdowns with the same markup changes, only with a separate button.</p>
                                    <br />
                                    <div class="btn-group mr5">
                                        <button type="button" class="btn btn-default">Action</button>
                                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                            <span class="caret"></span>
                                            <span class="sr-only">Toggle Dropdown</span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                    <!-- btn-group -->

                                    <div class="btn-group mr5">
                                        <button type="button" class="btn btn-primary">Action</button>
                                        <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
                                            <span class="caret"></span>
                                            <span class="sr-only">Toggle Dropdown</span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                    <!-- btn-group -->

                                    <div class="btn-group mr5">
                                        <button type="button" class="btn btn-success">Action</button>
                                        <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
                                            <span class="caret"></span>
                                            <span class="sr-only">Toggle Dropdown</span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                    <!-- btn-group -->

                                    <div class="btn-group mr5">
                                        <button type="button" class="btn btn-warning">Action</button>
                                        <button type="button" class="btn btn-warning dropdown-toggle" data-toggle="dropdown">
                                            <span class="caret"></span>
                                            <span class="sr-only">Toggle Dropdown</span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                    <!-- btn-group -->

                                    <div class="btn-group mr5">
                                        <button type="button" class="btn btn-danger">Action</button>
                                        <button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown">
                                            <span class="caret"></span>
                                            <span class="sr-only">Toggle Dropdown</span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                    <!-- btn-group -->

                                    <div class="btn-group">
                                        <button type="button" class="btn btn-white">Action</button>
                                        <button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">
                                            <span class="caret"></span>
                                            <span class="sr-only">Toggle Dropdown</span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                    <!-- btn-group -->

                                </div>
                                <!-- col-md-4 -->
                                <div class="col-md-4">
                                    <h5 class="md-title text-muted">Dropdown Sizing</h5>
                                    <p>Button dropdowns work with buttons of all sizes.</p>
                                    <br />
                                    <div class="btn-group mr5">
                                        <button type="button" class="btn btn-lg btn-default">Action</button>
                                        <button type="button" class="btn btn-lg btn-default dropdown-toggle" data-toggle="dropdown">
                                            <span class="caret"></span>
                                            <span class="sr-only">Toggle Dropdown</span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                    <!-- btn-group -->

                                    <div class="btn-group mr5">
                                        <button type="button" class="btn btn-white">Action</button>
                                        <button type="button" class="btn btn-white dropdown-toggle" data-toggle="dropdown">
                                            <span class="caret"></span>
                                            <span class="sr-only">Toggle Dropdown</span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                    <!-- btn-group -->

                                    <div class="btn-group">
                                        <button type="button" class="btn btn-xs btn-primary">Action</button>
                                        <button type="button" class="btn btn-xs btn-primary dropdown-toggle" data-toggle="dropdown">
                                            <span class="caret"></span>
                                            <span class="sr-only">Toggle Dropdown</span>
                                        </button>
                                        <ul class="dropdown-menu pull-right" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                    <!-- btn-group -->

                                </div>
                                <!-- col-md-4 -->
                            </div>
                            <!-- row -->
                        </div>
                        <!-- btn-body -->
                    </div>
                    <!-- panel -->

                </div>
                <!-- contentpanel -->
            </div>
        </div>
        <!-- mainwrapper -->
    </section>
</asp:Content>
