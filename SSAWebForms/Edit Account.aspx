<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit Account.aspx.cs" Inherits="SSAWebForms.Edit_Account_Page" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>SSA Edit Account</title>
    <!--
	http://www.tooplate.com/view/2108-dashboard

    -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/tooplate.css">
	
	<style>
	body > div > div.row.tm-content-row.tm-mt-big > div:nth-child(2) > div > div:nth-child(2) > div > form > div.row > div.col-12.col-sm-4 > button{text-align:center;width:400px;!important;}
	body > div > div.tm-col.tm-col-big > div{width:1000px;position:relative;top:50px;left:100px;}
	body > div > div.tm-col.tm-col-big > div > div:nth-child(1) > div > h2:hover{opacity:0.9;}
	#navbarSupportedContent > ul.navbar-nav.mx-auto > li:nth-child(4) > img{width:20px;height:20px;}
	#navbarSupportedContent > ul:nth-child(2) > a > img{border-radius:3px;margin-right:2px;}
	#navbarSupportedContent > ul.navbar-nav.mx-auto > a > img{position:relative;left:70px;}
	#navbarSupportedContent > ul:nth-child(2) > a > img{position:relative;right:10px;}
	#navbarSupportedContent > ul:nth-child(2) > a > img{width:50px;}
	#name{width:540px;!important;position:relative;left:150px;}
	#email{width:540px;!important;position:relative;left:150px;}
	#password{width:540px;!important;position:relative;left:150px;}
	#confpassword{width:540px;!important;position:relative;left:150px;}
	#age{width:540px;!important;position:relative;left:150px;}
	body > div > div.tm-col.tm-col-big > div > div:nth-child(1) > div > h1{position:relative;left:420px;bottom:25px;}
	body > div > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(1) > label{position:relative;left:330px;top:15px;}
	body > div > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(2) > label{position:relative;left:330px;top:15px;}
	body > div > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(3) > label{position:relative;left:330px;top:15px;}
	body > div > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(4) > label{position:relative;left:330px;top:15px;}
	body > div > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(5) > label{position:relative;left:330px;top:15px;}
	body > div > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div.row > div.col-12.col-sm-8.tm-btn-right > button{position:relative;right:200px;top:30px!important;width:250px;padding-right:50px;}
	body > div > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div.row > div.col-12.col-sm-4 > button{position:relative;left:150px;top:30px!important;width:250px;}
	#navbarSupportedContent > ul.navbar-nav.mx-auto > li.nav-item.active > a{border-radius:5px;}
	#navbarSupportedContent > ul.navbar-nav.mx-auto > li:nth-child(2) > a{border-radius:5px;}
	#navbarDropdown{border-radius:5px;}
	body > div > div.row > div > nav > a > h1:hover{opacity:0.9;}
	body > div > div.row.tm-content-row.tm-mt-big > div:nth-child(2) > div > div:nth-child(2) > div > form > div.row > div.col-12.col-sm-4 > button{text-align:center;width:400px;!important;}
	body > div > div.tm-col.tm-col-big > div{width:1000px;position:relative;top:50px;left:100px;}
	body > div > div.tm-col.tm-col-big > div > div:nth-child(1) > div > h2:hover{opacity:0.9;}
	#navbarSupportedContent > ul.navbar-nav.mx-auto > li:nth-child(4) > img{width:20px;height:20px;}
	#navbarSupportedContent > ul:nth-child(2) > a > img{border-radius:3px;margin-right:2px;}
	#navbarSupportedContent > ul.navbar-nav.mx-auto > a > img{position:relative;left:70px;}
	#navbarSupportedContent > ul:nth-child(2) > a > img{position:relative;right:10px;}
	#navbarSupportedContent > ul:nth-child(2) > a > img{width:50px;}
	#name{width:540px;!important;position:relative;left:200px;}
	#email{width:540px;!important;position:relative;left:200px;}
	#password{width:540px;!important;position:relative;left:200px;}
	#confpassword{width:540px;!important;position:relative;left:200px;}
	#age{width:540px;!important;position:relative;left:50px;}
	body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(3) > label{position:relative;left:30px;}
	body > div > div.tm-col.tm-col-big > div > div:nth-child(1) > div > h1{position:relative;left:420px;bottom:25px;}
	body > div > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(1) > label{position:relative;left:0px;top:100px;}
	body > div > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(2) > label{position:relative;left:330px;top:15px;}
	body > div > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(3) > label{position:relative;left:330px;top:15px;}
	body > div > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(4) > label{position:relative;left:330px;top:15px;}
	body > div > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(5) > label{body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(6)}
	body > div > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div.row > div.col-12.col-sm-8.tm-btn-right > button{position:relative;right:200px;top:30px!important;width:250px;padding-right:50px;}
	body > div > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div.row > div.col-12.col-sm-4 > button{position:relative;left:150px;top:30px!important;width:250px;}
	body > div.tm-col.tm-col-big{height:100px!important;width:900px!important;position:relative;top:30px;}
	body > div.tm-col.tm-col-big > div > div:nth-child(1) > div{position:relative;left:200px;font-size:30px;}
	#delete{position:relative;right:50px;top:30px;}
	#update{position:relative;left:265px;top:30px;width:180px!important;}
	body > div.tm-col.tm-col-big > div{position:relative;left:220px;}
	body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(6){position:relative;left:150px;top:15px;width:550px;}
	body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(1) > label{position:relative;left:80px;top:55px;}
	body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(2) > label{position:relative;left:50px;top:55px;}
	body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(3) > label{position:relative;left:55px;top:55px;}
	body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(4) > label{position:relative;left:30px;top:55px;}
	body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(5) > label{position:relative;left:90px;top:55px;}
	body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(6) > label{position:relative;left:-100px;top:35px;}
	#phone{width:540px;!important;position:relative;left:50px;bottom:20px;}
	body > div.tm-col.tm-col-big{position:relative;right:0px;}
	#surname{width:540px;!important;position:relative;left:200px;}
	body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(4) > label{position:relative;left:20px;}
	body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(4) > label{position:relative;left:75px;}
	body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(7){position:relative;}
	body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(7){position:relative;top:25px;left:25px;}
	body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(7) > select{width:540px;height:40px;}
	body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(7) > label{position:relative;right:20px;}
	body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(8) > label{position:relative;top:60px;left:90px;}
	body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(9) > label{position:relative;top:60px;left:20px;}
	#Submit{position:relative;left:325px;width:300px;top:25px;}
	#Submit:hover{background-color:black;color:white;border-color:white;}
	#username{width:540px;!important;position:relative;left:200px;}
	#middlename{width:540px;!important;position:relative;left:200px;}
	#navbarSupportedContent > ul > li.nav-item.active > a:hover{opacity:0.8;border-color:black;}
	#navbarSupportedContent > ul > li.nav-item.active > a{border-radius:5px;}
	#navbarSupportedContent > ul > li:nth-child(2) > a:hover{border-color:black;}
	#navbarSupportedContent > ul > li:nth-child(2) > a:hover{border-radius:5px;}
	#navbarDropdown{border-radius:5px;}
	body > div.row > div > nav > a > h1:hover{opacity:0.8;}
	body > div.tm-col.tm-col-big > div > div:nth-child(1) > div > u:hover{opacity:0.8;}
	body > div.row > div > nav{background-color:white!important;}
	#phone{width:540px;!important;position:relative;left:120px;}
	body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(8) > select{position:relative;bottom:25px;left:20px;}
	body > div.tm-col.tm-col-big > div > div:nth-child(2) > div > form > div:nth-child(8) > label{position:relative;bottom:100px;}
	#Submit{width:300px;}
	#Submit:hover{background-color:#F2F3F4;color:black;border-color:black;}
	body > div > div.row > div > nav{}
	body > div > div.tm-col.tm-col-big > div > div.row > div > h1:hover{opacity:0.9;}
	</style>
	
	<script>

    </script>
	
	
