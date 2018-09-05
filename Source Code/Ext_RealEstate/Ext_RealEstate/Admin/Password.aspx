<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Password.aspx.cs" Inherits="Ext_RealEstate.Admin.Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function Validate() {
            var oldpassword = document.getElementById("<%=Text_password.ClientID %>").value;
            var password = document.getElementById("<%=Text_newpassword.ClientID %>").value;
            var confirmPassword = document.getElementById("<%=Text_confirmpassword.ClientID %>").value;

            //if (!(password.value.length <= 10 && password.value.length >= 5)) {
            //    {
            //    alert("make sure the input is between 5-10 characters long");
            //    return false;
            //    }
            

            if (password != confirmPassword) {
                alert("Passwords do not match.");
                return false;
            }
        
            return true;
        }
    </script>

    <script type="text/javascript">
        window.history.forward(1);
    </script>

    <script type="text/javascript">
        function Dialouge() {
            alert("Enter Correct Existing Password");
            return true;
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="mainpanel">
            <div class="pageheader">
                <div class="media">
                    <div class="pageicon pull-left">
                        <i class="glyphicon glyphicon-user fa-10x"></i>
                    </div>
                    <div class="media-body">

                        <h4 style="margin: 16px 0 0 0">Update Password</h4>
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
                                <h4 class="panel-title">Change password</h4>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Old Password</label>
                                            <asp:TextBox ID="Text_password" type="password" class="form-control" runat="server"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ControlToValidate="Text_Country" ID="Text_CountryValidator" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>--%>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                    <!-- col-sm-6 -->



                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">New Password</label>
                                            <asp:TextBox ID="Text_newpassword" type="password" class="form-control" runat="server"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ControlToValidate="Text_Country" ID="Text_CountryValidator" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>--%>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                    <!-- col-sm-6 -->


                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Confirm New Password</label>
                                            <asp:TextBox ID="Text_confirmpassword" type="password" class="form-control" runat="server"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ControlToValidate="Text_Country" ID="Text_CountryValidator" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>--%>
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
                                <asp:Button ID="Submit_password" class="btn btn-primary" runat="server" Text="Submit" OnClick="Submit_password_Click" OnClientClick="return Validate();" />
                            </div>
    </form>
</asp:Content>
