<%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Spruce.Products" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <!--<div class="preLoader"><svg><circle cx="40" cy="40" r="40"></circle></svg></div> -->
        <div class="container">
            <section id="FabricAll">
                <div class="fabricAllHeader text-center pt-5 pb-3">
                    <h1><b>Products</b></h1>
                </div>
                <div class="pfContainer">
                    <div class="row m-0">
                        <div class="col-md-3">
                            <div class="mb-2">
                                <asp:LinkButton runat="server" OnClick="Unnamed_Click" CssClass="btn btn-main">Clear Filter</asp:LinkButton>
                            </div>
                            <div class="priceRange">
                                <h4>Select Your Price Range</h4>
                                <div class="w-100" style="text-align: -webkit-center;">
                                    <div class="slider-red">
                                        <input type="text" value="" class="slider inpSlider form-control"
                                            data-slider-min="1000" data-slider-max="5000" data-slider-step="5"
                                            data-slider-value="[1000, 5000]" data-slider-orientation="horizontal"
                                            data-slider-selection="before" data-slider-tooltip="show">
                                    </div>
                                </div>
                                <asp:Button ID="SearchPriceButton" OnClick="SearchPriceButton_Click" Width="100%" CssClass="btn btn-main btn-block" runat="server" Text="Search" />
                            </div>
                            <div class="fabricCategorys mt-4">
                                <h4>Select Category</h4>
                                <div class="categoriesSelection mt-2 p-3">
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="checkGinham" AutoPostBack="true" OnCheckedChanged="checkGinham_CheckedChanged" GroupName="fabCateg" runat="server" />
                                        <label for="MainContent_checkGinham">Checks & Ginghams</label>
                                    </div>
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="PrintsSelfPatterns" AutoPostBack="true" OnCheckedChanged="PrintsSelfPatterns_CheckedChanged" GroupName="fabCateg" runat="server" />
                                        <label for="MainContent_PrintsSelfPatterns">Prints & Self Patterns</label>
                                    </div>
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="Solids" AutoPostBack="true" OnCheckedChanged="Solids_CheckedChanged" GroupName="fabCateg" runat="server" />
                                        <label for="MainContent_Solids">Solids</label>
                                    </div>
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="Stripes" AutoPostBack="true" OnCheckedChanged="Stripes_CheckedChanged" GroupName="fabCateg" runat="server" />
                                        <label for="MainContent_Stripes">Stripes</label>
                                    </div>
                                </div>
                            </div>
                            <div class="colors">
                                <h4>Select Color</h4>
                                <!--<ul style="list-style: circle; padding-left: 20px;">
                                    <li>
                                        <asp:LinkButton runat="server" OnClick="BlueColor_Click" CssClass="btn">Blue</asp:LinkButton></li>
                                    <li>
                                        <asp:LinkButton runat="server" ID="NavyBlue" OnClick="NavyBlue_Click" CssClass="btn">Navy Blue</asp:LinkButton></li>
                                    <li>
                                        <asp:LinkButton runat="server" ID="WhiteColor" OnClick="WhiteColor_Click" CssClass="btn">White</asp:LinkButton></li>
                                    <li>
                                        <asp:LinkButton runat="server" ID="BlackColor" OnClick="BlackColor_Click1" CssClass="btn">Black</asp:LinkButton></li>
                                    <li>
                                        <asp:LinkButton runat="server" ID="GreyColor" OnClick="GreyColor_Click" CssClass="btn">Grey</asp:LinkButton></li>
                                    <li>
                                        <asp:LinkButton runat="server" ID="PinkColor" OnClick="PinkColor_Click" CssClass="btn">Pink</asp:LinkButton></li>
                                    <li>
                                        <asp:LinkButton runat="server" ID="MaroonColor" OnClick="MaroonColor_Click" CssClass="btn">Maroon</asp:LinkButton></li>
                                    <li>
                                        <asp:LinkButton runat="server" ID="PurpleColor" OnClick="PurpleColor_Click" CssClass="btn">Purple</asp:LinkButton></li>
                                </ul>-->
                                <div class="categoriesSelection mt-2 p-3">
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="BlueColor1" AutoPostBack="true" GroupName="colorCateg" OnCheckedChanged="BlueColor_Click" runat="server" />
                                        <label for="BlueColor_Click">Blue</label>
                                    </div>
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="NavyBlue1" AutoPostBack="true" OnCheckedChanged="NavyBlue_Click" GroupName="colorCateg" runat="server" />
                                        <label for="NavyBlue_Click">Navy Blue</label>
                                    </div>
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="WhiteColor1" AutoPostBack="true" OnCheckedChanged="WhiteColor_Click" GroupName="colorCateg" runat="server" />
                                        <label for="WhiteColor_Click">White</label>
                                    </div>
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="BlackColor1" AutoPostBack="true" OnCheckedChanged="blackColor_Click" GroupName="colorCateg" runat="server" />
                                        <label for="blackColor_Click">Black</label>
                                    </div>
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="GreyColor1" AutoPostBack="true" OnCheckedChanged="GreyColor_Click" GroupName="colorCateg" runat="server" />
                                        <label for="GreyColor_Click">Grey</label>
                                    </div>
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="PinkColor1" AutoPostBack="true" OnCheckedChanged="PinkColor_Click" GroupName="colorCateg" runat="server" />
                                        <label for="PinkColor_Click">Pink</label>
                                    </div>
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="MaroonColor1" AutoPostBack="true" OnCheckedChanged="MaroonColor_Click" GroupName="colorCateg" runat="server" />
                                        <label for="MaroonColor_Click">Maroon</label>
                                    </div>
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="PurpleColor1" AutoPostBack="true" OnCheckedChanged="PurpleColor_Click" GroupName="colorCateg" runat="server" />
                                        <label for="PurpleColor_Click">Purple</label>
                                    </div>
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="GreenColor1" AutoPostBack="true" OnCheckedChanged="GreenColor_Click" GroupName="colorCateg" runat="server" />
                                        <label for="GreenColor_Click">Green</label>
                                    </div>
                                </div>
                                <!--<div class="row m-0">
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <div class="colorWidth">
                                            </asp:LinkButton>
                                        </div>


                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <div class="colorWidth">
                                            <asp:LinkButton runat="server" ID="yellowColor" OnClick="yellowColor_Click" CssClass="yellow">

                                            </asp:LinkButton>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <div class="colorWidth">
                                            <asp:LinkButton ID="RedColorButton" CssClass="yellow" runat="server"></asp:LinkButton>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <div class="colorWidth">
                                            <asp:LinkButton OnClick="BlueColor_Click" runat="server" ID="BlueColor" CssClass="BlueColor">
                                            </asp:LinkButton>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <div class="colorWidth">
                                            <asp:LinkButton OnClick="VioletColor_Click" ID="VioletColor" runat="server" CssClass="violet">

                                            </asp:LinkButton>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <div class="colorWidth">
                                            <asp:LinkButton OnClick="OrangeColor_Click" runat="server" ID="OrangeColor" CssClass="Orange">

                                            </asp:LinkButton>
                                        </div>
                                    </div>
                                    
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <div class="colorWidth">
                                            <asp:LinkButton runat="server" ID="LightBlueColor" OnClick="LightBlueColor_Click" CssClass="Light_blue">

                                            </asp:LinkButton>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <div class="colorWidth">
                                            <asp:LinkButton runat="server" ID="GreenColor" OnClick="GreenColor_Click" CssClass="Green">

                                            </asp:LinkButton>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <div class="colorWidth">
                                            <asp:LinkButton runat="server" ID="DarkGreenColor" OnClick="DarkGreenColor_Click" CssClass="Dark_Green">

                                            </asp:LinkButton>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <div class="colorWidth">

                                            </asp:LinkButton>
                                        </div>
                                    </div>
                                    <div class="col-lg-2 col-md-4 col-2 p-0">
                                        <div class="colorWidth">
                                            <asp:LinkButton OnClick="Yellow_OrangeColor_Click" runat="server" ID="Yellow_OrangeColor" CssClass="Yellow_Orange">

                                            </asp:LinkButton>
                                        </div>
                                    </div>
                                </div> -->
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="AllProducts">
                                <div class="row m-0">
                                    <asp:Repeater ID="FeaturedProductRepeater" OnItemCommand="FeaturedProductsRepeater_ItemCommand" runat="server">
                                        <ItemTemplate>
                                            <!-- Product -->
                                            <div class="col-lg-3 col-md-4 col-6">

                                                <div class="allProductsInner">
                                                    <asp:LinkButton ID="FeaturedProducts" CommandName="GoToProduct" CommandArgument='<%#Eval("Id") %>' runat="server">
                                                        <div class="allProductsInnerContainer sale">
                                                            <img src='<%#Eval("ImagePath") %>' class="img-fluid" alt="">
                                                            <div class="shoppingcartButton animate__animated animate__fadeIn">
                                                                <asp:LinkButton runat="server" ID="AllProductAddToCart" CommandName="AddToCart" CommandArgument='<%#Eval("Id") %>' CssClass="btn btn-main">
                                                    <i class="fa fa-shopping-cart"></i>
                                                                </asp:LinkButton>
                                                            </div>
                                                        </div>
                                                        <div class="allProductsInenrContent pt-2 pb-2">
                                                            <h5><%#Eval("ProductName") %></h5>
                                                            <span class="priceSpan">
                                                                <del class="DelPrice mr-2">PKR <%#Eval("Price")%></del><div class="DcPrice">PKR <%#Eval("DPrice")%></div>
                                                            </span>
                                                        </div>
                                                    </asp:LinkButton>
                                                </div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>


                                    <asp:Repeater ID="NormalProductRepeater" OnItemCommand="NormalProductRepeater_ItemCommand" runat="server">
                                        <ItemTemplate>
                                            <!-- Product -->
                                            <div class="col-lg-3 col-md-4 col-6 animate__animated animate__fadeInDown">
                                                <div class="allProductsInner">
                                                    <asp:LinkButton ID="AllProductItem" CommandName="GoToProduct" CommandArgument='<%#Eval("Id") %>' runat="server">
                                                        <div class="allProductsInnerContainer">
                                                            <img src='<%#"Admin/" + Eval("MainImage") %>' class="img-fluid" alt="">
                                                            <div class="shoppingcartButton animate__animated animate__fadeIn">
                                                                <asp:LinkButton runat="server" ID="AllProductAddToCart" CommandName="AddToCart" CommandArgument='<%#Eval("Id") %>' CssClass="btn btn-main">
                                                    <i class="fa fa-shopping-cart"></i>
                                                                </asp:LinkButton>
                                                            </div>
                                                        </div>
                                                        <div class="allProductsInenrContent pt-2 pb-2">
                                                            <h5><%#Eval("Name") %></h5>
                                                            <span class="priceSpan">
                                                                <del class="DelPrice mr-2">PKR <%#Eval("Price") %>-/ </del><div class="DcPrice">PKR <%#Eval("DiscountedPrice") %></div>
                                                            </span>
                                                        </div>
                                                    </asp:LinkButton>
                                                </div>
                                            </div>
                                            <!-- Product -->

                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>


            </section>
        </div>
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


    </main>
    <asp:HiddenField ID="AddtoCartPopupMessage" runat="server" />
    <asp:HiddenField ID="CounterHiddenField" runat="server" />
    <asp:HiddenField ID="maxValueHiddenField" runat="server" />
    <asp:HiddenField ID="lowValueHiddenField" runat="server" />
    <script>
        $(document).ready(function () {
            var Counter = $('#<%=CounterHiddenField.ClientID%>').val();
            $("#ShopingCounterLabel").text(Counter);
        });
    </script>
    <script>
        $(document).ready(function () {
            var value = $('#<%=AddtoCartPopupMessage.ClientID%>').val();            
            if (value == "success") {
                var message = document.querySelector('.messageBox h5');
                var messageImg = document.querySelector('.msgImg');
                var succesIcon = 'Assets/Images/succesIcon.jpg';
                //var dangerIcon = 'Images/dangerIcon.png';
                message.innerHTML = 'Product added in cart';
                messageImg.setAttribute('src', succesIcon);
                $('#notificationModal').modal('show');
            } else if (value == "fail") {
                var message = document.querySelector('.messageBox h5');
                var messageImg = document.querySelector('.msgImg');
                var succesIcon = 'Images/successIcon.png';
                //var dangerIcon = 'Images/dangerIcon.png';
                message.innerHTML = 'This product is already in cart';
                messageImg.setAttribute('src', succesIcon);
                $('#notificationModal').modal('show');
            }

            $('#<%=AddtoCartPopupMessage.ClientID%>').val(" ");
        });
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
    <script src="/Assets/js/bootstrap-slider.min.js"></script>
    <script>
        $('#<%=maxValueHiddenField.ClientID%>').val("40000");
        $('#<%=lowValueHiddenField.ClientID%>').val("1000");
        var Min = "";
        var Max = "";
        $('.slider').bootstrapSlider({
            formatter: function (value) {
                if (typeof value[0] !== "undefined") {
                    $('#<%=lowValueHiddenField.ClientID%>').val(value[0]);
                }
                if (typeof value[1] !== "undefined") {
                    $('#<%=maxValueHiddenField.ClientID%>').val(value[1]);
                }
                return "PKR " + value[0] + " - " + "PKR " + value[1];
            }
        });

    </script>
    <script>
        $(".DelPrice").each(function () {
            var getText = $(this).text();
            if (getText == "PKR 0 ") {
                $(this).text("");
            }
        });
    </script>




    <script>
        $(".DcPrice").each(function () {
            var getText = $(this).text();
            console.log(getText);
            if (getText == "PKR 0") {                
                var getDeletedPrice = $(this).siblings(".DelPrice").text();
                $(this).text(getDeletedPrice);
                // $(this).text($(".DelPrice"));
                $(this).siblings(".DelPrice").hide();
            }
        });
    </script>
</asp:Content>
