<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Testimonial.aspx.cs" Inherits="Ext_RealEstate.Admin.Testimonial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">

        <div class="mainpanel">
            <div class="pageheader">
                <div class="media">
                    <div class="pageicon pull-left">
                        <i class="fa fa-file-o fa-10x"></i>
                    </div>
                    <div class="media-body">

                        <h4 style="margin: 16px 0 0 0">Manage Testimonials</h4>
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
                                <h4 class="panel-title">Testimonial</h4>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Name</label>
                                            <asp:TextBox ID="Text_Name" class="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Image</label>
                                            <asp:Image ID="Testimonial_Image" runat="server" />
                                            <asp:FileUpload ID="FileUpload_Image" runat="server" /><br />
                                            <%-- <asp:Button ID="Button_Testimony_Image"  class="btn btn-primary" runat="server" Text="Upload" OnClick="Button_Testimony_Image_Click" />
                                            <asp:Label ID="Label_Testimony_Image" runat="server" Text=""></asp:Label>--%>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Comment</label>
                                            <asp:TextBox ID="Testimonial_Comment" class="form-control" runat="server"></asp:TextBox>
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
                                <asp:Button ID="Submit_Testimony" class="btn btn-primary" runat="server" Text="Submit" OnClick="Submit_Testimony_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
