<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="SSAWebForms.Transactions_Page" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SSA - Transactions</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/tooplate.css">
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>

    <script>
        function DeleteEntryOne() {
            var row = document.getElementById("row");
            row.remove();
        }
        function DeleteEntryTwo() {
            var row = document.getElementById("row1");
            row.remove();
        }
        function DeleteEntryThree() {
            var row = document.getElementById("row2");
            row.remove();
        }
        function DeleteEntryFour() {
            var row = document.getElementById("row3");
            row.remove();
        }
    </script>
	
</head>

<body id="reportsPage" class="bg02">
    <div class="" id="home">
            <!--Transactions-->
            <div class="row tm-content-row tm-mt-big">
                <div class="col-xl-8 col-lg-12 tm-md-12 tm-sm-12 tm-col">
                    <div class="bg-white tm-block h-100">
                        <div class="row">
                            <div class="col-md-8 col-sm-12">
                                <h2 class="tm-block-title d-inline-block" style="Color:black;">Transactions - Expenditure</h2>

                            </div>
                            <div class="col-md-4 col-sm-12 text-right">
                                <a href="Add Product.aspx" class="btn btn-small btn-primary" runat="server">Add New Transaction</a>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped tm-table-striped-even mt-3" style="background-color:limegreen;">
                                <thead>
                                    <tr class="tm-bg-gray" style="">
                                        <th scope="col">&nbsp;</th>
                                        <th scope="col">Transaction Name</th>
                                        <th scope="col" class="text-center">Required</th>
                                        <th scope="col" class="text-center">Spendable</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">&nbsp;</th>
                                        <th scope="col">&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr id="row">
                                        <th scope="row">
                                            <input type="checkbox" aria-label="Checkbox">
                                        </th>
                                        <td class="tm-product-name" id="row">Orange Juice 2x</td>
                                        <td class="text-center" id="row">Signature Approved</td>
                                        <td class="text-center" id="row">R75.00</td>
                                        <td id="row">2018-10-28</td>
                                        <td>Edit</td>
                                        <td><i class="fas fa-trash-alt tm-trash-icon" style="color:black;" runat="server" onclick="DeleteEntryOne()"></i></td>
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
                                    <ul class="pagination tm-pagination">
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
                        <h2 class="tm-block-title d-inline-block">Transactions - Spent</h2>
                        <table class="table table-hover table-striped mt-3" style="background-color:limegreen;color:white;">
                            <tbody>
                                <tr>
                                    <td id="row1">1.Orange Juice 2x</td>
                                    <td class="tm-trash-icon-cell">Edit</i></td>
                                    <td class="tm-trash-icon-cell"><i class="fas fa-trash-alt tm-trash-icon"style="color:white;" onclick="DeleteEntryTwo()"></i></td>
                                </tr>                         
                            </tbody>
                        </table>

                        <a href="#" class="btn btn-primary tm-table-mt">Add New Category</a>
                    </div>
                </div>
            </div>
            <div class="row tm-content-row tm-mt-big">
                <div class="col-xl-8 col-lg-12 tm-md-12 tm-sm-12 tm-col">
                    <div class="bg-white tm-block h-100">
                        <div class="row">
                            <div class="col-md-8 col-sm-12">
                                <h2 class="tm-block-title d-inline-block" style="Color:black;">Transactions - Credit</h2>

                            </div>
                            <div class="col-md-4 col-sm-12 text-right">
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped tm-table-striped-even mt-3" style="background-color:cadetblue;" >
                                <thead>
                                    <tr class="tm-bg-gray">
                                        <th scope="col">&nbsp;</th>
                                        <th scope="col">Name</th>
                                        <th scope="col" class="text-center">Amount</th>
                                        <th scope="col" class="text-center">Required</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr >
                                        <th scope="row">
                                            <input type="checkbox" aria-label="Checkbox" >
                                        </th>
                                        <td id="row2" class="tm-product-name">1. Garden</td>
                                        <td id="row2" class="text-center">R700.00</td>
                                        <td id="row2" class="text-center">Signature Approved</td>
                                        <td id="row2">2018-10-28</td>
                                        <td><i class="fas fa-trash-alt tm-trash-icon" style="color:black;" runat="server" onclick="DeleteEntryThree()"></i></td>
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
                                    <ul class="pagination tm-pagination">
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
                        <h2 class="tm-block-title d-inline-block">Transactions -Income</h2>
                        <table class="table table-hover table-striped mt-3" style="background-color:cadetblue;color:white;">
                            <tbody>
                                <tr>
                                    <td id="row3">2. Apple Watch</td>
                                    <td class="tm-trash-icon-cell">Edit</i></td>
                                    <td class="tm-trash-icon-cell"><i class="fas fa-trash-alt tm-trash-icon" style="color:white;" runat="server"  onclick="DeleteEntryFour()"></i></td>
                                </tr>                             
                            </tbody>
                        </table>

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
