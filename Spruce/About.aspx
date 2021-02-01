<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Spruce.About" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <main>
        <!--<div class="preLoader"><svg><circle cx="40" cy="40" r="40"></circle></svg></div> -->
        <section id="aboutUs">
            <div class="container">
                <div class="mainHeading">
                    <h1><b>About Us</b></h1>
                </div>
                <div class="abContent mt-4">
                    <p>As they say <strong> “Style is a way to express who you are without having to speak”.</strong> At
                        <strong>Spruce</strong> we aim to help
                        you express yourself and your style without having to speak for it. Whether you are seeking an
                        elegant dress shirt for a formal occasion, or simply relaxing with friends and family in style,
                        you can trust us to deliver superior bespoke shirts, with perfect details right from quality
                        fabric to top-notch stitching and designing to suit your style statement. At Spruce, we strive
                        our best to meet the dressing needs of our customers with top-class customer service. </p>
                    <a href="Products" class="btn btn-main">Explore Our Products</a>
                </div>
                <div class="aboutContentWithImg mt-4">
                    <div class="row m-0 align-items-center">
                        <div class="col-lg-4">
                            <img src="/Assets/Images/Ab.jpg" alt="Custom Design Shirt" class="img-fluid w-100">
                        </div>
                        <div class="col-lg-8">
                            <div class="abContent mt-4 mt-lg-0">
                                <p>Our custom designed shirts give you freedom to blend your creativity and style
                                    preference to make your own custom-designed shirt for your special occasions and
                                    gatherings. You can choose your preferences right from selection of fabric to
                                    detailing your shirt in terms of collar design, cuff-style, buttons and other design
                                    details to suit your style need.</p>
                            </div>
                        </div>
                    </div>
                    <div class="abContent mt-4">
                        <a href="Fabrics" class="btn btn-main">Design a Custom Shirt</a>
                    </div>
                </div>
                <div class="abContent">
                    <div class="howToOrder mt-4">
                        <h3><strong>How To Order</strong></h3>
                        <p>There are two ways to place an order.</p>
                        <ol>
                            <li>Shop from our exclusive online collection and receive your product within 7
                            business days.</li>

                            <li class="mt-2">Customise Online! Select your fabric, design and size on the website. The shirt will be
                            shipped to you within 10 days, since it take some time to get your shirt ready as per your desired details.</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
    </main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
    <script>
        //document.onreadystatechange = function () {
        //    if (document.readyState !== "complete") {
        //        document.querySelector("body").style.overflowY = "hidden";
        //        document.querySelector(".preLoader").style.visibility = "visible";
        //        // alert("error")
        //    } else {
        //        document.querySelector(".preLoader").style.visibility = "hidden";
        //        document.querySelector("body").style.overflowY = "auto";
        //    }
        //};
        
    </script>
</asp:Content>
