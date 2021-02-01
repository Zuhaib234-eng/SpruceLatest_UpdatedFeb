<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Spruce.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div id="feedbackButton">
            <div class="feedbackButtonInner">
                <asp:LinkButton data-toggle="modal" data-target="#feedBackModal" runat="server">FEEDBACK</asp:LinkButton>
            </div>
        </div>
        <section id="ContactUs">
            <div class="container">

                <div class="mainContHead mb-4">
                    <h6>Got A Question ?</h6>
                    <h1>Contact Spruce</h1>
                </div>
                <div class="row m-0 align-items-center">
                    <div class="col-lg-5 mt-5 mt-lg-0">
                        <div class="imContInner">
                            <h3><strong>Contact Information</strong></h3>
                          <%--  <div class="mt-2">
                                <span><i class="fa fa-map-marker"></i></span>
                                <span class="ml-2">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Fugit exercitationem</span>
                            </div>--%>
                            <div class="mt-2">
                                <span><i class="fa fa-phone-alt"></i></span>
                                <span class="ml-2">0336 3989249</span>
                            </div>
                            <div class="mt-2">
                                <span><i class="fa fa-envelope"></i></span>
                                <span class="ml-2">Customercare@spruce.pk</span>
                            </div>
                            <div class="mt-4">
                                <h3><strong>Other ways to connect</strong></h3>
                                <div class="socialMediaLinks">
                                    <a href="https://www.facebook.com/spruce.pk/" class="fb"><i class="fa fa-facebook"></i></a>
                                    <a href="https://instagram.com/spruce.pk?igshid=1xl4yfguhmfa8"><i class="fa fa-instagram"></i></a>
                                    <a href="https://api.whatsapp.com/send?phone=923363989249&text=Hello"><i class="fa fa-whatsapp"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-7 cntform">
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="">Name</label>
                                <asp:TextBox runat="server" ID="NameTextBox" required placeholder="Enter Name" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="">Email</label>
                                <asp:TextBox TextMode="Email" ID="EmailTextBox" required placeholder="Enter Email" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="">Subject</label>
                                <asp:TextBox runat="server" ID="SubjectTextBox" required placeholder="Enter Subject" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-6">
                                <label for="">Phone No</label>
                                <asp:TextBox runat="server" ID="PhoneNoTextBox" required placeholder="Enter Phone no" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-12">
                                <label for="">Message</label>
                                <asp:TextBox runat="server" ID="MessageTextBox" required Rows="4" TextMode="MultiLine" placeholder="Enter Your Message" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-12">
                                <div>
                                    <asp:Button OnClick="SendButton_Click" CausesValidation="true" ID="SendButton" Text="Send Message" CssClass="btn btn-main" runat="server" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>
    </main>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
    <asp:HiddenField ID="PopupMessage" runat="server" />
    <script>
        $(document).ready(function () {
            var value = $('#<%=PopupMessage.ClientID%>').val();
            console.log(value);
            var message = document.querySelector('.messageBox h5');
            var messageImg = document.querySelector('.msgImg');
            var succesIcon = 'Assets/Images/succesIcon.jpg';
            var dangerIcon = 'Assets/Images/dangerIcon.png';
            if (value == "success") {
                message.innerHTML = 'Thankyou for contacting us';
                messageImg.setAttribute('src', succesIcon);
                $('#notificationModal').modal('show');
            }
            $('#<%=PopupMessage.ClientID%>').val("");
        });
    </script>

</asp:Content>
