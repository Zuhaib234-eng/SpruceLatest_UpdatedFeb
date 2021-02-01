<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerOrderDetail.aspx.cs" Inherits="Spruce.Admin.CustomerOrderDetail" %>

<!doctype html>
<html lang="en">

<head>
    <title>Admin | Home</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
    <link rel="stylesheet" href="Assets/css/style.css">
    <link rel="stylesheet" href="Assets/css/side-bar.css">
</head>
<style>
    #ButtonColor, #ThreadColorButton {
        border-radius: 50%;
        margin-left: 15px;
        font-size: 11px;
    }
</style>

<body>
    <form id="form1" runat="server">
        <div class="wrapper d-flex align-items-stretch">
            <nav id="sidebar">
                <div class="custom-menu">
                    <button type="button" id="sidebarCollapse" class="btn btn-primary">
                        <i class="fa fa-bars"></i>
                        <span class="sr-only">Toggle Menu</span>
                    </button>
                </div>
                <div class="p-4">
                    <h1><a href="admin.html" class="logo">Spruce <span>Custom Design Shirt</span></a></h1>
                    <ul class="list-unstyled components mb-5">
                        <li class="">
                            <a href="Admin.aspx"><span class="fa fa-home mr-3"></span>Home</a>
                        </li>
                        <li>
                            <a href="AllProducts.aspx"><span class="fa fa-shopping-cart mr-3"></span>All Products</a>
                        </li>
                        <li class="active">
                            <a href="CustomShirtOrders.aspx"><span class="fa fa-shopping-cart mr-3"></span>Custom Shirt Orders</a>
                        </li>
                        <li class="">
                            <a href="Orders.aspx"><span class="fa fa-shopping-cart mr-3"></span>Product Orders <span class="Count"></span></a>
                        </li>
                        <li>
                            <a href="Upload.aspx"><span class="fa fa-shopping-cart mr-3"></span>Upload Products Or Fabrics</a>
                        </li>
                        <li>
                            <a href="Users.aspx"><span class="fa fa-user mr-3"></span>Users</a>
                        </li>
                        <li>
                            <a href="NewsLetter.aspx"><span class="fa fa-user mr-3"></span>NewsLetter Subscriptions</a>
                        </li>
                        <li>
                            <a href="Feedbacks.aspx"><span class="fa fa-user mr-3"></span>Feed Back</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <!-- Page Content  -->
            <div id="content" class="p-4 p-md-5 pt-5">
                <div class="container-fluid">
                    <h1><strong>Custom Shirt Order Details</strong></h1>
                    <div class="adminPanelContent">
                        <div class="row m-0 mt-5">
                            <div class="col-md-12">
                                <div class="box">
                                    <h2>Order Details</h2>
                                    <p>Payment via cash on delivery</p>
                                    <div class="row m-0">
                                        <div class="col-lg-2">
                                            <h5>General</h5>
                                            <div class="form-group">
                                                <label for="">Date Created:</label>
                                                <p>
                                                    <asp:Label ID="CreatedDateLabel" runat="server"></asp:Label>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <h5>Custom Shirt Details</h5>
                                            <div class="row m-0 align-items-center justify-content-center">
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <label for="">Collar Image</label>
                                                        <br class="mt-2">
                                                        <asp:Image ID="CollarImage" CssClass="img-fluid mt-2" Width="75" runat="server" />
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <label for="">Cuff Image</label>
                                                        <br class="mt-1">
                                                        <asp:Image ID="CuffImage" CssClass="img-fluid mt-1" Width="75" runat="server" />
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row m-0">
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <label for="">Button</label>
                                                        <br class="mt-1">
                                                        <asp:Image ID="ButtonImage" Width='75' CssClass="img-fluid" runat="server" />
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <label for="">Pocket</label>
                                                        <br class="mt-1">
                                                        <asp:Image ID="PocketImage" Width='75' CssClass="img-fluid" runat="server" />
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row m-0">
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <label for="">Button Color</label>
                                                        <br class="mt-1">
                                                        <div class="gap">
                                                            <asp:Button ID="ButtonColor" Width="30px" Height="30px" runat="server" />
                                                            <br />
                                                            <asp:Label ID="ButtonColorLabel" runat="server" Text="Label"></asp:Label>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-6">
                                                    <div class="form-group">
                                                        <label for="">Thread Color</label>
                                                        <br class="mt-1">
                                                        <asp:Button ID="ThreadColorButton" Width="30px" Height="30px" runat="server" />
                                                        <br />
                                                        <asp:Label ID="ThreadColorLabel" runat="server" Text="Label"></asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-md-5">
                                            <h5></h5>
                                            <div class="main__img">
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <h5>Billing</h5>
                                            <div class="form-group">
                                                <label>Customer Name:</label>
                                                <p class="m-0">
                                                    <asp:Label ID="CustomerNameLabel" runat="server" Text="Label"></asp:Label>
                                                </p>
                                            </div>
                                            <div class="form-group">
                                                <label>Customer Email</label>
                                                <p class="m-0">
                                                    <a href="https://www.gmail.com/">
                                                        <asp:Label ID="CustomerEmailLabel" runat="server" Text="Label"></asp:Label></a>
                                                </p>
                                            </div>
                                            <div class="form-group">
                                                <label>Customer Phone No</label>
                                                <p class="m-0">
                                                    <a href="">
                                                        <asp:Label ID="CustomerPhoneNoLabel" runat="server" Text="Label"></asp:Label>
                                                    </a>
                                                </p>
                                            </div>
                                            <div class="form-group">
                                                <label>Customer Address</label>
                                                <p>
                                                    <asp:Label ID="CustomerAddressLabel" runat="server" Text="Label"></asp:Label>
                                                </p>
                                            </div>
                                            <div class="form-group">
                                                <label>Take screen shot</label>
                                                <p>
                                                    <asp:Button ID="ScreenshotButton" CssClass="btn btn-info" OnClick="ScreenshotButton_Click" runat="server" Text="View" />
                                                </p>
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                    <div class="table-responsive mt-3">
                                        <table class="table tRounded table-hover" id="mytbl">
                                            <thead>
                                                <tr>
                                                    <th>Collar Size</th>
                                                    <th>Shoulder</th>
                                                    <th>Chest</th>
                                                    <th>Waist</th>
                                                    <th>Sleeve Length</th>
                                                    <th>Shirt Length</th>
                                                </tr>
                                            </thead>
                                            <tbody class="mytbody">
                                                <tr>
                                                    <th>
                                                        <asp:Label ID="CollarSizeLabel" runat="server"></asp:Label>
                                                    </th>
                                                    <th>
                                                        <asp:Label ID="ShoulderLabel" runat="server"></asp:Label>
                                                    </th>
                                                    <th>
                                                        <asp:Label ID="ChestLabel" runat="server"></asp:Label>
                                                    </th>
                                                    <th>
                                                        <asp:Label ID="WaistLabel" runat="server"></asp:Label>
                                                    </th>
                                                    <th>
                                                        <asp:Label ID="SleeveLengthLabel" runat="server"></asp:Label>
                                                    </th>
                                                    <th>
                                                        <asp:Label ID="ShirtLengthLabel" runat="server"></asp:Label>
                                                    </th>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                        </div>
                                    </div>
                                    
                                    <div class="table-responsive">
                                        <table class="table table-hover">
                                            <thead>
                                                <tr>
                                                    <th>S.No</th>
                                                    <th>Fabric Image</th>
                                                    <th>Fabric Name</th>
                                                    <th>Cost</th>
                                                    <th>Total</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>
                                                        <asp:Image ID="FabricImage" CssClass="img-fluid tbImage" Width="50" runat="server" />
                                                    </td>
                                                    <td>
                                                        <asp:LinkButton ID="GoToFabric" OnClick="GoToFabric_Click" runat="server">
                                                            <asp:Label ID="FabricNameLabel" runat="server"></asp:Label>
                                                        </asp:LinkButton>
                                                    </td>
                                                    <td>PKR
                                                        <asp:Label ID="PriceLabel" runat="server" Text="Label"></asp:Label>
                                                    </td>
                                                    <td>PKR
                                                        <asp:Label ID="TotalLabel" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <hr>
                                        <div class="row m-0" style="justify-content: flex-end;">
                                            <div class="text-right col-md-3">
                                                <div class="row m-0 justify-content-between">
                                                    <p>
                                                        Total Rs
                                                        <asp:Label ID="TotalsubLabel" runat="server" Text="Label"></asp:Label>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-6 mt-5">
                                <div class="box">
                                    <div class="form-group">
                                        <label for="">Status</label>
                                        <asp:DropDownList ID="statusChangeDropdownList" CssClass="form-control" runat="server">
                                            <asp:ListItem Selected="True" Text="Processing">Processing</asp:ListItem>
                                            <asp:ListItem Text="Completed">Completed</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Customer Profile</label>
                                        <div>
                                            <asp:LinkButton runat="server" ID="ViewProfileButton" OnClick="ViewProfileButton_Click"> View Profile</asp:LinkButton>
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <asp:Button Text="Update" ID="UpdateStatusBtn" OnClick="UpdateStatusBtn_Click" CssClass="btn btn-primary" runat="server" />
                                    </div>

                                </div>
                            </div>
                            <div class="col-md-6 mt-5">
                                <div class="box">
                                    <h4>Send Mail To Customer</h4>
                                    <div class="form-group">
                                        <label for="">Enter Subject</label>
                                        <asp:TextBox runat="server" ID="SubjectTextbox" placeholder="Enter Subject" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label for="">Enter Message</label>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="MessageTextbox" TextMode="MultiLine" Rows="6"></asp:TextBox>
                                    </div>
                                    <div class="form-group text-right">
                                        <asp:Button Text="Send" ID="SendEmailButton" OnClick="SendEmailButton_Click" CssClass="btn btn-primary" runat="server" />
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:HiddenField ID="NewOrderHiddenField" runat="server" />
        <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/maphilight/1.4.0/jquery.maphilight.min.js"></script>
        <script src="Assets/js/script.js"></script>
        <script>
            $(document).ready(function () {
                var getNewOrders = parseInt($('#<%=NewOrderHiddenField.ClientID%>').val());
                console.log(getNewOrders);
                if (getNewOrders > 0) {
                    var getValue = $(".newOrders").text();
                    console.log(getValue);
                    var newVal = getValue.concat("(" + getNewOrders + ")");
                    $(".newOrders").text(newVal);
                }

                //newOrders
            });
        </script>
    </form>
</body>
</html>

