<%@ Page Title="" Language="C#" MasterPageFile="~/Client/Client.Master" AutoEventWireup="true" CodeBehind="agent_signin.aspx.cs" Inherits="Ext_RealEstate.Client.agent_signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/style.css" rel="stylesheet" />
     <script type="text/javascript">
         function Dialouge() {
             alert("Enter Correct Credentials");
             return true;
         }
            </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <div class="container">
            <section id="content">
                <form id="Form1" action="" runat="server">
                    <h1>Agent Login</h1>
                    <div>
                        <asp:TextBox ID="email" placeholder="Email" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:TextBox ID="password" type="password" placeholder="Password" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Button ID="agent_log" runat="server" Text="LogIn" OnClick="user_log_Click" />

                        
                        <a href="agentregistration.aspx">Register</a>
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
