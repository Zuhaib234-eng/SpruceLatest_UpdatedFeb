<%@ Page Title="Fabrics" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fabrics.aspx.cs" Inherits="Spruce.Fabrics" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <!-- <div class="preLoader"></div> -->
        <div class="container">
            <section id="FabricAll">
                <div class="fabricAllHeader text-center pt-5 pb-3">
                    <h1><b>Fabrics</b></h1>
                </div>
                <div class="pfContainer">
                    <div class="row m-0">
                        <div class="col-md-3">
                            <div>
                                <asp:LinkButton runat="server" OnClick="Unnamed_Click" CssClass="btn btn-main">Clear Filter</asp:LinkButton>
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
                                <%--<ul style="list-style: none; padding-left: 20px;">
                                    <li><asp:LinkButton ID="BlueButton" OnClick="blackColor_Click" CssClass="btn" runat="server">Blue</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="NavyBlueButton" OnClick="NavyBlueButton_Click" CssClass="btn" runat="server">Navy Blue</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="WhiteButton" CssClass="btn" OnClick="WhiteColor_Click" runat="server">White</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="BlackButton" CssClass="btn" OnClick="blackColor_Click" runat="server">Black</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="GreyButton" CssClass="btn" OnClick="GreyButton_Click" runat="server">Grey</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="PinkButton" CssClass="btn" OnClick="PinkButton_Click" runat="server">Pink</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="MaroonButton" CssClass="btn" OnClick="MaroonButton_Click" runat="server">Maroon</asp:LinkButton></li>
                                    <li><asp:LinkButton ID="PurpleButton" CssClass="btn" OnClick="PurpleButton_Click" runat="server">Purple</asp:LinkButton></li>
                                </ul>--%>
                                <div class="categoriesSelection mt-2 p-3">
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="BlueColor1" AutoPostBack="true" GroupName="colorCateg" OnCheckedChanged="PrintsSelfPatterns_CheckedChanged" runat="server" />
                                        <label for="MainContent_BlueColor1">Blue</label>
                                    </div>
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="NavyBlue1" AutoPostBack="true" OnCheckedChanged="NavyBlueButton_Click" GroupName="colorCateg" runat="server" />
                                        <label for="MainContent_NavyBlue1">Navy Blue</label>
                                    </div>
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="WhiteColor1" AutoPostBack="true" OnCheckedChanged="WhiteColor_Click" GroupName="colorCateg" runat="server" />
                                        <label for="MainContent_WhiteColor1">White</label>
                                    </div>
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="BlackColor1" AutoPostBack="true" OnCheckedChanged="blackColor_Click" GroupName="colorCateg" runat="server" />
                                        <label for="MainContent_BlackColor1">Black</label>
                                    </div>
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="GreyColor1" AutoPostBack="true" OnCheckedChanged="GreyButton_Click" GroupName="colorCateg" runat="server" />
                                        <label for="MainContent_GreyColor1">Grey</label>
                                    </div>
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="PinkColor1" AutoPostBack="true" OnCheckedChanged="PinkButton_Click" GroupName="colorCateg" runat="server" />
                                        <label for="MainContent_PinkColor1">Pink</label>
                                    </div>
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="MaroonColor1" AutoPostBack="true" OnCheckedChanged="MaroonButton_Click" GroupName="colorCateg" runat="server" />
                                        <label for="MainContent_MaroonColor1">Maroon</label>
                                    </div>
                                    <div class="form-group mt-1">
                                        <asp:RadioButton ID="PurpleColor1" AutoPostBack="true" OnCheckedChanged="PurpleButton_Click" GroupName="colorCateg" runat="server" />
                                        <label for="MainContent_PurpleColor1">Purple</label>
                                    </div>
                                    
                                </div>
                                <%--<asp:ListView ID="ListView1" runat="server">This </asp:ListView>--%>
                                
                                
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="AllProducts">
                                <div class="row m-0">
                                    <!-- Product -->
                                    <asp:Repeater ID="FeaturedProductRepeater" OnItemCommand="FeaturedProductRepeater_ItemCommand" runat="server">
                                        <ItemTemplate>
                                            <!-- Product -->
                                            <div class="col-lg-3 col-md-4 col-6">

                                                <div class="allProductsInner">
                                                    <asp:LinkButton ID="FeaturedProducts" CommandName="GoToProduct" CommandArgument='<%#Eval("Id") %>' runat="server">
                                                        <div class="allProductsInnerContainer sale">
                                                            <img src='<%#Eval("ImagePath") %>' class="img-fluid" alt="">
                                                            
                                                        </div>
                                                        <div class="allProductsInenrContent pt-2 pb-2">
                                                            <h5><%#Eval("ProductName") %></h5>
                                                            <span class="priceSpan">
                                                                <del class="DelPrice mr-2">PKR <%#Eval("Price")%></del><div class="DcPrice">PKR <%#Eval("DPrice") %></div>
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
                </div>
            </section>
        </div>
    </main>
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
                        s
                            <img class="msgImg" width="75" alt="" />
                    </div>
                    <div class="messageBox text-center mt-4">
                        <h5></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <asp:HiddenField ID="CounterHiddenField" runat="server" />
    <asp:HiddenField ID="AddtoCartPopupMessage" runat="server" />
    <script>
        $(document).ready(function () {
            var Counter = $('#<%=CounterHiddenField.ClientID%>').val();
            $("#ShopingCounterLabel").text(Counter);
        });
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
            $('#<%=AddtoCartPopupMessage.ClientID%>').val(" ");
        });
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
 <script src="/Assets/js/bootstrap-slider.min.js"></script>    
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
