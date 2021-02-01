<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Spruce.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <style>
        .PngSizing {
            max-width: 80% !important;
        }

        .innerHowItWorks {
            text-align: center;
        }

        .allProductsInnerContainer {
            height: 280px !important;
        }
    </style>


    <!-- Modal -->
    <div class="preLoader">
        <div class="m-middle">
            <div class="LoaderLogo">
                <img src="/Assets/Images/MyLoader.png" class="img-fluid" alt="">
            </div>
            <div class="LoaderGif">
                <img src="/Assets/Images/Loader.gif" class="img-fluid" alt="">
            </div>
        </div>
    </div>

    <main>


        <section id="mainBanner">
            <div class="MainBannerSlider owl-carousel owl-theme">
                <div class="item">
                    <div class="MainBannerContent" style="background: url(/Assets/Images/Banner.png);">
                        <div class="container">
                            <h1><b>Your Style Statement</b></h1>
                            <a href="Fabrics.aspx" target="_blank" class="btn btn-main">Customize Your Shirt</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="MainBannerContent" style="background: url(/Assets/Images/slide2.jpg);">
                        <div class="container">
                            <h1><b>Your Style Statement</b></h1>
                            <a href="Fabrics.aspx" target="_blank" class="btn btn-main">Customize Your Style</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="MainBannerContent" style="background: url(/Assets/Images/slide3.jpg);">
                        <div class="container">
                            <h1><b>Your Style Statement</b></h1>
                            <a href="Fabrics.aspx" target="_blank" class="btn btn-main">Customize Your Style</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="MainBannerContent" style="background: url(/Assets/Images/slide4.jpg);">
                        <div class="container">
                            <h1><b>Your Style Statement</b></h1>
                            <a href="Fabrics.aspx" target="_blank" class="btn btn-main">Customize Your Style</a>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="MainBannerContent" style="background: url(/Assets/Images/slide5.jpg);">
                        <div class="container">
                            <h1><b>Your Style Statement</b></h1>
                            <a href="Fabrics.aspx" target="_blank" class="btn btn-main">Customize Your Style</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="mainServiceSection">
            <div class="container">
                <div class="row m-0">
                    <div class="col-md-4">
                        <div class="inner_main_service_Section text-center">
                            <img src="/Assets/Images/shirttt.png" width="50" class="img-fluid" alt="">
                            <h6><strong>CUSTOMIZED SHIRTS</strong></h6>
                        </div>
                    </div>
                    <span class="bdCent"></span>
                    <div class="col-md-4">
                        <div class="inner_main_service_Section text-center">
                            <img src="/Assets/Images/fabT.png" width="50" class="img-fluid" alt="">
                            <h6><strong>PREMIUM QUALITY FABRICS</strong></h6>

                        </div>
                    </div>
                    <span class="bdCent"></span>
                    <div class="col-md-4 lastCOl">
                        <div class="inner_main_service_Section text-center">
                            <img src="/Assets/Images/machinr.png" width="50" class="img-fluid" alt="">
                            <h6><strong>AFTER WASH GUARANTEE</strong></h6>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="mainGridBanner">
            <div class="container">
                <div class="mainGridBannerInner">
                    <div class="FeaturedProductsHead pb-4 text-center">
                        <h1><b>Featured Products</b></h1>
                    </div>
                    <div class="row m-0">

                        <div class="col-md-12">
                            <div class="mainGridBannerProducts">
                                <div class="mainGridBannerProductsSlider owl-carousel owl-theme">
                                    <asp:Repeater ID="FeaturedProductRepeater" OnItemCommand="FeaturedProductRepeater_ItemCommand" runat="server">
                                        <ItemTemplate>
                                            <!-- Item -->
                                            <div class="item">
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
                                                                <del class="DelPrice mr-2">PKR <%#Eval("Price") %> </del>
                                                                <div class="DcPrice">PKR <%#Eval("DPrice") %></div>
                                                            </span>
                                                        </div>
                                                    </asp:LinkButton>
                                                </div>
                                            </div>
                                            <!-- Item -->
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="FeaturedProducts">
            <div class="container">
                <div class="FeaturedProductsInner">
                    <div class="FeaturedProductsHead pb-4 text-center">
                        <h1><b>Recommended Products</b></h1>
                    </div>
                    <div class="AllProducts">
                        <div class="row m-0">
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
                                                        <del class="DelPrice mr-2">PKR <%#Eval("Price")%></del><div class="DcPrice">PKR <%#Eval("DiscountedPrice") %></div>
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
        </section>
        <%--       <section id="MainAbout">
            <div class="container">
                <div class="MainAboutInner">
                    <div class="row m-0">
                        <div class="col-md-8">
                            <div class="mainAboutContentInner">
                                <h2>About Spruce</h2>
                                <p>
                                    As they say “Style is a way to say who you are without having to speak” at Spruce we
                                    aim to help you express yourself and your style without having to speak for it.
                                    Whether you are seeking an elegant dress shirt for a formal occasion, or simply
                                    relaxing with friends and family in style, you can trust us to deliver superior
                                    bespoke shirts, with perfect details right from quality fabric to top-notch
                                    stitching and designing to suit your style statement. At Spruce, we strive our best
                                    to meet the dressing needs of our customers with top-class customer service.
                                </p>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="mainAboutImgInner">
                                <img src="/Assets/Images/islogan.jpg" alt="" class="img-fluid">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section> --%>
        <hr />
        <section id="howItWorks">
            <div class="container">
                <div class="text-center mb-3 mt-3">
                    <h2><strong>Design Your Customized Shirts</strong></h2>
                </div>
                <div class="row m-0 align-items-center">
                    <div class="col-md-2">
                        <div class="innerHowItWorks">
                            <img src="Assets/Images/fabricIcon.png" alt="" class="img-fluid PngSizing">
                            <h5 class="text-center"><strong>CHOOSE FABRIC</strong></h5>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="innerHowItWorks">
                            <img src="Assets/Images/shirtIcon.png" alt="" class="img-fluid PngSizing">
                            <h5 class="text-center"><strong>SELECT STYLE</strong></h5>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="innerHowItWorks">
                            <img src="Assets/Images/Desk.png" alt="" class="img-fluid PngSizing">
                            <h5 class="text-center"><strong>CHECK YOUR SHIRT VISUALLY</strong></h5>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="innerHowItWorks">
                            <img src="Assets/Images/sizeTape.png" alt="" class="img-fluid PngSizing">
                            <h5 class="text-center"><strong>SELECT MEASUREMENT</strong></h5>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="innerHowItWorks">
                            <img src="Assets/Images/confirm.png" alt="" class="img-fluid PngSizing">
                            <h5 class="text-center"><strong>CONFIRM ORDER</strong></h5>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="innerHowItWorks">
                            <img src="Assets/Images/DeliveryIcon.png" alt="" class="img-fluid PngSizing">
                            <h5 class="text-center"><strong>SHIRT AT YOUR DOORSTEP</strong></h5>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <hr>
        <section id="NewsLetter">
            <div class="container">
                <div class="text-center">
                    <div class="row m-0 justify-content-center">
                        <div class="col-md-7">
                            <div class="NewsLetterContent text-center">
                                <div class="NewsLetterContentHead">
                                    <h4>Sign Up For News Letter For Our Best Deals</h4>
                                </div>
                                <div class="emailBarNewsLetter pt-4">
                                    <div class="row m-0">
                                        <div class="col-10 p-0">
                                            <asp:TextBox ID="EmailNewsLetterTextBox" TextMode="Email" placeholder="Enter Email" CssClass="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <div class="col-2 p-0 pl-1">
                                            <asp:Button ID="NewsLetterSubscribe" OnClick="NewsLetterSubscribe_Click" runat="server" CssClass="btn btn-main btn-block" Text="Subscribe" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Modal -->
        <asp:HiddenField ID="CounterHiddenField" runat="server" />
        <asp:HiddenField ID="MessageHiddenField" runat="server" />
        <asp:HiddenField ID="SubscriptionHiddenField" runat="server" />
    </main>


    <script>
        $(document).ready(function () {
            var Counter = $('#<%=CounterHiddenField.ClientID%>').val();
            $("#ShopingCounterLabel").text(Counter);
        });
    </script>
