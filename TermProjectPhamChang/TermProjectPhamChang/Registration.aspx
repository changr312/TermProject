<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="TermProjectPhamChang.Registration" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div id="register" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Register</div>
                        </div>

                        <div style="padding-top: 8px" class="panel-body">

                            <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail" ErrorMessage="* Required" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>
                            </div>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" ErrorMessage="* Required" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Name"></asp:TextBox>
                            </div>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="* Required" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" type="password" placeholder="Password"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword2" ErrorMessage="* Required" Font-Bold="False" ForeColor="Red"></asp:RequiredFieldValidator>
                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox ID="txtPassword2" runat="server" CssClass="form-control" type="password" placeholder="Retype Password"></asp:TextBox>
                            </div>

                            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
                            <div class="input-group">
                                <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="cbCookie" runat="server" />
                                        Store a cookie?        
                                    </label>
                                </div>
                            </div>

                            <div style="margin-top: 10px" class="form-group">
                                <!-- Button -->

                                <div class="col-sm-12 controls">
                                    <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-success" OnClick="btnRegister_Click" />
                                    <br />
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12 control">
                                    <div style="border-top: 1px solid#888; padding-top: 15px; font-size: 85%">
                                        <a href="Login.aspx">Sign In Here
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
