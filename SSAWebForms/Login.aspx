<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SSAWebForms.Login" %>


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
	
	
	
    <title>SSA - Login</title>
    <!--

	Credit @ http://www.tooplate.com/view/2108-dashboard

    -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/tooplate.css">
	
	<style>
	body > div > div > div > div { border-radius:2px; border-radius:1px/100%;height:496px;} 
	body > div > div > div > div > div.row.mt-2 > div > form > div:nth-child(4) > p:nth-child(1) > em > a {position:relative;top:0px;left:0px;}
	body > div > div > div > div > div.row.mt-2 > div > form > div:nth-child(4) > p:nth-child(5) > em > a {position:relative;top:0px;left:0px;}
	body > div > div > div > div > div.row.mt-2 > div > form > div:nth-child(4) > pre > em {position:relative;top:0px;left:0px;}
	body > div > div > div > div > div:nth-child(1) > div > h2{font-size:28px;}
	body > div > div > div > div > div:nth-child(1) > div > h2:hover{opacity:0.8;}
	body > div > div > div > div > div.row.mt-2 > div > form > div:nth-child(4) > p:nth-child(1) > em > a:hover{opacity:0.8;color:blue;!important;}
	body > div > div > div > div > div.row.mt-2 > div > form > div:nth-child(4) > p:nth-child(5) > em > a:hover{opacity:0.8;color:blue;!important;}
	#button:hover{color:black;background-color:#F0F3F4;border-color:gray;}
	body > div > div > div > div > div.row.mt-2 > div > form > div:nth-child(4) > p:nth-child(1) > em > a{color:#717D7E;}
	body > div > div > div > div > div.row.mt-2 > div > form > div:nth-child(4) > p:nth-child(1) > em > a:hover{}
	body > div > div > div > div > div.row.mt-2 > div > form > div:nth-child(4) > p:nth-child(5) > em > a{color:#717D7E;}
	body > div > div > div > div > div.row.mt-2 > div > form > div:nth-child(4) > p:nth-child(5) > em > a:hover{color:blue;}
	#button:hover{color:black;background-color:#F4F6F6;border-color:black;}
	#button{width:135px!important;position:relative;left:65px;top:10px;}
	body > div > div > div > div > div.row.mt-2 > div > form > div:nth-child(4) > p:nth-child(1) > em > a{color:blue!important;}
	body > div > div > div > div > div.row.mt-2 > div > form > div:nth-child(4) > p:nth-child(5) > em > a{color:blue!important;}
	body > div > div > div > div > div.row.mt-2 > div > form > div:nth-child(4) > p:nth-child(1) > em > a:hover{color:black!important;}
	body > div > div > div > div > div.row.mt-2 > div > form > div:nth-child(4) > p:nth-child(5) > em > a:hover{color:black!important;}
	body > div > div > div > div > div.row.mt-2 > div > form > div:nth-child(4) > pre > em{color:blue!important;}
	body > div > div > div > div > div.row.mt-2 > div > form > div:nth-child(4) > p:nth-child(5) > em > a{font-style:normal!important;}
	body > div > div > div > div > div.row.mt-2 > div > form > div:nth-child(4) > p:nth-child(1) > em > a{font-style:normal!important;}
	body > div > div > div > div > div.row.mt-2 > div > form > div:nth-child(4) > pre > em{font-style:normal!important;}
	body > div > div > div > div > div:nth-child(1) > div > h2{position:relative;left:10px;bottom:20px;}
    body {margin:50px 0px; padding:0px;text-align:center;align:center;}
	#btnlogin:hover{background-color:black;color:white;border-color:white!important;border-radius:5px;}
    #btnlogin{width:150px;}
	#ctl00 > div:nth-child(6) > p:nth-child(5) > em > a {color:blue;}
    #ctl00 > div:nth-child(6) > p:nth-child(1) > em > a{color:blue!important;}
    #ctl00 > div:nth-child(6) > p:nth-child(5) > em > a:hover {opacity:0.7;}
    #ctl00 > div:nth-child(6) > p:nth-child(1) > em > a:hover{opacity:0.7;}
	#ctl00 > div:nth-child(3) > label:hover {opacity:0.9;}
	#ctl00 > div:nth-child(4) > label:hover {opacity:0.9;}
	body > div > div > div > div {border-radius:3px;}
	</style>
	
	<script>
   $(document).ready(function(){
  $("#btnlogin").click(function(){
    var _email = $("#email").val();
	  var _pass = $("#password").val();
        if(_email!="Brandon"&&_pass!="Brandon")
		{
		$(".container").effect( "shake", {times:4},1000);
		}
  });
});	
    </script>
	
	
</head>

<body class="bg03">
    <div class="container">
        <div class="row tm-mt-big">
            <div class="col-12 mx-auto tm-login-col">
                <div class="bg-white tm-block">
                    <div class="row">
                        <div class="col-12 text-center">
                            <h2 class="tm-block-title mt-3">Savings South Africa</h2>
                        </div>
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                            <form class="tm-login-form" runat="server">
                                <div class="input-group">
                                    <label for="username" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Username or Email</label>
                                    <input name="username" type="text" class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7" id="email" required runat="server">
                                </div>
                                <div class="input-group mt-3">
                                    <label for="password" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Password</label>
                                    <input name="password" type="password" class="form-control validate" id="password" required runat="server">
                                </div>
                                <div class="input-group mt-3">
                                        
                                       <asp:Button ID="btnlogin" runat="server" Text="Login" class="btn btn-primary d-inline-block mx-auto" OnClick="btnlogin_Click"/>
                                </div>
                                <div class="input-group mt-3" style="position:relative;top:30px;left:80px;font-style:normal!important;">
                                    <p><em><a href="Registration.aspx" runat="server">Signup for a new account</a></em></p>
                                    <p><em><pre> or </pre></em></p>
                                    <p><em><a href="" runat="server">Forgot password</a></em></p>
                                </div>
                            </form>
                        </div>
                    </div>                    
                </div>
            </div>
        </div>
        <footer class="row tm-mt-big">
            <div class="col-12 font-weight-light text-center">
                <p class="d-inline-block tm-bg-black text-white py-2 px-4">
                </p>
            </div>
        </footer>
    </div>
</body>
</html>
