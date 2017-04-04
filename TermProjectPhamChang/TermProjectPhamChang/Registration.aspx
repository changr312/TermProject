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

                            <div style="padding-top: 30px" class="panel-body">

                                <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                                <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input type="text" class="form-control" name="email" placeholder="Email"/>
                                </div>

                                <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                    <input type="text" class="form-control" name="name" placeholder="Name"/>
                                </div>

                                <div style="margin-bottom: 25px" class="input-group">
                                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                    <input id="loginPassword" type="password" class="form-control" name="password" placeholder="Password"/>
                                </div>

                                <div class="input-group">
                                    <div class="checkbox">
                                        <label>
                                            <input id="registerCookie" type="checkbox" name="remember" value="1"/>
                                            Store a cookie?        
                                        </label>
                                    </div>
                                </div>


                                <div style="margin-top: 10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-12 controls">
                                        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-success" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="border-top: 1px solid#888; padding-top: 15px; font-size: 85%">
                                            Sign In
                                            <a href="Login.aspx">Sign In
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
