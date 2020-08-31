<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="SSAWebForms.Products_Page" %>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SSA - Products</title>
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
    <!--

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
	body > div > div.row > div > nav{}
	#home > div > div:nth-child(1) > div > nav > a > h1:hover{opacity:0.9;}
	#home > div > div.row.tm-content-row.tm-mt-big > div.col-xl-8.col-lg-12.tm-md-12.tm-sm-12.tm-col > div > div.row > div.col-md-8.col-sm-12 > h2:hover{opacity:0.9;}
	#home > div > div.row.tm-content-row.tm-mt-big > div.col-xl-8.col-lg-12.tm-md-12.tm-sm-12.tm-col > div > div.row > div.col-md-4.col-sm-12.text-right > a:hover{background-color:#ABEBC6;}
	#home > div > div.row.tm-content-row.tm-mt-big > div.col-xl-4.col-lg-12.tm-md-12.tm-sm-12.tm-col > div > h2:hover{opacity:0.9;}
	#home > div > div.row.tm-content-row.tm-mt-big > div.col-xl-4.col-lg-12.tm-md-12.tm-sm-12.tm-col > div > a:hover{background-color:#5DADE2;}
	</style>
	
	
</head>

<body id="reportsPage" class="bg02">
    <div class="" id="home">
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
                                    <a class="dropdown-item" href="Transactions.aspx" runat="server" >Transactions</a>
                                </div>
                            </li>
                            <li class="nav-item active">
                                <a class="nav-link" href="Products.aspx" runat="server" >Products</a>
                            </li>
							<li class="nav-item">
    
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">
                                    Settings
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="Edit Account.aspx" runat="server">Profile</a>
                                </div>
                            </li>						
                        </ul>
                        <ul class="navbar-nav">
                            </li>
									<a class="nav-link d-flex" href="login.aspx">
									<img src="img/profile-image.png" type="file" id="Profile"  alt="Profile Image" class="img-fluid" style="border-radius:25px;" />
                                    <span style="position:relative;top:10px;">Logout</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
            <!-- row -->
            <div class="row tm-content-row tm-mt-big">
                <div class="col-xl-8 col-lg-12 tm-md-12 tm-sm-12 tm-col">
                    <div class="bg-white tm-block h-100">
                        <div class="row">
                            <div class="col-md-8 col-sm-12">
                                <h2 class="tm-block-title d-inline-block">Products</h2>

                            </div>
                            <div class="col-md-4 col-sm-12 text-right">
                                <a href="add-product.html" class="btn btn-small btn-primary">Add New Product</a>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped tm-table-striped-even mt-3">
                                <thead>
                                    <tr class="tm-bg-gray">
                                        <th scope="col">&nbsp;</th>
                                        <th scope="col">Product Name</th>
                                        <th scope="col" class="text-center">Units</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">
                                            <input type="checkbox" aria-label="Checkbox">
                                        </th style="color:green;">
                                        <td class="tm-product-name">Orange Juice 2x</td>
                                        <td class="text-center">2</td>
                                        <td>2018-10-28</td>
                                        <td><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="tm-table-mt tm-table-actions-row">
                            <div class="tm-table-actions-col-left">
                                <button class="btn btn-danger">Delete Selected Items</button>
                            </div>
                            <div class="tm-table-actions-col-right">
                                <span class="tm-pagination-label">Page</span>
                                <nav aria-label="Page navigation" class="d-inline-block">
                                    <ul class="pagination tm-pagination" style="">
                                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item">
                                            <span class="tm-dots d-block">...</span>
                                        </li>
                                        <li class="page-item"><a class="page-link" href="#">13</a></li>
                                        <li class="page-item"><a class="page-link" href="#">14</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xl-4 col-lg-12 tm-md-12 tm-sm-12 tm-col">
                    <div class="bg-white tm-block h-100">
                        <h2 class="tm-block-title d-inline-block">Product Categories</h2>
                        <table class="table table-hover table-striped mt-3">
                            <tbody>
                                <tr>
                                    <td>Groceries</td>
                                    <td class="tm-trash-icon-cell"><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                </tr>
                                <tr>
                                    <td>Clothes</td>
                                    <td class="tm-trash-icon-cell"><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                </tr>
                                <tr>
                                    <td>Jewlery</td>
                                    <td class="tm-trash-icon-cell"><i class="fas fa-trash-alt tm-trash-icon"></i></td>
                                </tr>
                            </tbody>
                        </table>

                        <a href="#" class="btn btn-primary tm-table-mt">Add New Category</a>
                    </div>
                </div>
            </div>
            <footer class="row tm-mt-small">
                <div class="col-12 font-weight-light">
                    <p class="d-inline-block tm-bg-black text-white py-2 px-4">
                        <a rel="nofollow" href="" class="text-white tm-footer-link"></a>
                    </p>
                </div>
            </footer>
        </div>
    </div>
    <script src="js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script>
        $(function () {
            $('.tm-product-name').on('click', function () {
                window.location.href = "edit-product.html";
            });
        })
    </script>
</body>

</html>