</asp:Content>
<asp:Content runat="server" ID="Content2" ContentPlaceHolderID="ScriptsPlaceHolder">
    <asp:HiddenField ID="AddtoCartPopupMessage" runat="server" />
    <script>
        // Animate loader off screen

        document.onreadystatechange = function () {
            if (document.readyState !== "complete") {
                document.querySelector("body").style.overflowY = "hidden";
                document.querySelector(".preLoader").style.visibility = "visible";
                // alert("error")
            } else {
                document.querySelector(".preLoader").style.visibility = "hidden";
                document.querySelector("body").style.overflowY = "auto";
            }
        };
    </script>
    <script>
        $(document).ready(function () {
            var value = $('#<%=AddtoCartPopupMessage.ClientID%>').val();
            console.log(value);
            var message = document.querySelector('.messageBox h5');
            var messageImg = document.querySelector('.msgImg');
            var succesIcon = 'Assets/Images/succesIcon.jpg';
            var dangerIcon = 'Assets/Images/dangerIcon.png';
            if (value == "success") {
                message.innerHTML = 'Product added in cart';
                messageImg.setAttribute('src', succesIcon);
                $('#notificationModal').modal('show');
            } else if (value == "fail") {
                message.innerHTML = 'This product is already in cart';
                messageImg.setAttribute('src', dangerIcon);
                $('#notificationModal').modal('show');
            }
            $('#<%=AddtoCartPopupMessage.ClientID%>').val("");
        });
    </script>

    <script>
        $(document).ready(function () {
            var value = $('#<%=SubscriptionHiddenField.ClientID%>').val();
            console.log(value);
            var message = document.querySelector('.messageBox h5');
            var messageImg = document.querySelector('.msgImg');
            var succesIcon = 'Assets/Images/succesIcon.jpg';
            var dangerIcon = 'Assets/Images/dangerIcon.png';
            if (value == "success") {
                message.innerHTML = 'Thankyou for Subscribe us';
                messageImg.setAttribute('src', succesIcon);
                $('#notificationModal').modal('show');
            }
            $('#<%=SubscriptionHiddenField.ClientID%>').val("");
        });
    </script>

    <script>
        $(".DelPrice").each(function () {
            var getText = $(this).text();
        });
    </script>

    <script>
        $(".DcPrice").each(function () {
            var getText = $(this).text();

            if (getText == "PKR 0-/") {
                var getDeletedPrice = $(this).siblings(".DelPrice").text();
                $(this).text(getDeletedPrice);
                // $(this).text($(".DelPrice"));
                $(this).siblings(".DelPrice").hide();

            }
        });
    </script>
</asp:Content>
