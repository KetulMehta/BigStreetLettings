<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ext_RealEstate.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body class="signin">


    <section>

        <div class="panel panel-signin">
            <div class="panel-body">
                <div class="logo text-center">
                    <img src="images/real-estate-logo-3-01.jpg" />
                </div>
                <br />

                <p class="text-center">Sign in to your account</p>

                <div class="mb30"></div>

                <form id="Form1" action="http://themepixels.com/demo/webpage/chain/signin.html" method="post" runat="server">
                    <div class="input-group mb15">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input type="text" class="form-control" placeholder="Username">
                    </div>
                    <!-- input-group -->
                    <div class="input-group mb15">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input type="password" class="form-control" placeholder="Password">
                    </div>
                    <!-- input-group -->

                    <div class="clearfix">
                        <div class="pull-left">
                            <div class="ckbox ckbox-primary mt10">
                                <input type="checkbox" id="rememberMe" value="1">
                                <label for="rememberMe">Remember Me</label>
                            </div>
                        </div>
                        <div class="pull-right">
                            <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Sign In" OnClick="Button1_Click1" />
                            <%--<button type="submit" class="btn btn-success">Sign In <i class="fa fa-angle-right ml5"></i></button>--%>
                        </div>
                    </div>
                </form>

                <%--</div><!-- panel-body -->
                <div class="panel-footer">
                    <a href="signup.html" class="btn btn-primary btn-block">Not yet a Member? Create Account Now</a>
                </div><!-- panel-footer -->
            </div><!-- panel -->--%>
            </div>
        </div>

    </section>


    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/jquery-migrate-1.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/modernizr.min.js"></script>
    <script src="js/pace.min.js"></script>
    <script src="js/retina.min.js"></script>
    <script src="js/jquery.cookies.js"></script>

    <script src="js/custom.js"></script>

</body>

</html>