</head>

<body class="bg03">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="navbar navbar-expand-xl navbar-light bg-light" style="background-color:white!important;">
                    <a class="navbar-brand" href="">
                        <i class="fas fa-3x fa-tachometer-alt tm-site-icon"></i>
                        <h1 class="tm-site-title mb-0">SSA Dashboard</h1>
                    </a>
                    <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav mx-auto">
                        	
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">
                                    Reports
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Transactions.aspx" runat="server">Transactions</a>
                                </div>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Products.aspx" runat="server" >Products</a>
                            </li>
							       
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">
                                    Settings
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Edit Account.aspx">Profile</a>
                                </div>
                            </li>						
                        </ul>
                        <ul class="navbar-nav">
                            </li>
									<a class="nav-link d-flex" href="Login.aspx">
									<img src="img/profile-image.png" type="file" id="Profile"  alt="Profile Image" class="img-fluid" style="border-radius:25px;" />
                                    <span style="position:relative;top:10px;">Logout</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
		
            <div class="tm-col tm-col-big">
                <div class="bg-white tm-block">
                    <div class="row">
                        <div class="col-12" style="position:relative;left:100px;">
							<input id="fileInput" type="file" style="display:none;" />
							<img src="img/profile-image.png"  type="file" id="ProfileImage" alt="Profile Image" class="img-fluid" width="190px" style="position:relative;left:200px;top:10px;border-radius:5px;"/>
							<h1 class="tm-block-title">Edit Account</h1>
                        </div>
                    </div>
                   <div class="tm-col tm-col-big"style="position:relative;left:20px;">
                <div class="bg-white tm-block"style="border-radius:0px;">
                    <div class="row" style="position:relative;right:30px;">
                        <div class="col-12">
                            <form action="" class="tm-signup-form">
                                <div class="form-group" style="position:relative;right:100px;">
                                    <label for="name" style="position:relative;left:200px;top:15px;">Name:</label>
                                    <input placeholder="Name ..." id="name" name="name" type="text"  class="form-control validate" runat="server">
                                </div>
								 <div class="form-group" style="position:relative;right:100px;">
                                    <label for="name" style="position:relative;left:200px;top:15px;">Middle Name:</label>
                                    <input placeholder="Middle Name ..." id="middlename" name="name" type="text"  class="form-control validate" runat="server">
                                </div>
								  <div class="form-group" style="position:relative;right:100px;">
                                    <label for="name" style="position:relative;left:200px!important;top:15px;">Surname:</label>
                                    <input placeholder="Surname ..." id="surname" name="name" type="text"  class="form-control validate" runat="server">
                                </div>
								 <div class="form-group" style="position:relative;right:100px;">
                                    <label for="name" style="position:relative;left:200px;top:15px;">Username:</label>
                                    <input placeholder="Username ..." id="username" name="name" type="text"  class="form-control validate" runat="server">
                                </div>
                                <div class="form-group" style="position:relative;right:100px;">
                                    <label for="email" style="position:relative;left:200px;top:15px;">Email:</label>
                                    <input placeholder="Email ..." id="email" name="email" type="email" class="form-control validate" runat="server">
                                </div>
								  <div class="form-group" style="position:relative;left:50px;">
                                    <label for="phone" style="position:relative;left:50px;top:15px;">Age:</label>                                                                        
                                    <input name="age" type="date" class="form-control validate" id="age" runat="server">
                                </div>
								  <div class="form-group" style="position:relative;right:20px;top:30px;">
                                    <label for="email" style="position:relative;left:120px;top:-15px;">Phone Number:</label>
                                    <input placeholder="Phone number ..." style="position:relative;top:-30px;right:0px;" id="phone" name="email" type="text" class="form-control validate" runat="server">
                                </div>
								  <div class="form-group" style="position:relative;top:0px;left:100px;">
								  <label for="" style="position:relative;bottom:-5px;left:0px;">Employment Industry:</label>
								  <select id="" name="">
								  <option value="">Agriculture</option>
								  <option value="">Basic Metal Production</option>
								  <option value="">Chemical industries</option>
								  <option value="">Commerce</option>
								  <option value="">Construction</option>
								  <option value="">Education</option>
								  <option value="">Financial services; professional services</option>
								   <option value="">Food; drink; tobacco</option>
								   <option value="">Forestry</option>
								  <option value="">Health Service</option>
								  <option value="">Tourism</option>
								  <option value="">Mining</option>
								  <option value="">Mechanical and electrical engineering</option>
								  <option value="">Media</option>
								  <option value="">Oil and gas production</option>
								   <option value="">Telecommuication</option>
								   <option value="">Public service</option>
								  <option value="">Shipping</option>
								  <option value="">Textiles</option>
								  <option value="">Transport</option>
								  <option value="">Transport equipment manufacturing</option>
								  <option value="">Utilities</option>
								   <option value="">Unemployeed</option>
								  </select>
								   </div>
                                <div class="form-group" style="position:relative;right:100px;" >
                                    <label for="password" style="position:relative;top:15px;left:200px;">Password:</label>
                                    <input placeholder="Password ..." id="password" name="password" type="password" class="form-control validate" runat="server" >
                                </div>
                                <div class="form-group" style="position:relative;right:100px;">
                                    <label for="password2" style="position:relative;top:15px;left:200px;">Re-enter Password:</label>
                                    <input placeholder="Confirm Password" id="confpassword" name="confpassword" type="password" class="form-control validate" runat="server">
                                </div>
                              
                                <div class="row" style="position:relative;right:100px;width:100px;" >
                                    <div class="col-12 col-sm-4">
                                        <button type="submit" id="Submit" class="btn btn-primary" runat="server">Submit
                                        </button>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
                </div>
            </div>
            <div class="tm-col tm-col-small">
              
            </div>
        </div>
      
    </div>

    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
</body>

</html>
