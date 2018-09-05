<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="Ext_RealEstate.Admin.changepassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
    function checkLength(){
    var textbox = document.getElementById("textbox");
    if(!(textbox.value.length <= 10 && textbox.value.length >= 5)){
        alert("make sure the input is between 5-10 characters long");
        return false;
    }
    return true;
    }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="mainpanel">
            <div class="pageheader">
                <div class="media">
                    <div class="pageicon pull-left">
                        <i class="fa fa-map-marker fa-10x"></i>
                    </div>
                    <div class="media-body">

                        <h4 style="margin:16px 0 0 0">Change Password</h4>
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
                                            <asp:TextBox ID="Text_Country" class="form-control" runat="server"></asp:TextBox>
                                            <%--<asp:RequiredFieldValidator ControlToValidate="Text_Country" ID="Text_CountryValidator" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>--%>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                    <!-- col-sm-6 -->

                                     <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label id="newpassword" class="control-label" style="font-size: large">New Password</label>
                                            <%--<asp:TextBox ID="TextBox1" class="form-control" runat="server"></asp:TextBox><asp:RegularExpressionValidator ControlToValidate="newpassword"  ID="password validator"ValidationExpression="^[\s\S]{5,8}$" runat="server" ErrorMessage="Minimum 5 and Maximum 8 characters required."></asp:RegularExpressionValidator>--%>
                                            <%--<asp:RequiredFieldValidator ControlToValidate="Text_Country" ID="Text_CountryValidator" runat="server" ErrorMessage="Field Required"></asp:RequiredFieldValidator>--%>
                                        </div>
                                        <!-- form-group -->
                                    </div>
                                    <!-- col-sm-6 -->

                                     <div class="panel-body">
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="form-group">
                                            <label class="control-label" style="font-size: large">Confirm New Password</label>
                                            <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>
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
                                <asp:Button ID="Submit_password" class="btn btn-primary" runat="server" Text="Submit" OnClick="Submit_password_Click" OnClientClick="return checkLength();"/>
                            </div>
    </form>
</body>
</html>
