<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="Ext_RealEstate.Admin.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
     
    <title>Big Street Lettings</title>

    <link href="css/style.default.css" rel="stylesheet">

    
     <script type="text/javascript">
         window.history.forward(1);
        </script>

     <script>
         function password() {
             var Name;

             Name = document.getElementById("<%=password_text.ClientID %>").value;

            if (Name == '') {
                alert("Enter Password");
                return false;
            }
            return true;
        }
    </script>

        <script type="text/javascript">
            function Dialouge(){
                alert("Enter Correct Credentials");
                return true;
            }
            </script>

</head>
<body class="signin">
    <form id="form1" runat="server">
        <section>

            <div class="panel panel-signin">
                <div class="panel-body">
                    <div class="logo text-center">
                        <img src="images/real-estate-logo-3-01.jpg" />
                    </div>
                    <br />

                    <p class="text-center">Sign in to your account</p>

                    <div class="mb30"></div>

                    <div role="form" id="Form2" action="http://themepixels.com/demo/webpage/chain/signin.html" method="post" runat="server">
                        <div class="input-group mb15">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <asp:TextBox ID="Email_text" placeholder="Enter Username" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <!-- input-group -->
                        <div class="input-group mb15">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <asp:TextBox ID="password_text" placeholder="Enter Password" class="form-control" type="password" runat="server"></asp:TextBox>
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
                                <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Sign In" OnClick="Button1_Click1" onclientclick="return password();"/>
                                <%--<button type="submit" class="btn btn-success">Sign In <i class="fa fa-angle-right ml5"></i></button>--%>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </section>
    </form>
</body>
</html>
