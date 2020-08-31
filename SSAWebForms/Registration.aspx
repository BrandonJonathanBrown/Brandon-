<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="SSAWebForms.Registration_Page" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript" src="jquery-1.3.2.min.js"></script>
	<script type = "text/javascript"src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script type = "text/javascript"src = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>
	<script src="script.js"></script>
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
    <title>SSA - Registration</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/style.css">
	

	
	<style>
     #btnRegister{background-color:black;color:white;border-color:white;}
	#btnRegister:hover{background-color:#479761;color:white;border-color:black;}
	body > section > div > div > div.signup-form > h2:hover{opacity:0.9;}
	body > section > div > div > div.signup-image > figure > img:hover{opacity:0.7;}
	body > section > div > div > div.signup-image > a:hover{color:red;}
	</style>
	
	
</head>
<body>

        <!-- Sign up form -->
        <section class="signup" style="width:500px;height:500px;">
            <div class="container" style="position:relative;left:50px;width:1500px;height:850px;">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up</h2>
                        <form class="register" runat="server" id="register" width="200px" height="200px">
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="fname" width="200px" height="200px"  runat="server" placeholder="First Name"/>
                            </div>
							<div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="mname" width="200px" height="200px"  runat="server" placeholder="Middle Name"/>
                            </div>
							<div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="lname" width="200px" height="200px"  runat="server" placeholder="Last Name"/>
                            </div>
								<div class="form-group">
                                <fieldset>
                                    <h6>Age group</h6><input name="name" title="Select birth date" type="datetime-local"  runat="server" class="form-control" id="age" style="height:0px;"  required="" runat="server"/>
                                </fieldset>
                            </div>
							<div class="form-group">
							 <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
							<input name="name" type="text" class="form-control" id="username" placeholder="Username " required="" runat="server"/>
							</div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" width="200px" height="200px"  runat="server" placeholder="Your Email"/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" width="200px" height="200px"  runat="server" placeholder="Password"/>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_pass" id="re_pass" width="200px" height="200px"  runat="server" placeholder="Repeat your password"/>
                            </div>
                            <div class="form-group" width="200px" height="200px">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term"/>
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button" width="200px" height="200px">
                                 <asp:Button ID="btnRegister" runat="server" Text="Login" class="form-submit" OnClick="btnRegister_Click"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images/signup-image.jpg" alt="sign up image"></figure>
                        <a href="Login.aspx" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>


    <!-- JS -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="js/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>