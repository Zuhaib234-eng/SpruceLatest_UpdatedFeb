<%@ Page Title="Fabrics" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FabricSingle.aspx.cs" Inherits="Spruce.FabricSingle" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .zoom {
			display:inline-block;
			position: relative;
		}
		
		/* magnifying glass icon */
		.zoom:after {
			content:'';
			display:block; 
			width:33px; 
			height:33px; 
			position:absolute; 
			top:0;
			right:0;
			background:url(icon.png);
		}

		.zoom img {
			display: block;
		}
    </style>
    <main>
        <link href="/Assets/css/image-zoom.css" rel="stylesheet" />
        <div class="container mt-5">
            <div class="row m-0 mb-5 pb-5">
                <div class="col-lg-4 col-md-6">
                    <div class="innerBigImg">
                        <!-- Vertical Img -->
                        <div class="imgContainer">
                            <span id="zoomImage" class="zoom">
                            <asp:Image ID="ProductSingleMainImage" CssClass="img-fluid pViewImg" runat="server" />
                            </span>
                                <%--<div class="pr-img-slider owl-carousel owl-theme mt-4">
                                <asp:Repeater ID="ImageGalleryRepeater" runat="server">
                                    <ItemTemplate>
                                        <div class="item img-sliderItem change">
                                            <asp:Image ImageUrl='<%#Eval("Image")%>' ID="ProductSingleGallery" CssClass="img-fluid" runat="server" />
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>--%>
                        </div>
                    </div>
                </div>

                <div class="col-lg-8 col-md-6">
                    <div class="page_links">
                    </div>
                    <div class="PrHeading">
                        <h3 class="m-0"><b>
                            <asp:Label ID="NameLabel" runat="server" Text="Label"></asp:Label></b></h3>
                    </div>
                    <div class="small">
                        <asp:Label ID="CategoryLabel" runat="server" Text="Label"></asp:Label>
                    </div>

                    <div class="smallHeading mt-3">
                        <p class="m-0"><strong>Description</strong></p>
                    </div>
                    <div class="small">
                        <asp:Label ID="DescriptionLabel" runat="server" Text="Label"></asp:Label>
                    </div>
                    <div class="smallHeading mt-3">
                        <p class="m-0"><strong>Price</strong></p>
                    </div>
                    <div class="PrPrice">
                        <p>
                            PKR
                            <asp:Label ID="PriceLabel" runat="server" Text="Label"></asp:Label>
                        </p>
                    </div>
                    <%--<div class="quantityCalc">
                        <div class="row m-0 align-items-center">
                            <p class="m-0 mr-2 bold">Quantity :</p>
                            <a href="javascript:void(0)" id="SubtractQuantity" class="quantityIcon">
                                <i class="fa fa-minus"></i>
                            </a>
                            <div class="quantityForm">
                                <asp:TextBox runat="server" Text="1" ID="qunatity"></asp:TextBox>
                            </div>
                            <a href="javascript:void(0)" id="AddQuantity" class="quantityIcon">
                                <i class="fa fa-plus"></i>
                            </a>
                        </div>
                    </div>--%>
                    <div class="btnContainer mt-4">
                        <asp:LinkButton runat="server" OnClick="RedirectToCustomDesigner_Click" ID="RedirectToCustomDesigner" CssClass="btn btn-main">Design a Shirt</asp:LinkButton>
                    </div>
                    <%--<div class="mt-2">
                        <h3>Rate this product</h3>
                        <div id="full-stars-example-two">
                            <div class="rating-group">
                                <input disabled checked class="rating__input rating__input--none" name="rating3" id="rating3-none" value="0" type="radio">
                                <label aria-label="1 star" class="rating__label" for="rating3-1"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                <input class="rating__input" name="rating3" id="rating3-1" value="1" type="radio">
                                <label aria-label="2 stars" class="rating__label" for="rating3-2"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                <input class="rating__input" name="rating3" id="rating3-2" value="2" type="radio">
                                <label aria-label="3 stars" class="rating__label" for="rating3-3"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                <input class="rating__input" name="rating3" id="rating3-3" value="3" type="radio">
                                <label aria-label="4 stars" class="rating__label" for="rating3-4"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                <input class="rating__input" name="rating3" id="rating3-4" value="4" type="radio">
                                <label aria-label="5 stars" class="rating__label" for="rating3-5"><i class="rating__icon rating__icon--star fa fa-star"></i></label>
                                <input class="rating__input" name="rating3" id="rating3-5" value="5" type="radio">
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:TextBox runat="server" placeholder="Enter Email" CssClass="form-control" ID="EmailTextBox"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox runat="server" placeholder="Enter Your Review" ID="ReviewTextbox" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="SendReviewButton" CssClass="btn btn-default" OnClick="SendReviewButton_Click" runat="server" Text="Send Review" />
                        </div>
                    </div>--%>
                </div>
            </div>
            <div class="centerText pb-5">
                <span>See More Products</span>
            </div>
            <section id="SeeMoreProducts">
                <div class="container">
                    <div class="AllProducts">
                        <div class="row m-0">
                            <!-- Product -->
                            <asp:Repeater ID="RelatedProductsRepeater" OnItemCommand="RelatedProductsRepeater_ItemCommand" runat="server">
                                <ItemTemplate>
                                    <div class="col-lg-2 col-md-3 col-sm-4 col-6">
                                        <div class="allProductsInner">
                                            <asp:LinkButton runat="server" CommandName="GoToProduct" CommandArgument='<%#Eval("Id") %>' ID="RedirectToSingleView" href="#">
                                                <div class="allProductsInnerContainer">
                                                    <asp:Image ImageUrl='<%#Eval("Image") %>' CssClass="img-fluid" ID="RandomImage" runat="server" />
                                                    <div class="shoppingcartButton animate__animated animate__fadeIn">
                                                        <asp:LinkButton runat="server" ID="AddtoCartBtn" CommandName="AddToCart" CommandArgument='<%#Eval("Id") %>' href="#" CssClass="btn btn-main">
                                                            <i class="fa fa-shopping-cart"></i>
                                                        </asp:LinkButton>
                                                    </div>
                                                </div>
                                                <div class="allProductsInenrContent pt-2 pb-2">
                                                    <h5><%#Eval("ProductName")%> </h5>
                                                    <span class="priceSpan">
                                                        <del class="DelPrice mr-2">PKR
                                                            <%#Eval("DPrice") %>
                                                        </del>
                                                        PKR
                                                       <%# Eval("Price") %> 
                                                    </span>
                                                </div>
                                            </asp:LinkButton>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>

                            <!-- Product -->
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </main>
    <asp:HiddenField ID="ReviewHiddenField" runat="server" />
    

    <script>
        $(document).ready(() => {
            var value = $('#<%=ReviewHiddenField.ClientID%>').val();
            var message = document.querySelector('.messageBox h5');
            var messageImg = document.querySelector('.msgImg');
            var succesIcon = 'Assets/Images/succesIcon.jpg';
            if (value == "success") {
                message.innerHTML = 'Thankyou for your valuable review';
                messageImg.setAttribute('src', succesIcon);
                $('#notificationModal').modal('show');
            }
            else if (value == "fail") {
                message.innerHTML = 'please enter email and review';
                messageImg.setAttribute('src', succesIcon);
                $('#notificationModal').modal('show');
            }
            else if (value == "Not Login") {
                message.innerHTML = 'Please Sign In for customization';
                messageImg.setAttribute('src', succesIcon);
                $('#notificationModal').modal('show');
            }
            $('#<%=ReviewHiddenField.ClientID%>').val(" ");
        });
    </script>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
    <script src="/Assets/js/image-zoom.js">
       
    </script>
    <script>
        $(document).ready(function () {
            if ($(window).width() >= 992) {
                $("#zoomImage img").imageZoom();
            }
        })

    </script>
    <script>
        $(".change").click(function () {
            $("#zoomImage img").imageZoom();
        });
    </script>
</asp:Content>
