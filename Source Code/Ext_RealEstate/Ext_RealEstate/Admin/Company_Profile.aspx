<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Company_Profile.aspx.cs" Inherits="Ext_RealEstate.Admin.Company_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">

        <div class="mainpanel">
            <div class="pageheader">
                <div class="media">
                    <div class="pageicon pull-left">
                        <i class="fa fa-users fa-10x"></i>
                    </div>
                    <div class="media-body">

                        <h4 style="margin:16px 0 0 0">Company Profile</h4>
                    </div>
                </div>
                <!-- media -->
            </div>
            <!-- pageheader -->

            <div class="contentpanel">


                <!-- panel -->


                <!-- row -->

                <div class="row">

                    <!-- col-md-6 -->

                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="panel-btns">
                                    <a href="#" class="panel-minimize tooltips" data-toggle="tooltip" title="Minimize Panel"><i class="fa fa-minus"></i></a>
                                    <a href="#" class="panel-close tooltips" data-toggle="tooltip" title="Close Panel"><i class="fa fa-times"></i></a>
                                </div>
                                <!-- panel-btns -->
                                <h4 class="panel-title">Add Profile</h4>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Company Name</label>
                                            <asp:TextBox ID="Text_Company_Name" class="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Company Logo</label>

                                            <asp:Image ID="Company_Logo_Image" runat="server" />
                                            <asp:FileUpload ID="Company_Logo_Uplaod_Image" runat="server"  Width="485px"/><br />
                                            <%-- <asp:Button ID="Button_Image"  class="btn btn-primary" runat="server" Text="Upload" OnClick="Button_Image_Click" />
                                            <asp:Label ID="Label_Image" runat="server" Text=""></asp:Label>
                                            --%>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Address Line 1</label>
                                            <asp:TextBox ID="Company_addressline1" class="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Address Line 2</label>
                                            <asp:TextBox ID="Company_addressline2" class="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">City</label>
                                            <asp:TextBox ID="Company_City" class="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">State</label>
                                            <asp:TextBox ID="Company_state" class="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Country</label>
                                            <asp:TextBox ID="Company_Country" class="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Email-Id</label>
                                            <asp:TextBox ID="Company_Emailid" class="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Mobile Number</label>
                                            <asp:TextBox ID="Company_Mobile_Number" class="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Phone Number</label>
                                            <asp:TextBox ID="Company_Phone_Number" class="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Website</label>
                                            <asp:TextBox ID="Company_Website" class="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Map Link</label>
                                            <asp:TextBox ID="Company_Map_Link" class="form-control" runat="server"></asp:TextBox>
                                        </div>


                                        <!-- form-group -->
                                    </div>
                                    <!-- col-sm-6 -->

                                    <div class="col-sm-6">

                                        <!-- form-group -->
                                    </div>
                                    <!-- col-sm-6 -->
                                </div>
                                <!-- row -->

                                <div class="row">
                                    <div class="col-sm-6">

                                        <!-- form-group -->
                                    </div>
                                    <!-- col-sm-6 -->

                                    <div class="col-sm-6">

                                        <!-- form-group -->
                                    </div>
                                    <!-- col-sm-6 -->
                                </div>
                                <!-- row -->
                            </div>
                            <!-- panel-body -->
                            <div class="panel-footer">
                                <asp:Button ID="Submit_Company_Detail" class="btn btn-primary" runat="server" Text="Submit" OnClick="Submit_Company_Detail_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
