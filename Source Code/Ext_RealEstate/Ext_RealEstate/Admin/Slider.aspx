<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Slider.aspx.cs" Inherits="Ext_RealEstate.Admin.Slider" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">

        <div class="mainpanel">
            <div class="pageheader">
                <div class="media">
                    <div class="pageicon pull-left">
                        <i class="fa fa-sliders fa-10x" ></i>
                    </div>
                    <div class="media-body">

                        <h4 style="margin:16px 0 0 0">Manage Slider</h4>
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
                                <h4 class="panel-title">Add Slider</h4>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Title</label>
                                            <asp:TextBox ID="TextBox_Title" class="form-control" runat="server"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Slider Image</label>
                                            <asp:Image ID="Slider_Image" runat="server" />
                                            <asp:FileUpload ID="FileUpload_Image" runat="server" /><br/>
                                            <%--<asp:Button ID="Button_Image"  class="btn btn-primary" runat="server" Text="Upload" OnClick="Button_Image_Click" />--%>
                                            <%--<asp:Label ID="Label_Image" runat="server" Text=""></asp:Label>--%>
                                        </div>

                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Description</label>
                                            <asp:TextBox ID="TextBox_Description" class="form-control" runat="server"></asp:TextBox>
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
                                <asp:Button ID="Submit_Slider" class="btn btn-primary" runat="server" Text="Submit" OnClick="Submit_Slider_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
