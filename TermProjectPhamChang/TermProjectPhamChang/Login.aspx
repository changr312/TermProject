﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TermProjectPhamChang.Login" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Sign In</div>
<%--                            <div style="float: right; font-size: 80%; position: relative; top: -10px"><a href="#">Forgot password?</a></div>--%>
                        </div>

                        <div style="padding-top: 30px" class="panel-body">

                            <div style="display: none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <input type="text" class="form-control" name="email" placeholder="Email">

                            </div>

                            <div style="margin-bottom: 25px" class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <input id="login-password" type="password" class="form-control" name="password" placeholder="Password">

                            </div>

                            <div class="input-group">
                                <div class="checkbox">
                                    <label>
                                          <input id="login-remember" type="checkbox" name="remember" value="1"> Remember Me        
                                    </label>
                                </div>
                            </div>


                            <div style="margin-top: 10px" class="form-group">
                                <!-- Button -->

                                <div class="col-sm-12 controls">
                                    <asp:Button ID="btnLogin" runat="server" Text="Login"  CssClass="btn btn-success"/>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-12 control">
                                    <div style="border-top: 1px solid#888; padding-top: 15px; font-size: 85%">
                                        Don't have an account? 
                                            <a href="Registration.aspx">Register Here
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