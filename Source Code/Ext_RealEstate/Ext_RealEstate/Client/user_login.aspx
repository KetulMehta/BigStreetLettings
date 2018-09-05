<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.Master" AutoEventWireup="true" CodeBehind="user_login.aspx.cs" Inherits="Ext_RealEstate.Client.user_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function Dialouge() {
            alert("Enter Correct Credentials");
            return true;
        }
    </script>
    <link href="css/style.css" rel="stylesheet" />


    <script type="text/javascript">
        window.history.forward(1);
        </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <div class="container">
            <section id="content">
                <form action="" runat="server">
                    <h1> User Login</h1>
                    <div>
                        <asp:TextBox ID="email" placeholder="Email" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox ID="password" type="password" placeholder="Password" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Button ID="user_log" runat="server" Text="LogIn" OnClick="user_login_Click" />

                        
                        <a href="user_registration.aspx">Register</a>
                    </div>
                </form>
                <!-- form -->
                <!-- button -->
            </section>
            <!-- content -->
        </div>
        <!-- container -->
    </body>
</asp:Content>
