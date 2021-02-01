<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Upload.aspx.cs" Inherits="Spruce.Admin.Upload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin - Spruce</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css" />
    <link rel="stylesheet" href="Assets/css/datepicker-bs4.css" />
    <link rel="stylesheet" href="Assets/css/owl.carousel.css" />
    <link rel="stylesheet" href="Assets/css/style.css" />
    <link rel="stylesheet" href="Assets/css/side-bar.css" />
</head>
<body>
    <form id="form1" runat="server" class="needs-validation" novalidate>
        <asp:ScriptManager ID="ScriptManager1" EnablePageMethods="true" runat="server"></asp:ScriptManager>
        <div class="wrapper d-flex align-items-stretch">
            <nav id="sidebar">
                <div class="custom-menu">
                    <button type="button" id="sidebarCollapse" class="btn btn-primary">
                        <i class="fa fa-bars"></i>
                        <span class="sr-only">Toggle Menu</span>
                    </button>
                </div>
                <div class="p-4">
                    <h1><a href="admin.aspx" class="logo">Spruce <span>Custom Design Shirt</span></a></h1>
                    <ul class="list-unstyled components mb-5">
                        <li>
                            <a href="Admin.aspx"><span class="fa fa-home mr-3"></span>Home</a>
                        </li>
                        <li>
                            <a href="AllProducts.aspx"><span class="fa fa-shopping-cart mr-3"></span>All Products</a>
                        </li>
                        <li class="">
                            <a href="CustomShirtOrders.aspx"><span class="fa fa-shopping-cart mr-3"></span>Custom Shirt Orders<span class="Counts"></span></a>
                        </li>
                        <li>
                            <a href="Orders.aspx" class="newOrders"><span class="fa fa-shopping-cart mr-3"></span>Product Orders <span class="Count"></span></a>
                        </li>
                        <li class="active">
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
            <div id="content" class="p-4 p-md-5 pt-5">
                <div class="container">
                    <div class="heading">
                        <h1><b>Upload Product</b></h1>
                    </div>
                    <div class="row m-0">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="">Product Name</label>
                                <asp:TextBox ID="NameTextbox" required CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="">Discounted Price</label>
                                <asp:TextBox ID="DiscountedPriceTextBox" Text="0" TextMode="Number" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="">Original Price</label>
                                <asp:TextBox ID="PriceTextbox" TextMode="Number" required CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="">Product Quantity</label>
                                <asp:TextBox ID="QuantityTextbox" TextMode="Number" required CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="">Select Type</label>
                                <asp:DropDownList ID="TypeDropdownList" required CssClass="form-control" runat="server">
                                    <asp:ListItem Value="Select" Selected="True">Select</asp:ListItem>
                                    <asp:ListItem Value="Fabric">Fabric</asp:ListItem>
                                    <asp:ListItem Value="Product">Product</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="">Select Category</label>
                                <asp:DropDownList ID="CategoryList" Enabled="false" CssClass="form-control" runat="server">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="">Upload Main Image</label>
                                <div class="input-group">
                                    <div class="custom-file">
                                        <asp:FileUpload required ID="FrontImageFileUpload" accept="image/*" CssClass="custom-file-input form-control" runat="server" />
                                        <label class="custom-file-label" for="UploadProductMainImage">Choose file</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 galleryUpload" >
                            <div class="form-group">
                                <label for="">Upload Gallery Images</label>
                                <div class="MultipleFileUpload">
                                    <div class="file-upload">
                                        <asp:FileUpload required ID="ImagesFileUpload" accept="image/*" CssClass="file-upload__input" AllowMultiple="true" runat="server" />
                                        <button class="file-upload__button" type="button">Choose File(s)</button>
                                        <span class="file-upload__label"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="colors">
                                <h4>Select Color</h4>
                                <div class="row m-0">
                                    <%--<div class="col-lg-2 col-md-4 col-2 p-0">
                                        <label for="blackColor">
                                            <asp:RadioButton
                                                runat="server"
                                                GroupName="colorSelect"
                                                ID="blackColor" />
                                            <div class="colorWidth">
                                                <div class="blackColor a"></div>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <label for="yellow">
                                            <asp:RadioButton runat="server" GroupName="colorSelect" ID="yellow" />
                                            <div class="colorWidth">
                                                <div class="yellow a"></div>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <label for="red">
                                            <asp:RadioButton runat="server" GroupName="colorSelect" ID="red" />
                                            <div class="colorWidth">
                                                <div class="red a"></div>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <label for="BlueColor">
                                            <asp:RadioButton runat="server" GroupName="colorSelect" ID="BlueColor" />
                                            <div class="colorWidth">
                                                <div class="BlueColor a"></div>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <label for="violet">
                                            <asp:RadioButton runat="server" GroupName="colorSelect" ID="violet" />
                                            <div class="colorWidth">
                                                <div class="violet a"></div>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <label for="Orange">
                                            <asp:RadioButton runat="server" GroupName="colorSelect" ID="Orange" />
                                            <div class="colorWidth">
                                                <div class="Orange a"></div>
                                            </div>
                                        </label>
                                    </div>
                                    <!--  -->
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <label for="Light_Blue">
                                            <asp:RadioButton runat="server" GroupName="colorSelect" ID="Light_Blue" />
                                            <div class="colorWidth">
                                                <div class="Light_blue a"></div>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <label for="Green">
                                            <asp:RadioButton runat="server" GroupName="colorSelect" ID="Green" />
                                            <div class="colorWidth">
                                                <div class="Green a"></div>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <label for="Dark_Green">
                                            <asp:RadioButton GroupName="colorSelect" ID="Dark_Green" runat="server" />
                                            <div class="colorWidth">
                                                <div class="Dark_Green a"></div>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <label for="white">
                                            <asp:RadioButton GroupName="colorSelect" ID="white" runat="server" />
                                            <div class="colorWidth">
                                                <div class="white a"></div>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <label for="Yelow_Orng">
                                            <asp:RadioButton GroupName="colorSelect" ID="Yelow_Orng" runat="server" />
                                            <div class="colorWidth">
                                                <div class="Yellow_Orange a"></div>
                                            </div>
                                        </label>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <label for="Blue_violet">
                                            <asp:RadioButton GroupName="colorSelect" ID="Blue_violet" runat="server" />
                                            <div class="colorWidth">
                                                <div class="Blue_violet a"></div>
                                            </div>
                                        </label>
                                    </div>--%>
                                    <asp:DropDownList runat="server" ID="ColorDropDownList" CssClass="form-control">
                                            <asp:ListItem Text="Select Color" />
                                            <asp:ListItem CssClass="Blue" runat="server">Blue</asp:ListItem>
                                            <asp:ListItem Value="NavyBlue" CssClass="btn" runat="server">Navy Blue</asp:ListItem>
                                            <asp:ListItem Value="White" CssClass="btn" runat="server">White</asp:ListItem>
                                            <asp:ListItem Value="Black" CssClass="btn" runat="server">Black</asp:ListItem>
                                            <asp:ListItem Value="Grey" CssClass="btn" runat="server">Grey</asp:ListItem>
                                            <asp:ListItem Value="Pink" CssClass="btn" runat="server">Pink</asp:ListItem>
                                            <asp:ListItem Value="Maroon" CssClass="btn" runat="server">Maroon</asp:ListItem>
                                            <asp:ListItem Value="Purple" CssClass="btn" runat="server">Purple</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="">Check if product is featured</label>
                                <div class="custom-control custom-checkbox mb-3">
                                    <asp:CheckBox ID="FeaturedCheckBox" CssClass="" runat="server" />
                                    <label for="FeaturedCheckBox">Featured</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="">Description</label>
                                <asp:TextBox ID="DescriptionTextbox" required CssClass="form-control" TextMode="MultiLine" Rows="5" runat="server"></asp:TextBox>
                            </div>
                        </div>

                    </div>
                    <div class="btnContainer text-right">
                        <asp:Button ID="ProceedButton" OnClick="ProceedButton_Click" CssClass="btn btn-primary btn-block" runat="server" Text="Upload" />
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div
            class="modal fade"
            id="notificationModal"
            tabindex="-1"
            aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="text-center">
                            <img class="msgImg" width="75" alt="" />
                        </div>
                        <div class="messageBox text-center mt-4">
                            <h5></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <asp:HiddenField ID="CategoryHiddenField" runat="server" />
        <asp:HiddenField ID="ColorSelectHiddenField" runat="server" />
        <asp:HiddenField ID="ProductNotificationHiddenField" runat="server" />
        <asp:HiddenField ID="NewOrderHiddenField" runat="server" />
        <asp:HiddenField ID="CustomOrderHiddenField" runat="server" />
    </form>
    <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="Assets/js/owl.carousel.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/maphilight/1.4.0/jquery.maphilight.min.js"></script>
    <script src="Assets/js/datepicker-full.js"></script>
    <script src="Assets/js/script.js"></script>
    <script>
        $(document).ready(function () {
            var getNewOrders = parseInt($('#<%=NewOrderHiddenField.ClientID%>').val());
            console.log(getNewOrders);
            if (getNewOrders > 0) {
                var getValue = $(".Count").text();
                console.log(getValue);
                var newVal = getValue.concat("(" + getNewOrders + ")");
                $(".Count").text(newVal);
            }

            var getCustomNewOrders = parseInt($('#<%=CustomOrderHiddenField.ClientID%>').val());
            console.log(getNewOrders);
            if (getCustomNewOrders > 0) {
                var getValue = $(".Counts").text();
                console.log(getValue);
                var newVal = getValue.concat("(" + getCustomNewOrders + ")");
                $(".Counts").text(newVal);
            }
        });
    </script>
    <script>
        var success = $('#<%=ProductNotificationHiddenField.ClientID%>').val();
        if (success == "Success") {
            var message = document.querySelector('.messageBox h5');
            var messageImg = document.querySelector('.msgImg');
            var succesIcon = 'Images/succesIcon.jpg';
            var dangerIcon = 'Images/dangerIcon.png';
            message.innerHTML = 'Product Uploaded';
            messageImg.setAttribute('src', succesIcon);
            $('#notificationModal').modal('show');
            $('#<%=ProductNotificationHiddenField.ClientID%>').val(" ");
        }
        else if (success == "Image format is not valid") {
            var message = document.querySelector('.messageBox h5');
            var messageImg = document.querySelector('.msgImg');
            var succesIcon = 'Images/successIcon.jpg';
            var dangerIcon = 'Images/dangerIcon.png';
            message.innerHTML = 'Image format is not valid';
            messageImg.setAttribute('src', dangerIcon);
            $('#notificationModal').modal('show');
            $('#<%=ProductNotificationHiddenField.ClientID%>').val(" ");
        }
        else {
            //Error Message Popup    
        }


    </script>
    <script>
        $(document).ready(function () {
            $(".a").click(function () {
                var getclass = $(this).attr('class');
                var spl = getclass.split(' ');
                $('#<%=ColorSelectHiddenField.ClientID%>').val(spl[0]);
            });

        });
    </script>
    <script>
        $(document).ready(function () {
            $("#ProceedButton").click(function () {
                var dval = $("#CategoryList").val();
                console.log(dval);
                $('#<%=CategoryHiddenField.ClientID%>').val(dval);
            });

        });
        $('#TypeDropdownList').on('change', function () {
            $("#CategoryList").removeAttr("disabled");
            $('#CategoryList').html('');
            if ($('#TypeDropdownList').val() == "Fabric") {
                
                $('.galleryUpload input').removeAttr('required')
                $('.galleryUpload').hide()

                $('#CategoryList').append('<option Value="Checks & Ginhams">Checks & Ginhams</option>');
                $('#CategoryList').append('<option value="Prints & Self Patterns">Prints & Self Patterns</option>');
                $('#CategoryList').append('<option value="Solids">Solids</option>');
                $("#CategoryList").append('<option Value="Stripes">Stripes</option>')
            } else if ($('#TypeDropdownList').val() == "Product") {
                $('.galleryUpload input').attr('required', 'required')
                $('.galleryUpload').show()
                $('#CategoryList').append('<option Value="Checks & Ginhams">Checks & Ginhams</option>');
                $('#CategoryList').append('<option value="Prints & Self Patterns">Prints & Self Patterns</option>');
                $('#CategoryList').append('<option value="Solids">Solids</option>');
                $("#CategoryList").append('<option Value="Stripes">Stripes</option>')
            } else {
                $("#CategoryList").attr("disabled", "disabled");
            }
        });
    </script>
    <script>
        Array.prototype.forEach.call(document.querySelectorAll(".file-upload__button"), function (button) {
            const hiddenInput = button.parentElement.querySelector(".file-upload__input");
            const label = button.parentElement.querySelector(".file-upload__label");
            const defaultLabelText = "No file(s) selected";

            // set deafault text for label
            label.textContent = defaultLabelText;
            label.title = defaultLabelText;

            button.addEventListener('click', function () {
                hiddenInput.click();
            });

            hiddenInput.addEventListener('change', function () {

                const filenameList = Array.prototype.map.call(hiddenInput.files, function (file) {
                    return file.name;
                })
                label.textContent = filenameList.join(',') || defaultLabelText;
                label.title = label.textContent;
            });

        });
    </script>
</body>
</html>
