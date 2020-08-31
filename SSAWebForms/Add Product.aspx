<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add Product.aspx.cs" Inherits="SSAWebForms.Add_Product" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SSA - Add Product</title>
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
        body {
  background-image: url("../img/dash-bg-021.jpg")!important;
}
            body > div > div > div > div:nth-child(2) > div > form > div:nth-child(6) > div > button:hover {
            background-color:maroon;color:white;border-color:white;border-radius:3px;}
            body > div > div > div > div:nth-child(2) > div > form > div:nth-child(6) > div > button {
                width: 200px;
            }
            body > div > div > div > div:nth-child(2) > div > form > div:nth-child(8) > div > button {
                 width: 200px;position:relative;left:10px;top:20px;
            }
             body > div > div > div > div:nth-child(2) > div > form > div:nth-child(8) > div > button:hover {
                background-color:black;color:white;border-color:white;border-radius:3px;}
            }
        body > div > div > div > div:nth-child(1) > div:nth-child(2) > h2:hover{  opacity: 0.9;}
        body > div > div > div > div:nth-child(2) > div > form > ol > li {
            background-color:black!important;color:white;
        }
         body > div > div > div > div:nth-child(2) > div > form > ol > li:hover{
          color:burlywood;
        }
         body > div > div > div > div:nth-child(2) > div > form > ol{
          border-radius:3px;
        }
    </style>
	
	
</head>

<body class="bg03">

    <div class="container">
            <div class="tm-col tm-col-big">
                <div class="bg-white tm-block" style="width:1000px;position:relative;left:80px;top:20px;border-radius:5px;background-color:white!important;color:black;">
                    <div class="row">
                        <div class="col-12 col-sm-4">
                        </div>
                        <div class="col-12">
                            <h2 class="tm-block-title" style="color:black;position:relative;left:500px;" >
                                <i class="far fa-user mr-2 "></i> 
                                <span>Add Product</span></a></h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <form action="" class="tm-edit-product-form">
                                <div class="input-group mb-3">
                                    <label for="name" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Product
                                        Name
                                    </label>
                                    <input id="name" name="name" type="text" class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7">
                                </div>
                                <div class="input-group mb-3">
                                    <label for="description" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 mb-2">Description</label>
                                    <textarea class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7" runat="server" rows="3" required></textarea>
                                </div>
                                <div class="input-group mb-3">
                                    <label for="category" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Category</label>
                                    <select class="custom-select col-xl-9 col-lg-8 col-md-8 col-sm-7" runat="server" id="category">
                                        <option selected>Select one</option>
                                        <option value="1">Grociers</option>
                                        <option value="2">Clothes</option>
                                        <option value="3">Rent</option>
                                    </select>
                                </div>
                                <div class="input-group mb-3">
                                    <label for="expire_date" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">
                                        Date
                                    </label>
                                    <input id="expire_date" name="expire_date" type="text" runat="server" class="form-control validate col-xl-9 col-lg-8 col-md-8 col-sm-7"
                                        data-large-mode="true">
                                </div>
                                <div class="input-group mb-3">
                                    <label for="stock" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Units
                                    </label>
                                    <input id="stock" name="stock" type="text" runat="server" class="form-control validate col-xl-9 col-lg-8 col-md-7 col-sm-7">
                                </div>
                                <div class="input-group mb-3">
                                    <div class="ml-auto col-xl-8 col-lg-8 col-md-8 col-sm-7 pl-0">
                                        <button type="submit" runat="server" class="btn btn-primary">Add
                                        </button>
                                    </div>
                                </div>

                                 <ol class="tm-list-group tm-list-group-alternate-color tm-list-group-pad-big" style="background-color:black;!important;color:white;">
                        <li class="tm-list-group-item">
                           Bread, Albany, 1 unit, Grociers, 2050
                        </li>
                    </ol>
                                <div class="input-group mb-3">
                                    <div class="ml-auto col-xl-8 col-lg-8 col-md-8 col-sm-7 pl-0">
                                        <button type="submit" runat="server" class="btn btn-primary" onclick="btnDone_Click">Done
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>

</html> 