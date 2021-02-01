<%@ Page Title="Custom Designer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomDesigner.aspx.cs" Inherits="Spruce.CustomDesigner" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="modal fade" id="choose" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body">
                    <h5>Choose Size Selection Method</h5>
                    <div class="mt-4">
                        <asp:LinkButton ID="MadeToMeasureButton" OnClick="MadeToMeasureButton_Click" CssClass="btn btn-main btn-block" runat="server">Made To Measure</asp:LinkButton>
                    </div>
                    <div class="mt-4 text-center">
                        <b>OR</b>
                    </div>
                    <div class="mt-4">
                        <asp:LinkButton ID="StandardSizesButton" OnClick="StandardSizesButton_Click" CssClass="btn btn-main btn-block" runat="server">Standard Sizes</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade startModal" id="exampleModal" data-backdrop="static" tabindex="-1"
        aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-body text-center">
                    <h5>Select Bottom Cut</h5>
                    <div>
                        <p>Please select bottom cut before proceeding</p>
                        <!-- Style Selection -- -- -- -- --- ---  -->
                        <label class="DesignSelection DesignSelectionActive SimpleShirt" for="ShirtStyleNormal">
                            <!-- <input  type="radio" name="inlineRadioOptions" class="radioSelection" value="option1"> -->
                            <input type="radio" id="ShirtStyleNormal" class="radioSelection" value="ShirtStyleNormal"
                                name="ShirtStyleSelection">
                            <div class="innerDesignSelection">
                                <div class="designSelectionImage">
                                    <img src="/Assets/Images/Styles/Svg/FinalShirtSvg.svg" alt="" class="img-fluid">
                                </div>
                                <div class="designSelectionContent mt-1 text-center">
                                    <h6>Straight Bottom</h6>
                                </div>
                            </div>
                        </label>
                        <!-- Style Selection -- -- -- -- --- ---  -->

                        <!-- Style Selection -- -- -- -- --- ---  -->
                        <label class="DesignSelection DesignSelectionActive LongBottomShirt" for="ShirtStyleLongBottom">
                            <!-- <input  type="radio" name="inlineRadioOptions" class="radioSelection" value="option1"> -->
                            <input type="radio" id="ShirtStyleLongBottom" class="radioSelection" value="ShirtStyleLongBottom"
                                name="ShirtStyleSelection">
                            <div class="innerDesignSelection">
                                <div class="designSelectionImage">
                                    <img src="/Assets/Images/Styles/Svg/LongBottomShirt.svg" alt="" class="img-fluid">
                                </div>
                                <div class="designSelectionContent mt-1 text-center">
                                    <h6>Round Bottom</h6>
                                </div>
                            </div>
                        </label>
                        <!-- Style Selection -- -- -- -- --- ---  -->
                    </div>
                </div>
                <div class="modal-footer d-block text-right" style="border: 0;">


                    <button type="button" id="ShirtSave" class="btn btn-main">Save</button>
                </div>
            </div>
        </div>
    </div>
    <!-- .... ... .... ... .... . .. . .. . .. .  -->
    <!-- .... ... .... ... .... . .. . .. . .. .  -->

    <main id="customDesignerMain">
        <div class="clickHere bounce">
            <img src="/Assets/Images/ClickHere.png" alt="" class="img-fluid">
        </div>
        <div class="bgFd"></div>
        <div class="nonDisplayElements">
        </div>
        <div class="container-fluid p-0">
            <div class="row m-0 cdDesigner">
                <div class="col-xl-2 col-lg-3 dragBar" id="dragBar">
                    <div class="inner_drag_bar topBar">
                        <div class="mt-2 p-2">
                            <p><b>Select the style from each category to customize your shirt</b></p>
                        </div>
                        <div class="accordion" id="accordionExample">
                            <div class="card">
                                <div class="card-header p-2" id="headingOne">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left p-0" type="button" data-toggle="collapse"
                                            data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                            Collar Styles
                                        <img src="/Assets/Images/cl.png" class="float-right" width="25" alt="">
                                        </button>
                                    </h2>
                                </div>

                                <div id="collapseOne" class="collapse" aria-labelledby="headingOne"
                                    data-parent="#accordionExample">
                                    <div class="card-body pr-1 pl-1">
                                        <div class="row m-0">
                                            <div class="col-6 p-1">
                                                <div class="drag CollarStyle1 collars" data-style-name="Large Spread">
                                                    <svg id="be1424c9-bf67-4253-86b2-af70d256e4c0" data-name="Layer 2"
                                                        xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                        viewBox="15 50 130.45 110.48">
                                                        <defs>
                                                            <style>
                                                                .ae652df5-d611-4ff1-89be-80689137f8d4 {
                                                                    fill: none;
                                                                    stroke: #000;
                                                                    stroke-miterlimit: 10;
                                                                    stroke-width: 0.5%;
                                                                }

                                                                .ae2ccc90-e9a8-4d35-9b20-ce44f4c607f4 {
                                                                    clip-path: url(#eb945194-b94b-4363-a547-7df9a0b90faf);
                                                                }

                                                                .fad2b1df-f08b-4662-b1ce-293679eaf856 {
                                                                    clip-path: url(#ad91fc89-c66d-4041-8989-d3cab8af7d5d);
                                                                }

                                                                .afc6a9e0-b49e-4559-9f77-b6550e9293aa {
                                                                    clip-path: url(#fe1c328f-71a7-41d1-baff-0469522633e9);
                                                                }
                                                            </style>
                                                            <clipPath id="eb945194-b94b-4363-a547-7df9a0b90faf" transform="translate(17.42 20.89)">
                                                                <path class="ae652df5-d611-4ff1-89be-80689137f8d4"
                                                                    d="M57.2,79.8c-1.75.89-3.42,3.8-4.78,7l0,0C47,97.91,42.26,116.9,42.26,116.9,34.6,114.55,17,90.2,17,90.2c-2.12-20.6,5.89-30.49,5.89-30.49a70.52,70.52,0,0,0,11,9.37A72.75,72.75,0,0,0,57.2,79.8Z" />
                                                            </clipPath>
                                                            <clipPath id="ad91fc89-c66d-4041-8989-d3cab8af7d5d" transform="translate(17.42 20.89)">
                                                                <path class="ae652df5-d611-4ff1-89be-80689137f8d4"
                                                                    d="M112.77,90.89S95.21,115.25,87.55,117.6c0,0-2.82-11.34-6.6-21.61v0a24.29,24.29,0,0,0-1.83-4.64.08.08,0,0,1,0,0C77,86.33,74.78,82.19,72.61,80.5A72.93,72.93,0,0,0,96.83,69.08a69.2,69.2,0,0,0,10-8.67S114.89,70.3,112.77,90.89Z" />
                                                            </clipPath>
                                                            <clipPath id="fe1c328f-71a7-41d1-baff-0469522633e9" transform="translate(17.42 20.89)">
                                                                <path class="ae652df5-d611-4ff1-89be-80689137f8d4"
                                                                    d="M106.88,60.41a69.2,69.2,0,0,1-10,8.67c-31.24-15.25-62.86,0-62.86,0a70.52,70.52,0,0,1-11-9.37S68,33.4,106.88,60.41Z" />
                                                            </clipPath>
                                                            <image id="ab647f06-a5f6-421d-98d5-19f8d67b10ff" width="768" height="1024"
                                                                xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                        </defs>

                                                        <g class="ae2ccc90-e9a8-4d35-9b20-ce44f4c607f4">
                                                            <use transform="translate(7.61) scale(0.28)"
                                                                xlink:href="#ab647f06-a5f6-421d-98d5-19f8d67b10ff" />
                                                        </g>
                                                        <path class="ae652df5-d611-4ff1-89be-80689137f8d4"
                                                            d="M57.2,79.8c-1.75.89-3.42,3.8-4.78,7l0,0C47,97.91,42.26,116.9,42.26,116.9,34.6,114.55,17,90.2,17,90.2c-2.12-20.6,5.89-30.49,5.89-30.49a70.52,70.52,0,0,0,11,9.37A72.75,72.75,0,0,0,57.2,79.8Z"
                                                            transform="translate(17.42 20.89)" />
                                                        <path class="ae652df5-d611-4ff1-89be-80689137f8d4"
                                                            d="M57.2,79.8c-1.59,1.24-3.21,3.78-4.78,7C53.78,83.6,55.45,80.69,57.2,79.8Z"
                                                            transform="translate(17.42 20.89)" />
                                                        <g class="fad2b1df-f08b-4662-b1ce-293679eaf856">
                                                            <use transform="translate(-17.42 -15.2) scale(0.28)"
                                                                xlink:href="#ab647f06-a5f6-421d-98d5-19f8d67b10ff" />
                                                        </g>
                                                        <path class="ae652df5-d611-4ff1-89be-80689137f8d4"
                                                            d="M112.77,90.89S95.21,115.25,87.55,117.6c0,0-2.82-11.34-6.6-21.61v0a24.29,24.29,0,0,0-1.83-4.64.08.08,0,0,1,0,0C77,86.33,74.78,82.19,72.61,80.5A72.93,72.93,0,0,0,96.83,69.08a69.2,69.2,0,0,0,10-8.67S114.89,70.3,112.77,90.89Z"
                                                            transform="translate(17.42 20.89)" />
                                                        <path class="ae652df5-d611-4ff1-89be-80689137f8d4"
                                                            d="M80.94,96c-.59-1.59-1.21-3.16-1.83-4.64A24.29,24.29,0,0,1,80.94,96Z"
                                                            transform="translate(17.42 20.89)" />
                                                        <path class="ae652df5-d611-4ff1-89be-80689137f8d4"
                                                            d="M81,98.33s-18.93,6.28-32.09-1.19A82.57,82.57,0,0,1,52.4,86.82l0,0c1.57-3.21,3.19-5.75,4.78-7a25.88,25.88,0,0,0,15.41.7,100.49,100.49,0,0,1,6.48,10.76.08.08,0,0,0,0,0c.62,1.48,1.24,3,1.83,4.64v0A4.48,4.48,0,0,1,81,98.33Z"
                                                            transform="translate(17.42 20.89)" style="fill: #fff;" />
                                                        <path class="ae652df5-d611-4ff1-89be-80689137f8d4"
                                                            d="M57.2,79.8c-1.59,1.24-3.21,3.78-4.78,7C53.78,83.6,55.45,80.69,57.2,79.8Z"
                                                            transform="translate(17.42 20.89)" />
                                                        <path class="ae652df5-d611-4ff1-89be-80689137f8d4"
                                                            d="M80.94,96c-.59-1.59-1.21-3.16-1.83-4.64A24.29,24.29,0,0,1,80.94,96Z"
                                                            transform="translate(17.42 20.89)" />
                                                        <path class="ae652df5-d611-4ff1-89be-80689137f8d4"
                                                            d="M96.83,69.08A72.93,72.93,0,0,1,72.61,80.5a25.88,25.88,0,0,1-15.41-.7A72.75,72.75,0,0,1,34,69.08S65.59,53.83,96.83,69.08Z"
                                                            transform="translate(17.42 20.89)" />
                                                        <g class="afc6a9e0-b49e-4559-9f77-b6550e9293aa">
                                                            <use transform="translate(-17.42 -15.2) scale(0.28)"
                                                                xlink:href="#ab647f06-a5f6-421d-98d5-19f8d67b10ff" />
                                                        </g>
                                                        <path class="ae652df5-d611-4ff1-89be-80689137f8d4"
                                                            d="M106.88,60.41a69.2,69.2,0,0,1-10,8.67c-31.24-15.25-62.86,0-62.86,0a70.52,70.52,0,0,1-11-9.37S68,33.4,106.88,60.41Z"
                                                            transform="translate(17.42 20.89)" />
                                                        <path class="ae652df5-d611-4ff1-89be-80689137f8d4" d="M61.18,81.29s-3.38,12.18,0,19.51"
                                                            transform="translate(17.42 20.89)" />
                                                        <circle class="ae652df5-d611-4ff1-89be-80689137f8d4 btnColorChange" cx="83.04" cy="112.84" r="2.15" />
                                                    </svg>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>Large Spread</h6>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                 <div class="drag CollarStyle2 collars">
                                                <svg id="e4466745-40cf-4f1c-a9d3-881ee367f5a8" data-name="CollarStyle2" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="30 80 350.45 260.48">
                                                    <defs>
                                                        <style>
                                                            .\35 e95d29b-6fc8-475a-b8b5-30993a3f4b32, .dfcf0b47-d95b-4541-9d2b-84aaa0dfa424, .e09cd3ab-acb1-4de2-b137-8d24ca9de5ac {
                                                                fill: none;
                                                            }

                                                            .\35 d10b467-f731-4f47-9e65-4bb4678f81a9, .\35 e95d29b-6fc8-475a-b8b5-30993a3f4b32, .dfcf0b47-d95b-4541-9d2b-84aaa0dfa424, .e09cd3ab-acb1-4de2-b137-8d24ca9de5ac {
                                                                stroke: #000;
                                                                stroke-miterlimit: 10;
                                                            }

                                                            .f0b4edc9-e44a-42f3-b8f6-5688fdc20743 {
                                                                clip-path: url(#688eb6da-3024-4958-85b6-2c31c8996079);
                                                            }
                                                            .5e95d29b-6fc8-475a-b8b5-30993a3f4b32{
                                                                background: #fff !important;
                                                            }
                                                            .\35 e95d29b-6fc8-475a-b8b5-30993a3f4b32{
                                                                fill: #fff;
                                                            }
                                                            .\35 d10b467-f731-4f47-9e65-4bb4678f81a9, .\35 e95d29b-6fc8-475a-b8b5-30993a3f4b32 {
                                                                stroke-width: 0.25px;
                                                            }

                                                            .\35 d10b467-f731-4f47-9e65-4bb4678f81a9 {
                                                                fill: #fff;
                                                            }

                                                            .\33 82e8a4f-67aa-44b8-a955-d9b78c28e3a8 {
                                                                clip-path: url(#cb88b22a-fcd3-472a-b0be-b85e92e6732d);
                                                            }

                                                            .dfcf0b47-d95b-4541-9d2b-84aaa0dfa424 {
                                                                stroke-width: 2px;
                                                            }
                                                        </style>
                                                        <clipPath id="688eb6da-3024-4958-85b6-2c31c8996079" transform="translate(31 45)">
                                                            <path class="e09cd3ab-acb1-4de2-b137-8d24ca9de5ac" d="M326.23,133.85s-.31.3-.81.81l-1.52,1.52c-.71.61-1.42,1.42-2.34,2.23s-1.82,1.72-2.73,2.43a1.29,1.29,0,0,1-.31.41c-1.21,1.11-2.43,2.23-3.85,3.44-.71.61-1.52,1.22-2.23,1.83-2.43,2-4.76,4.05-7.19,5.88-3.47,2.74-7,5.44-10.57,8.06C151.37,105.92,60,163,60,163l-.21-.17c-1.41-1.21-2.83-2.53-4.35-3.85-2.84-2.53-5.78-5.27-8.62-8.21a157.57,157.57,0,0,1-14.49-16.92S164.08,52.77,326.23,133.85Z" />
                                                        </clipPath>
                                                        <clipPath id="cb88b22a-fcd3-472a-b0be-b85e92e6732d" transform="translate(31 45)">
                                                            <path class="e09cd3ab-acb1-4de2-b137-8d24ca9de5ac" d="M287.16,165.87l-.51.35A254.16,254.16,0,0,1,263,181c-2.13,1.12-4,1.88-6,3-14,8-24.92,10.86-34.14,14.41a.38.38,0,0,0-.31.1,176.63,176.63,0,0,1-42.79,8h-.14c-2.09.13-4.2.23-6.32.28a151.48,151.48,0,0,1-77-18.9l0,0a156.16,156.16,0,0,1-32.09-21.39c-1.3-1.13-2.7-2.22-4.15-3.48l.58-.34A262.11,262.11,0,0,1,32.5,133.5v73s120,135,294,0v-73S311.68,149.08,287.16,165.87ZM192,250.5A12.5,12.5,0,1,1,204.5,238,12.5,12.5,0,0,1,192,250.5Z" />
                                                        </clipPath>
                                                        <image id="35ae0652-50ef-4ae7-be63-856c5a610e66" width="225" height="225" xlink:href="../../../../Downloads/Compressed/Spruce_Latest/Spruce_Latest/Spruce/Assets/Images/fabric4.jpg" />
                                                    </defs><title>collarStyle1--</title><g class="f0b4edc9-e44a-42f3-b8f6-5688fdc20743"><use transform="translate(-31 -45) scale(2.76)" xlink:href="#35ae0652-50ef-4ae7-be63-856c5a610e66" /></g><path class="e09cd3ab-acb1-4de2-b137-8d24ca9de5ac" d="M326.23,133.85s-.31.3-.81.81l-1.52,1.52c-.71.61-1.42,1.42-2.34,2.23s-1.82,1.72-2.73,2.43a1.29,1.29,0,0,1-.31.41c-1.21,1.11-2.43,2.23-3.85,3.44-.71.61-1.52,1.22-2.23,1.83-2.43,2-4.76,4.05-7.19,5.88-3.47,2.74-7,5.44-10.57,8.06C151.37,105.92,60,163,60,163l-.21-.17c-1.41-1.21-2.83-2.53-4.35-3.85-2.84-2.53-5.78-5.27-8.62-8.21a157.57,157.57,0,0,1-14.49-16.92S164.08,52.77,326.23,133.85Z" transform="translate(31 45)" /><path class="5e95d29b-6fc8-475a-b8b5-30993a3f4b32" d="M294.68,160.46q-3.75,2.78-7.52,5.41l-.51.35c-26.56,18.12-64.33,37.54-106.89,40.28h-.14q-3.13.18-6.32.21a149.2,149.2,0,0,1-36.79-3.65,10,10,0,0,1-2.33-.61,217.39,217.39,0,0,1-37.9-14.57l0,0a194,194,0,0,1-35.66-25.21C68.54,158,158,108.44,294.68,160.46Z" transform="translate(31 45)" /><path class="5d10b467-f731-4f47-9e65-4bb4678f81a9" d="M60.58,162.66a194,194,0,0,0,35.66,25.21,156.16,156.16,0,0,1-32.09-21.39c-1.3-1.13-2.7-2.22-4.15-3.48Z" transform="translate(31 45)" /><path class="5d10b467-f731-4f47-9e65-4bb4678f81a9" d="M286.65,166.22A254.16,254.16,0,0,1,263,181c-2.13,1.12-4,1.88-6,3-14,8-24.92,10.86-34.14,14.41a.38.38,0,0,0-.31.1,176.63,176.63,0,0,1-42.79,8C222.32,203.76,260.09,184.34,286.65,166.22Z" transform="translate(31 45)" /><g class="382e8a4f-67aa-44b8-a955-d9b78c28e3a8"><use transform="translate(-31 -45) scale(2.76)" xlink:href="#35ae0652-50ef-4ae7-be63-856c5a610e66" /></g><path class="e09cd3ab-acb1-4de2-b137-8d24ca9de5ac" d="M287.16,165.87l-.51.35A254.16,254.16,0,0,1,263,181c-2.13,1.12-4,1.88-6,3-14,8-24.92,10.86-34.14,14.41a.38.38,0,0,0-.31.1,176.63,176.63,0,0,1-42.79,8h-.14c-2.09.13-4.2.23-6.32.28a151.48,151.48,0,0,1-77-18.9l0,0a156.16,156.16,0,0,1-32.09-21.39c-1.3-1.13-2.7-2.22-4.15-3.48l.58-.34A262.11,262.11,0,0,1,32.5,133.5v73s120,135,294,0v-73S311.68,149.08,287.16,165.87ZM192,250.5A12.5,12.5,0,1,1,204.5,238,12.5,12.5,0,0,1,192,250.5Z" transform="translate(31 45)" /><line class="dfcf0b47-d95b-4541-9d2b-84aaa0dfa424" x1="203.3" y1="251.72" x2="203.3" y2="311.49" /><circle class="e09cd3ab-acb1-4de2-b137-8d24ca9de5ac btnColorChange" cx="223" cy="283" r="12.5" /></svg>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>Banned Collar</h6>
                                                </div> 
                                            </div>
                                           <%-- <div class="col-6 p-1">
                                                <div class="drag CollarStyle2 collars">
                                                    <svg id="f4d083b4-e986-4c14-b970-4dbb3af07f27" data-name="Layer 1"
                                                        xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                        viewBox="65 100 400.75 300">
                                                        <defs>
                                                            <style>
                                                                .f45860ec-7be1-49d5-9479-71eb127b057c {
                                                                    fill: none;
                                                                }

                                                                .a8ae6ae9-28a0-43ba-be01-e80d7718ea71,
                                                                .f45860ec-7be1-49d5-9479-71eb127b057c {
                                                                    stroke: #000;
                                                                    stroke-miterlimit: 10;
                                                                }

                                                                .a8ae6ae9-28a0-43ba-be01-e80d7718ea71 {
                                                                    fill: #fff;
                                                                }

                                                                .efe86f4d-e3f2-4b08-ba8e-5b08ec2d67c9 {
                                                                    clip-path: url(#b99817eb-67bb-4cd4-8084-411c7121acc7);
                                                                }

                                                                .f35355f7-1ae2-404d-98ce-1b3ac0e837e1 {
                                                                    clip-path: url(#b5cabeca-31dd-41a1-95d9-67853b997ccb);
                                                                }

                                                                .b0f84d05-13b3-486a-8476-55fe30408805 {
                                                                    clip-path: url(#b365770b-2608-4d85-820d-44ed9899eb7a);
                                                                }
                                                            </style>
                                                            <clipPath id="b99817eb-67bb-4cd4-8084-411c7121acc7" transform="translate(75 109)">
                                                                <path class="f45860ec-7be1-49d5-9479-71eb127b057c"
                                                                    d="M161.4,127.6l-40.94,46L92.59,205l-43-8.6c-25.8-77.4,17.2-129,17.2-129a134.64,134.64,0,0,0,12.3,14.36c2.41,2.5,4.9,4.82,7.31,7C87.69,89.86,88.9,91,90.09,92s2.5,2.15,3.7,3.09c20,16.35,40.09,25.89,59.41,30.55a8.37,8.37,0,0,0,2,.52A52.86,52.86,0,0,0,161.4,127.6Z" />
                                                            </clipPath>
                                                            <clipPath id="b5cabeca-31dd-41a1-95d9-67853b997ccb" transform="translate(75 109)">
                                                                <path class="f45860ec-7be1-49d5-9479-71eb127b057c"
                                                                    d="M325.15,196.4l-43,8.6-27.95-31.31.09-.08-41-47.53s5.53-.21,14.9-3.81a.31.31,0,0,1,.26-.09c35.68-11.27,63.89-33.09,77.91-45.59,1.21-1,2.24-2,3.27-2.91s1.81-1.64,2.55-2.42a27.29,27.29,0,0,1,2-1.89l1.29-1.29.69-.68S351,119,325.15,196.4Z" />
                                                            </clipPath>
                                                            <clipPath id="b365770b-2608-4d85-820d-44ed9899eb7a" transform="translate(75 109)">
                                                                <path class="f45860ec-7be1-49d5-9479-71eb127b057c"
                                                                    d="M316.2,67.4l-.68.68-1.29,1.29c-.61.52-1.21,1.21-2,1.89s-1.54,1.46-2.32,2.07a1.1,1.1,0,0,1-.26.35c-1,.94-2.06,1.89-3.27,2.91-.6.52-1.29,1-1.89,1.56-2.06,1.69-4,3.39-6.1,5-2.95,2.32-5.94,4.61-9,6.84C167.81,43.69,90.27,92.13,90.27,92.13L90.09,92c-1.19-1-2.4-2.15-3.69-3.27-2.41-2.15-4.9-4.47-7.31-7A134.53,134.53,0,0,1,66.79,67.4S178.6-1.41,316.2,67.4Z" />
                                                            </clipPath>
                                                            <image id="b5ad803d-1a5d-45ec-bef3-1f60c5a49fee" width="768" height="1024"
                                                                xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                        </defs>
                                                        <g id="bcc6daf1-0702-4cb4-977f-e16e8c6cd0c5" data-name="CollarInner">
                                                            <path class="a8ae6ae9-28a0-43ba-be01-e80d7718ea71"
                                                                d="M289.43,90a237.14,237.14,0,0,1-26.89,17.43c-1.8,1-3.39,1.59-5.09,2.54-11.88,6.79-21.15,9.22-29,12.23a.31.31,0,0,0-.26.09,146.87,146.87,0,0,1-41.8,7,126.57,126.57,0,0,1-31.22-3.09,9,9,0,0,1-2-.52c-12.29-3.62-37.49-11.42-59.4-30.55-1.1-1-2.29-1.89-3.52-2.95C90.27,92.13,167.81,43.69,289.43,90Z"
                                                                transform="translate(75 109)" />
                                                        </g>
                                                        <g id="ad8d73e0-67cf-4742-8c79-5a1e2ae8386c" data-name="ButtonStuff">
                                                            <path class="a8ae6ae9-28a0-43ba-be01-e80d7718ea71"
                                                                d="M213.32,126.08c-11,3.39-24.61,3.39-29.7,3.39-21.15,17.29-24.8,42.33-24.46,58,52.12,10.57,92.88-12.56,95-13.77ZM187.19,179.2a8.61,8.61,0,1,1,8.61-8.6h0a8.62,8.62,0,0,1-8.61,8.6Z"
                                                                transform="translate(75 109)" />
                                                            <path class="a8ae6ae9-28a0-43ba-be01-e80d7718ea71"
                                                                d="M183.62,129.47c-21.15,17.29-24.8,42.33-24.46,58a142.07,142.07,0,0,1-38.7-13.86l40.94-46S168.75,129.39,183.62,129.47Z"
                                                                transform="translate(75 109)" />
                                                            <circle class="a8ae6ae9-28a0-43ba-be01-e80d7718ea71 btnColorChange" cx="262.19" cy="279.6" r="8.6" />
                                                        </g>
                                                        <g class="efe86f4d-e3f2-4b08-ba8e-5b08ec2d67c9">
                                                            <use transform="scale(0.69)" xlink:href="#b5ad803d-1a5d-45ec-bef3-1f60c5a49fee" />
                                                        </g>
                                                        <path class="f45860ec-7be1-49d5-9479-71eb127b057c"
                                                            d="M161.4,127.6l-40.94,46L92.59,205l-43-8.6c-25.8-77.4,17.2-129,17.2-129a134.64,134.64,0,0,0,12.3,14.36c2.41,2.5,4.9,4.82,7.31,7C87.69,89.86,88.9,91,90.09,92s2.5,2.15,3.7,3.09c20,16.35,40.09,25.89,59.41,30.55a8.37,8.37,0,0,0,2,.52A52.86,52.86,0,0,0,161.4,127.6Z"
                                                            transform="translate(75 109)" />
                                                        <g class="f35355f7-1ae2-404d-98ce-1b3ac0e837e1">
                                                            <use transform="translate(63 -92) scale(0.69)"
                                                                xlink:href="#b5ad803d-1a5d-45ec-bef3-1f60c5a49fee" />
                                                        </g>
                                                        <path class="f45860ec-7be1-49d5-9479-71eb127b057c"
                                                            d="M325.15,196.4l-43,8.6-27.95-31.31.09-.08-41-47.53s5.53-.21,14.9-3.81a.31.31,0,0,1,.26-.09c35.68-11.27,63.89-33.09,77.91-45.59,1.21-1,2.24-2,3.27-2.91s1.81-1.64,2.55-2.42a27.29,27.29,0,0,1,2-1.89l1.29-1.29.69-.68S351,119,325.15,196.4Z"
                                                            transform="translate(75 109)" />
                                                        <g class="b0f84d05-13b3-486a-8476-55fe30408805">
                                                            <use transform="translate(-1 -82) scale(0.69)"
                                                                xlink:href="#b5ad803d-1a5d-45ec-bef3-1f60c5a49fee" />
                                                        </g>
                                                        <path class="f45860ec-7be1-49d5-9479-71eb127b057c"
                                                            d="M316.2,67.4l-.68.68-1.29,1.29c-.61.52-1.21,1.21-2,1.89s-1.54,1.46-2.32,2.07a1.1,1.1,0,0,1-.26.35c-1,.94-2.06,1.89-3.27,2.91-.6.52-1.29,1-1.89,1.56-2.06,1.69-4,3.39-6.1,5-2.95,2.32-5.94,4.61-9,6.84C167.81,43.69,90.27,92.13,90.27,92.13L90.09,92c-1.19-1-2.4-2.15-3.69-3.27-2.41-2.15-4.9-4.47-7.31-7A134.53,134.53,0,0,1,66.79,67.4S178.6-1.41,316.2,67.4Z"
                                                            transform="translate(75 109)" />
                                                    </svg>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>Classic</h6>
                                                </div>
                                            </div>--%>
                                            <div class="col-6 p-1">
                                                <div class="drag CollarStyle3 collars">
                                                    <div class="removeCollarStyle"><i class="fa fa-close"></i></div>
                                                    <svg id="e5533987-1770-44ee-a994-995ef1b5ae76" data-name="Layer 2"
                                                        xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                        viewBox="60 100 270 170.15">
                                                        <defs>
                                                            <style>
                                                                .b6ccebaf-8395-40f0-9248-80f560557525 {
                                                                    fill: none;
                                                                }

                                                                .b6ccebaf-8395-40f0-9248-80f560557525,
                                                                .bde24160-0eee-4577-adc2-c9a2341a7c6a,
                                                                .e1bea515-4e59-406c-bf1f-cae5d3147c4c {
                                                                    stroke: #000;
                                                                    stroke-miterlimit: 10;
                                                                }

                                                                .be2cb893-f159-4730-a91f-864fdcde95c1 {
                                                                    clip-path: url(#bd594b59-69ce-4578-90b9-7955b6272e3e);
                                                                }

                                                                .aed13e9f-de58-4cf3-8ce1-b584c50bbc47 {
                                                                    clip-path: url(#e8820fce-e820-47f2-b31f-b7673cc1cd17);
                                                                }

                                                                .bde24160-0eee-4577-adc2-c9a2341a7c6a {
                                                                    fill: #fff;
                                                                }

                                                                .a4fe5358-d7b8-422c-9fff-10015cc394c1 {
                                                                    clip-path: url(#faba5791-2462-4501-9a23-3ca0a3ffc432);
                                                                }

                                                                .b39f0f2c-c3c2-4442-84e7-dcc5e4c7e1f5 {
                                                                    clip-path: url(#b34d4949-9213-472c-b171-1e96a81c9b86);
                                                                }
                                                            </style>
                                                            <clipPath id="bd594b59-69ce-4578-90b9-7955b6272e3e" transform="translate(25 72)">
                                                                <path class="b6ccebaf-8395-40f0-9248-80f560557525"
                                                                    d="M245.5,83.5s-1.95,1.26-5.33,3.24c-69.33-27.77-135.78,0-135.78,0-5-2.65-8.76-4.88-9.89-6.24,0,0-9.11-5.36-7.33-12.94.69-1.52,1.25-2.75,1.65-3.61v0A22.51,22.51,0,0,1,94.5,58.5s80-31,151,0c0,0,6.48,3.1,9.12,8.1h0C257,71,256.29,76.94,245.5,83.5Z" />
                                                            </clipPath>
                                                            <clipPath id="e8820fce-e820-47f2-b31f-b7673cc1cd17" transform="translate(25 72)">
                                                                <path class="b6ccebaf-8395-40f0-9248-80f560557525"
                                                                    d="M157.92,110.28c-3.87,9.56-20.4,26.19-30.15,35.48-4.29,4.08-7.27,6.74-7.27,6.74-51,22-57-18-57-18,.81-15.42,17.44-53.25,23.67-66.94C85.39,75.14,94.5,80.5,94.5,80.5c1.13,1.36,4.84,3.59,9.89,6.24,17.22,9,50.11,22.76,50.11,22.76Q156.26,109.94,157.92,110.28Z" />
                                                            </clipPath>
                                                            <clipPath id="faba5791-2462-4501-9a23-3ca0a3ffc432" transform="translate(25 72)">
                                                                <path class="b6ccebaf-8395-40f0-9248-80f560557525"
                                                                    d="M277.5,126.5c-3,47-56,29-56,29-3.95-1.73-8.51-5.32-13.13-9.74-14.06-13.48-28.71-34.7-28.71-34.7a25.89,25.89,0,0,0,5.84-1.56c21.73-4.5,44.58-16.85,54.67-22.76,3.38-2,5.33-3.24,5.33-3.24C256.29,76.94,257,71,254.62,66.61,263.84,74.53,277.5,126.5,277.5,126.5Z" />
                                                            </clipPath>
                                                            <clipPath id="b34d4949-9213-472c-b171-1e96a81c9b86" transform="translate(25 72)">
                                                                <path class="b6ccebaf-8395-40f0-9248-80f560557525"
                                                                    d="M208.37,145.76c-35.13,11.25-80.6,0-80.6,0,9.75-9.29,26.28-25.92,30.15-35.48a58.9,58.9,0,0,0,21.74.78S194.31,132.28,208.37,145.76Z" />
                                                            </clipPath>
                                                            <image id="bb0d7c51-873b-46ec-919a-1be9677984a3" width="768" height="1024"
                                                                xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                        </defs>
                                                        <g class="be2cb893-f159-4730-a91f-864fdcde95c1">
                                                            <use transform="translate(61 3) scale(0.5)"
                                                                xlink:href="#bb0d7c51-873b-46ec-919a-1be9677984a3" />
                                                        </g>
                                                        <path class="b6ccebaf-8395-40f0-9248-80f560557525"
                                                            d="M245.5,83.5s-1.95,1.26-5.33,3.24c-69.33-27.77-135.78,0-135.78,0-5-2.65-8.76-4.88-9.89-6.24,0,0-9.11-5.36-7.33-12.94.69-1.52,1.25-2.75,1.65-3.61v0A22.51,22.51,0,0,1,94.5,58.5s80-31,151,0c0,0,6.48,3.1,9.12,8.1h0C257,71,256.29,76.94,245.5,83.5Z"
                                                            transform="translate(25 72)" />
                                                        <path class="b6ccebaf-8395-40f0-9248-80f560557525"
                                                            d="M87.17,67.56A11.06,11.06,0,0,1,88.82,64C88.42,64.81,87.86,66,87.17,67.56Z"
                                                            transform="translate(25 72)" />
                                                        <g class="aed13e9f-de58-4cf3-8ce1-b584c50bbc47">
                                                            <use transform="translate(-25 -44) scale(0.5)"
                                                                xlink:href="#bb0d7c51-873b-46ec-919a-1be9677984a3" />
                                                        </g>
                                                        <path class="b6ccebaf-8395-40f0-9248-80f560557525"
                                                            d="M157.92,110.28c-3.87,9.56-20.4,26.19-30.15,35.48-4.29,4.08-7.27,6.74-7.27,6.74-51,22-57-18-57-18,.81-15.42,17.44-53.25,23.67-66.94C85.39,75.14,94.5,80.5,94.5,80.5c1.13,1.36,4.84,3.59,9.89,6.24,17.22,9,50.11,22.76,50.11,22.76Q156.26,109.94,157.92,110.28Z"
                                                            transform="translate(25 72)" />
                                                        <path class="b6ccebaf-8395-40f0-9248-80f560557525" d="M89.5,62.5s-.24.5-.67,1.43"
                                                            transform="translate(25 72)" />
                                                        <path class="bde24160-0eee-4577-adc2-c9a2341a7c6a"
                                                            d="M240.17,86.74C230.08,92.65,207.23,105,185.5,109.5a25.89,25.89,0,0,1-5.84,1.56,58.9,58.9,0,0,1-21.74-.78q-1.66-.34-3.42-.78s-32.89-13.75-50.11-22.76C104.39,86.74,170.84,59,240.17,86.74Z"
                                                            transform="translate(25 72)" />
                                                        <g class="a4fe5358-d7b8-422c-9fff-10015cc394c1">
                                                            <use transform="translate(83 -72) scale(0.5)"
                                                                xlink:href="#bb0d7c51-873b-46ec-919a-1be9677984a3" />
                                                        </g>
                                                        <path class="b6ccebaf-8395-40f0-9248-80f560557525"
                                                            d="M277.5,126.5c-3,47-56,29-56,29-3.95-1.73-8.51-5.32-13.13-9.74-14.06-13.48-28.71-34.7-28.71-34.7a25.89,25.89,0,0,0,5.84-1.56c21.73-4.5,44.58-16.85,54.67-22.76,3.38-2,5.33-3.24,5.33-3.24C256.29,76.94,257,71,254.62,66.61,263.84,74.53,277.5,126.5,277.5,126.5Z"
                                                            transform="translate(25 72)" />
                                                        <path class="b6ccebaf-8395-40f0-9248-80f560557525" d="M254.5,66.5l.12.1h0"
                                                            transform="translate(25 72)" />
                                                        <g class="b39f0f2c-c3c2-4442-84e7-dcc5e4c7e1f5">
                                                            <use transform="translate(23 -65) scale(0.5)"
                                                                xlink:href="#bb0d7c51-873b-46ec-919a-1be9677984a3" />
                                                        </g>
                                                        <path class="b6ccebaf-8395-40f0-9248-80f560557525"
                                                            d="M208.37,145.76c-35.13,11.25-80.6,0-80.6,0,9.75-9.29,26.28-25.92,30.15-35.48a58.9,58.9,0,0,0,21.74.78S194.31,132.28,208.37,145.76Z"
                                                            transform="translate(25 72)" />
                                                        <circle class="e1bea515-4e59-406c-bf1f-cae5d3147c4c btnColorChange" cx="196.5" cy="202.5" r="6" />
                                                    </svg>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>Rounded With Button</h6>
                                                </div>
                                            </div>
                                            <%--<div class="col-6 p-1">
                                                <div class="drag CollarStyle4 collars">
                                                    <svg id="bf9f4d42-a2c0-459d-89dc-405d22a3c0b0" data-name="Layer 1"
                                                        xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                        viewBox="35 160 450 370">
                                                        <defs>
                                                            <style>
                                                                .e353d181-fb76-4a3d-9042-e0d9c98767fa {
                                                                    fill: none;
                                                                }

                                                                .b7f3a733-21ba-423f-966c-f90216b64698,
                                                                .e353d181-fb76-4a3d-9042-e0d9c98767fa {
                                                                    stroke: #000;
                                                                    stroke-miterlimit: 10;
                                                                }

                                                                .bb6c74e7-2750-4c8d-aa25-f95a2cc95704 {
                                                                    clip-path: url(#b6b5461d-4d72-49fb-b96d-291da234bb81);
                                                                }

                                                                .fd13e44a-3148-41c3-9246-9b20a68d32d8 {
                                                                    clip-path: url(#ad46b431-f126-4234-a5b7-4598941e030e);
                                                                }

                                                                .b7f3a733-21ba-423f-966c-f90216b64698 {
                                                                    fill: #fff;
                                                                    stroke-width: 0.25px;
                                                                }

                                                                .b0e3ba48-b701-46ef-948d-2507c4378755 {
                                                                    clip-path: url(#bcf0c414-7b7a-45db-b1a1-b694065e6b11);
                                                                }
                                                            </style>
                                                            <clipPath id="b6b5461d-4d72-49fb-b96d-291da234bb81" transform="translate(87 224.1)">
                                                                <path class="e353d181-fb76-4a3d-9042-e0d9c98767fa"
                                                                    d="M172.5,154s-14.86.21-37,22.37-22.16,77.56-44.32,55.4S2.53,154.21,2.53,109.89,13.61,32.33,35.77,21.25c0,0,0,20.61,18.17,48.09h.11C71.11,95.27,108,127.19,172.5,154Z" />
                                                            </clipPath>
                                                            <clipPath id="ad46b431-f126-4234-a5b7-4598941e030e" transform="translate(87 224.1)">
                                                                <path class="e353d181-fb76-4a3d-9042-e0d9c98767fa"
                                                                    d="M346,98.81c0,44.32-77.56,121.88-77.56,121.88s-22.16,33.24-33.24,0S172.5,154,172.5,154c61.27-36.78,101.26-64.27,118.1-84.66,28.21-34.3,11.67-47.63,11.1-48.08C334.92,32.34,346,54.5,346,98.81Z" />
                                                            </clipPath>
                                                            <clipPath id="bcf0c414-7b7a-45db-b1a1-b694065e6b11" transform="translate(87 224.1)">
                                                                <path class="e353d181-fb76-4a3d-9042-e0d9c98767fa"
                                                                    d="M290.6,69.34c-98.05-28.92-231.9-1-236.55,0h-.11C35.77,41.86,35.77,21.25,35.77,21.25s121.87-44.32,265.91,0h0C302.27,21.71,318.81,35,290.6,69.34Z" />
                                                            </clipPath>
                                                            <image id="be607daf-d037-4f13-92b3-dd9385610961" width="768" height="1024"
                                                                xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                        </defs>
                                                        <g class="bb6c74e7-2750-4c8d-aa25-f95a2cc95704">
                                                            <use transform="translate(0 6.1) scale(1)"
                                                                xlink:href="#be607daf-d037-4f13-92b3-dd9385610961" />
                                                        </g>
                                                        <path class="e353d181-fb76-4a3d-9042-e0d9c98767fa"
                                                            d="M172.5,154s-14.86.21-37,22.37-22.16,77.56-44.32,55.4S2.53,154.21,2.53,109.89,13.61,32.33,35.77,21.25c0,0,0,20.61,18.17,48.09h.11C71.11,95.27,108,127.19,172.5,154Z"
                                                            transform="translate(87 224.1)" />
                                                        <g class="fd13e44a-3148-41c3-9246-9b20a68d32d8">
                                                            <use transform="translate(-18.54 -224.1) scale(1)"
                                                                xlink:href="#be607daf-d037-4f13-92b3-dd9385610961" />
                                                        </g>
                                                        <path class="e353d181-fb76-4a3d-9042-e0d9c98767fa"
                                                            d="M346,98.81c0,44.32-77.56,121.88-77.56,121.88s-22.16,33.24-33.24,0S172.5,154,172.5,154c61.27-36.78,101.26-64.27,118.1-84.66,28.21-34.3,11.67-47.63,11.1-48.08C334.92,32.34,346,54.5,346,98.81Z"
                                                            transform="translate(87 224.1)" />
                                                        <path class="b7f3a733-21ba-423f-966c-f90216b64698"
                                                            d="M290.6,69.34C273.76,89.73,233.77,117.22,172.5,154,108,127.19,71.11,95.27,54.05,69.34,58.7,68.34,192.55,40.42,290.6,69.34Z"
                                                            transform="translate(87 224.1)" />
                                                        <g class="b0e3ba48-b701-46ef-948d-2507c4378755">
                                                            <use transform="translate(-49 -174) scale(1)"
                                                                xlink:href="#be607daf-d037-4f13-92b3-dd9385610961" />
                                                        </g>
                                                        <path class="e353d181-fb76-4a3d-9042-e0d9c98767fa"
                                                            d="M290.6,69.34c-98.05-28.92-231.9-1-236.55,0h-.11C35.77,41.86,35.77,21.25,35.77,21.25s121.87-44.32,265.91,0h0C302.27,21.71,318.81,35,290.6,69.34Z"
                                                            transform="translate(87 224.1)" />
                                                    </svg>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>Rounded Without Button</h6>
                                                </div>
                                            </div>--%>
                                            <%--<div class="col-6 p-1">
                                                <div class="drag CutAwayExtra collars">
                                                    <svg id="a9af7862-1044-4fe3-a3c3-b9c07b1d9145" data-name="Layer 2"
                                                        xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                        viewBox="30 60 400 325">
                                                        <defs>
                                                            <style>
                                                                .ee71a9d2-1b6c-455d-9ef3-9d89f940d66f,
                                                                .fabc09af-f4fd-4b87-b534-0cfab2a07901 {
                                                                    fill: none;
                                                                    stroke: #000;
                                                                    stroke-miterlimit: 10;
                                                                }

                                                                .ee71a9d2-1b6c-455d-9ef3-9d89f940d66f {
                                                                    stroke-width: 2px;
                                                                }

                                                                .f0c6106a-a929-481d-827f-1801115656b2 {
                                                                    clip-path: url(#b715a335-afac-4c11-8d61-2c920b795d0e);
                                                                }

                                                                .face30c9-d484-4530-ab87-61643ecd1a15 {
                                                                    clip-path: url(#ebe30de4-5322-406c-8a02-d639fbf74e09);
                                                                }

                                                                .a07c8dae-86b6-4820-b306-b0935180bbc0 {
                                                                    clip-path: url(#b7d2f83b-2788-4598-b4cd-bdcd16843ea9);
                                                                }

                                                                .b02f85e7-e792-4d83-8b74-e93a89aefd98 {
                                                                    clip-path: url(#e8726f7b-b423-47de-bb73-00453677c08a);
                                                                }
                                                            </style>
                                                            <clipPath id="b715a335-afac-4c11-8d61-2c920b795d0e" transform="translate(54 107)">
                                                                <path class="ee71a9d2-1b6c-455d-9ef3-9d89f940d66f"
                                                                    d="M309.42,48.29a144.93,144.93,0,0,1-27.87,32.86c-104.49-43.69-210.15,0-210.15,0A143.33,143.33,0,0,1,41,44.07l.22-.11S175-26.4,308.65,47.48C308.65,47.48,308.93,47.76,309.42,48.29Z" />
                                                            </clipPath>
                                                            <clipPath id="ebe30de4-5322-406c-8a02-d639fbf74e09" transform="translate(54 107)">
                                                                <path class="ee71a9d2-1b6c-455d-9ef3-9d89f940d66f"
                                                                    d="M150.49,115.85,71.4,151.63,6.06,181.18S2.54,62,41,44.07A143.33,143.33,0,0,0,71.4,81.15C89.34,96.85,114.92,111.2,150.49,115.85Z" />
                                                            </clipPath>
                                                            <clipPath id="b7d2f83b-2788-4598-b4cd-bdcd16843ea9" transform="translate(54 107)">
                                                                <path class="ee71a9d2-1b6c-455d-9ef3-9d89f940d66f"
                                                                    d="M340.31,177.67l-43.94-19.78-93.56-42.08c35.36-4.71,60.84-19,78.74-34.66a144.93,144.93,0,0,0,27.87-32.86C315.33,54.77,353.3,99.73,340.31,177.67Z" />
                                                            </clipPath>
                                                            <clipPath id="e8726f7b-b423-47de-bb73-00453677c08a" transform="translate(54 107)">
                                                                <path class="ee71a9d2-1b6c-455d-9ef3-9d89f940d66f"
                                                                    d="M202.81,115.81a186.81,186.81,0,0,1-23.36,1.62h-1c-1.26,0-2.6,0-4,0h-.67a188.06,188.06,0,0,1-23.33-1.58L71.4,151.63s33.85,27.9,93.38,32.72c35.36,2.92,79.8-2.36,131.59-26.46ZM185.5,170.63a10.56,10.56,0,1,1,10.56-10.56A10.54,10.54,0,0,1,185.5,170.63Z" />
                                                            </clipPath>
                                                            <image id="e3e1ad1a-12b7-4517-bd69-3baf786ccf2d" width="768" height="1024"
                                                                xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                        </defs>
                                                        <g class="f0c6106a-a929-481d-827f-1801115656b2">
                                                            <use transform="translate(90) scale(0.7)"
                                                                xlink:href="#e3e1ad1a-12b7-4517-bd69-3baf786ccf2d" />
                                                        </g>
                                                        <path class="ee71a9d2-1b6c-455d-9ef3-9d89f940d66f"
                                                            d="M309.42,48.29a144.93,144.93,0,0,1-27.87,32.86c-104.49-43.69-210.15,0-210.15,0A143.33,143.33,0,0,1,41,44.07l.22-.11S175-26.4,308.65,47.48C308.65,47.48,308.93,47.76,309.42,48.29Z"
                                                            transform="translate(54 107)" />
                                                        <g class="face30c9-d484-4530-ab87-61643ecd1a15">
                                                            <use transform="translate(-54 -62) scale(0.7)"
                                                                xlink:href="#e3e1ad1a-12b7-4517-bd69-3baf786ccf2d" />
                                                        </g>
                                                        <path class="ee71a9d2-1b6c-455d-9ef3-9d89f940d66f"
                                                            d="M150.49,115.85,71.4,151.63,6.06,181.18S2.54,62,41,44.07A143.33,143.33,0,0,0,71.4,81.15C89.34,96.85,114.92,111.2,150.49,115.85Z"
                                                            transform="translate(54 107)" />
                                                        <g class="a07c8dae-86b6-4820-b306-b0935180bbc0">
                                                            <use transform="translate(141 -62) scale(0.7)"
                                                                xlink:href="#e3e1ad1a-12b7-4517-bd69-3baf786ccf2d" />
                                                        </g>
                                                        <path class="ee71a9d2-1b6c-455d-9ef3-9d89f940d66f"
                                                            d="M340.31,177.67l-43.94-19.78-93.56-42.08c35.36-4.71,60.84-19,78.74-34.66a144.93,144.93,0,0,0,27.87-32.86C315.33,54.77,353.3,99.73,340.31,177.67Z"
                                                            transform="translate(54 107)" />
                                                        <g class="b02f85e7-e792-4d83-8b74-e93a89aefd98">
                                                            <use transform="translate(80 8) scale(0.7)"
                                                                xlink:href="#e3e1ad1a-12b7-4517-bd69-3baf786ccf2d" />
                                                        </g>
                                                        <path class="ee71a9d2-1b6c-455d-9ef3-9d89f940d66f"
                                                            d="M202.81,115.81a186.81,186.81,0,0,1-23.36,1.62h-1c-1.26,0-2.6,0-4,0h-.67a188.06,188.06,0,0,1-23.33-1.58L71.4,151.63s33.85,27.9,93.38,32.72c35.36,2.92,79.8-2.36,131.59-26.46ZM185.5,170.63a10.56,10.56,0,1,1,10.56-10.56A10.54,10.54,0,0,1,185.5,170.63Z"
                                                            transform="translate(54 107)" />
                                                        <path class="fabc09af-f4fd-4b87-b534-0cfab2a07901"
                                                            d="M281.55,81.15c-17.9,15.66-43.38,29.95-78.74,34.66a186.81,186.81,0,0,1-23.36,1.62h-1c-1.26,0-2.6,0-4,0h-.67a188.06,188.06,0,0,1-23.33-1.58c-35.57-4.65-61.15-19-79.09-34.7C71.4,81.15,177.06,37.46,281.55,81.15Z"
                                                            transform="translate(54 107)" />
                                                        <path class="ee71a9d2-1b6c-455d-9ef3-9d89f940d66f" d="M171.29,117.43s-9.61,11.75-6.49,67.66"
                                                            transform="translate(54 107)" />
                                                        <circle class="fabc09af-f4fd-4b87-b534-0cfab2a07901 btnColorChange" cx="239.5" cy="267.07"
                                                            r="10.56" />
                                                    </svg>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>Cut Away Extra</h6>
                                                </div>
                                            </div>--%>
                                            <div class="col-6 p-1">
                                                <div class="drag CollarStyle5 collars">
                                                    <svg id="a25dfc23-a46f-4087-b204-bfa0b966b7dc" data-name="Layer 1"
                                                        xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                        viewBox="0 0 470 436.33">
                                                        <defs>
                                                            <style>
                                                                .aace0445-6cc0-4439-87f7-981f55247dab,
                                                                .ac7568e5-ec11-4907-88fa-ad0b9f91c2b8 {
                                                                    fill: none;
                                                                }

                                                                .ac7568e5-ec11-4907-88fa-ad0b9f91c2b8,
                                                                .b84bedc4-5b96-4981-bed0-e98c47e615c8 {
                                                                    stroke: #000;
                                                                }

                                                                .aace0445-6cc0-4439-87f7-981f55247dab,
                                                                .ac7568e5-ec11-4907-88fa-ad0b9f91c2b8,
                                                                .b84bedc4-5b96-4981-bed0-e98c47e615c8 {
                                                                    stroke-miterlimit: 10;
                                                                }

                                                                .aace0445-6cc0-4439-87f7-981f55247dab {
                                                                    stroke: #f40000;
                                                                    stroke-width: 0.25px;
                                                                }

                                                                .a6a2bfa8-aff3-4024-a6b1-918cfe474121 {
                                                                    clip-path: url(#e14a8bfb-5ff0-4a99-a86f-0f576aa0c62a);
                                                                }

                                                                .b5c04f5b-f6dd-4e96-b4c1-59ff3664ddda {
                                                                    clip-path: url(#b4558966-1552-4af4-82c6-0d18f9e3912f);
                                                                }

                                                                .f159e6a0-79d4-447d-9485-1cd64827ef73 {
                                                                    clip-path: url(#bc7a9ac7-da34-4c5b-9dc0-ff6395bebfab);
                                                                }

                                                                .b84bedc4-5b96-4981-bed0-e98c47e615c8 {
                                                                    fill: #fff;
                                                                }
                                                            </style>
                                                            <clipPath id="e14a8bfb-5ff0-4a99-a86f-0f576aa0c62a" transform="translate(65 92)">
                                                                <path class="ac7568e5-ec11-4907-88fa-ad0b9f91c2b8"
                                                                    d="M176.58,160.8l-.45.25c-7.53-2.16-34.62-8.88-53.61.62-22.25,11.12-100.11,55.62-100.11,66.74C22.41,228.41-29.74,72.5,37,28h0c6.2-1.43-2.17,13.55,21.41,43.84C75.42,93.67,109,123.46,176.58,160.8Z" />
                                                            </clipPath>
                                                            <clipPath id="b4558966-1552-4af4-82c6-0d18f9e3912f" transform="translate(65 92)">
                                                                <path class="ac7568e5-ec11-4907-88fa-ad0b9f91c2b8"
                                                                    d="M330.75,228.41c0-11.12-77.87-55.62-100.12-66.74-19-9.5-46.08-2.78-53.61-.62l-.44-.25c67.46-37.28,101-67,118-88.86,23-29.55,15.71-44.56,21-44l.51.09C382.9,72.5,330.75,228.41,330.75,228.41Z" />
                                                            </clipPath>
                                                            <clipPath id="bc7a9ac7-da34-4c5b-9dc0-ff6395bebfab" transform="translate(65 92)">
                                                                <path class="ac7568e5-ec11-4907-88fa-ad0b9f91c2b8"
                                                                    d="M315.65,27.91c-5.32-.53,2,14.48-21,44-120.37-19.42-220.17-3-236.17-.11C34.87,41.54,43.24,26.56,37,28,39.5,27.18,158.48-11.53,315.65,27.91Z" />
                                                            </clipPath>
                                                            <image id="e4269e85-c332-4306-b81f-f0c5c67476b3" width="768" height="1024"
                                                                xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                        </defs>
                                                        <path class="aace0445-6cc0-4439-87f7-981f55247dab" d="M178.14,161.67"
                                                            transform="translate(65 92)" />
                                                        <g class="a6a2bfa8-aff3-4024-a6b1-918cfe474121">
                                                            <use transform="scale(0.8)" xlink:href="#e4269e85-c332-4306-b81f-f0c5c67476b3" />
                                                        </g>
                                                        <path class="ac7568e5-ec11-4907-88fa-ad0b9f91c2b8"
                                                            d="M176.58,160.8l-.45.25c-7.53-2.16-34.62-8.88-53.61.62-22.25,11.12-100.11,55.62-100.11,66.74C22.41,228.41-29.74,72.5,37,28h0c6.2-1.43-2.17,13.55,21.41,43.84C75.42,93.67,109,123.46,176.58,160.8Z"
                                                            transform="translate(65 92)" />
                                                        <g class="b5c04f5b-f6dd-4e96-b4c1-59ff3664ddda">
                                                            <use transform="translate(80 -89) scale(0.8)"
                                                                xlink:href="#e4269e85-c332-4306-b81f-f0c5c67476b3" />
                                                        </g>
                                                        <path class="ac7568e5-ec11-4907-88fa-ad0b9f91c2b8"
                                                            d="M330.75,228.41c0-11.12-77.87-55.62-100.12-66.74-19-9.5-46.08-2.78-53.61-.62l-.44-.25c67.46-37.28,101-67,118-88.86,23-29.55,15.71-44.56,21-44l.51.09C382.9,72.5,330.75,228.41,330.75,228.41Z"
                                                            transform="translate(65 92)" />
                                                        <path class="aace0445-6cc0-4439-87f7-981f55247dab" d="M185.86,161.67"
                                                            transform="translate(65 92)" />
                                                        <g class="f159e6a0-79d4-447d-9485-1cd64827ef73">
                                                            <use transform="translate(11.96 -90.97) scale(0.8)"
                                                                xlink:href="#e4269e85-c332-4306-b81f-f0c5c67476b3" />
                                                        </g>
                                                        <path class="ac7568e5-ec11-4907-88fa-ad0b9f91c2b8"
                                                            d="M315.65,27.91c-5.32-.53,2,14.48-21,44-120.37-19.42-220.17-3-236.17-.11C34.87,41.54,43.24,26.56,37,28,39.5,27.18,158.48-11.53,315.65,27.91Z"
                                                            transform="translate(65 92)" />
                                                        <path class="aace0445-6cc0-4439-87f7-981f55247dab" d="M316,28l-.35-.09"
                                                            transform="translate(65 92)" />
                                                        <path class="b84bedc4-5b96-4981-bed0-e98c47e615c8"
                                                            d="M58.5,71.5s117-20,236,0c0,0-27,39-118,90C176.5,161.5,77.5,103.5,58.5,71.5Z"
                                                            transform="translate(65 92)" />
                                                    </svg>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>Cut Away</h6>
                                                </div>
                                            </div>
                                            <div class="col-6 p-1">
                                                <div class="drag CollarStyle-6 collars">
                                                    <svg id="adadc293-b60b-4b1e-90e8-4ac788aa7d17" data-name="Layer 1"
                                                        xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                        viewBox="50 80 350.31 300">
                                                        <defs>
                                                            <style>
                                                                .a49a437b-c3c7-4fa4-9226-7d6b19be48c2 {
                                                                    fill: none;
                                                                }

                                                                .a49a437b-c3c7-4fa4-9226-7d6b19be48c2,
                                                                .f9722db4-65f0-40c9-a8c1-1dd3845e10f7 {
                                                                    stroke: #000;
                                                                    stroke-miterlimit: 10;
                                                                }

                                                                .a4c346a2-b011-4a03-86ce-1ebc860385b2 {
                                                                    clip-path: url(#b16de671-e622-4ae7-90b7-12b812545461);
                                                                }

                                                                .f6d6c8ac-dd71-4cc7-a5b5-0ae5b18e7f4f {
                                                                    clip-path: url(#a5425e0c-8a0e-4966-bf89-32a7a11bed9c);
                                                                }

                                                                .f9722db4-65f0-40c9-a8c1-1dd3845e10f7 {
                                                                    fill: #fff;
                                                                }

                                                                .f56b5e0b-38fa-4ba9-89aa-4a9690b89dc6 {
                                                                    clip-path: url(#f9f55c6c-cd41-4ca5-a327-cb9c10b80d54);
                                                                }

                                                                .b5e3c8d9-f391-4169-8511-5eb6f24e0d70 {
                                                                    clip-path: url(#acd906a9-4c0b-43d0-b015-69f0fbf83cf4);
                                                                }
                                                            </style>
                                                            <clipPath id="b16de671-e622-4ae7-90b7-12b812545461" transform="translate(54 94)">
                                                                <path class="a49a437b-c3c7-4fa4-9226-7d6b19be48c2"
                                                                    d="M172.14,148.39S145.25,175.28,118.35,247c0,0-61-88.12-76.92-122.91a25.42,25.42,0,0,1-.36-20L73.53,22.88s3.13,21.7,23.93,52.35C112,96.66,135.2,122.57,172.14,148.39Z" />
                                                            </clipPath>
                                                            <clipPath id="a5425e0c-8a0e-4966-bf89-32a7a11bed9c" transform="translate(54 94)">
                                                                <path class="a49a437b-c3c7-4fa4-9226-7d6b19be48c2"
                                                                    d="M302.85,124.09C287,158.88,225.93,247,225.93,247c-26.9-71.72-53.79-98.61-53.79-98.61,36.93-25.82,60.15-51.73,74.68-73.16,20.79-30.65,23.93-52.35,23.93-52.35L303.2,104.1A25.42,25.42,0,0,1,302.85,124.09Z" />
                                                            </clipPath>
                                                            <clipPath id="f9f55c6c-cd41-4ca5-a327-cb9c10b80d54" transform="translate(54 94)">
                                                                <path class="a49a437b-c3c7-4fa4-9226-7d6b19be48c2"
                                                                    d="M270.75,22.88s-3.14,21.7-23.93,52.35c-59.71-28.32-149.36,0-149.36,0C76.66,44.58,73.53,22.88,73.53,22.88S172.14-21.94,270.75,22.88Z" />
                                                            </clipPath>
                                                            <clipPath id="acd906a9-4c0b-43d0-b015-69f0fbf83cf4" transform="translate(54 94)">
                                                                <path class="a49a437b-c3c7-4fa4-9226-7d6b19be48c2"
                                                                    d="M172.5,148.5s-16,17-23.29,32.28c0,0,24.43,10.28,45.86,0C195.07,180.78,182.5,159.5,172.5,148.5Z" />
                                                            </clipPath>
                                                            <image id="a8f3e643-1c7b-4b67-8c7e-dce2f742d63d" width="768" height="1024"
                                                                xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                        </defs>
                                                        <g class="a4c346a2-b011-4a03-86ce-1ebc860385b2">
                                                            <use transform="translate(0 24) scale(0.8)"
                                                                xlink:href="#a8f3e643-1c7b-4b67-8c7e-dce2f742d63d" />
                                                        </g>
                                                        <path class="a49a437b-c3c7-4fa4-9226-7d6b19be48c2"
                                                            d="M172.14,148.39S145.25,175.28,118.35,247c0,0-61-88.12-76.92-122.91a25.42,25.42,0,0,1-.36-20L73.53,22.88s3.13,21.7,23.93,52.35C112,96.66,135.2,122.57,172.14,148.39Z"
                                                            transform="translate(54 94)" />
                                                        <g class="f6d6c8ac-dd71-4cc7-a5b5-0ae5b18e7f4f">
                                                            <use transform="translate(48 -70) scale(0.8)"
                                                                xlink:href="#a8f3e643-1c7b-4b67-8c7e-dce2f742d63d" />
                                                        </g>
                                                        <path class="a49a437b-c3c7-4fa4-9226-7d6b19be48c2"
                                                            d="M302.85,124.09C287,158.88,225.93,247,225.93,247c-26.9-71.72-53.79-98.61-53.79-98.61,36.93-25.82,60.15-51.73,74.68-73.16,20.79-30.65,23.93-52.35,23.93-52.35L303.2,104.1A25.42,25.42,0,0,1,302.85,124.09Z"
                                                            transform="translate(54 94)" />
                                                        <path class="a49a437b-c3c7-4fa4-9226-7d6b19be48c2" d="M270.75,22.88"
                                                            transform="translate(54 94)" />
                                                        <path class="a49a437b-c3c7-4fa4-9226-7d6b19be48c2" d="M64.56,22.88"
                                                            transform="translate(54 94)" />
                                                        <path class="a49a437b-c3c7-4fa4-9226-7d6b19be48c2" d="M249.17,71.73"
                                                            transform="translate(54 94)" />
                                                        <path class="a49a437b-c3c7-4fa4-9226-7d6b19be48c2" d="M86.14,71.73"
                                                            transform="translate(54 94)" />
                                                        <path class="f9722db4-65f0-40c9-a8c1-1dd3845e10f7"
                                                            d="M246.82,75.23c-14.53,21.43-37.75,47.34-74.68,73.16C135.2,122.57,112,96.66,97.46,75.23,97.46,75.23,187.11,46.91,246.82,75.23Z"
                                                            transform="translate(54 94)" />
                                                        <g class="f56b5e0b-38fa-4ba9-89aa-4a9690b89dc6">
                                                            <use transform="translate(11 -94) scale(0.8)"
                                                                xlink:href="#a8f3e643-1c7b-4b67-8c7e-dce2f742d63d" />
                                                        </g>
                                                        <path class="a49a437b-c3c7-4fa4-9226-7d6b19be48c2"
                                                            d="M270.75,22.88s-3.14,21.7-23.93,52.35c-59.71-28.32-149.36,0-149.36,0C76.66,44.58,73.53,22.88,73.53,22.88S172.14-21.94,270.75,22.88Z"
                                                            transform="translate(54 94)" />
                                                        <circle class="f9722db4-65f0-40c9-a8c1-1dd3845e10f7 btnColorChange" cx="169.38" cy="298.25"
                                                            r="8.25" />
                                                        <circle class="f9722db4-65f0-40c9-a8c1-1dd3845e10f7 btnColorChange" cx="284.25" cy="298.25"
                                                            r="8.25" />
                                                        <g class="b5e3c8d9-f391-4169-8511-5eb6f24e0d70">
                                                            <image width="768" height="1024" transform="translate(54 17) scale(0.48)"
                                                                xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                        </g>
                                                        <path class="a49a437b-c3c7-4fa4-9226-7d6b19be48c2"
                                                            d="M172.5,148.5s-16,17-23.29,32.28c0,0,24.43,10.28,45.86,0C195.07,180.78,182.5,159.5,172.5,148.5Z"
                                                            transform="translate(54 94)" />
                                                        <circle class="f9722db4-65f0-40c9-a8c1-1dd3845e10f7 btnColorChange" cx="226.39" cy="264.47"
                                                            r="7.11" />
                                                    </svg>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>Bottom Down</h6>
                                                </div>
                                            </div>
                                            <%--<div class="col-6 p-1">
                                                <div class="drag CollarStyle-7 collars">
                                                    <svg id="e3ebec12-1418-414c-b2db-2373e79fa7ca" data-name="Layer 1"
                                                        xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                        viewBox="0 100 434.59 350">
                                                        <defs>
                                                            <style>
                                                                .be058d01-ff0c-45b3-88cf-58598200887f {
                                                                    fill: none;
                                                                }

                                                                .b3e1034f-62e5-4eb1-b69d-5fa5f0ebaf3f,
                                                                .be058d01-ff0c-45b3-88cf-58598200887f {
                                                                    stroke: #000;
                                                                    stroke-miterlimit: 10;
                                                                }

                                                                .fa38ee6b-cc3e-46f9-971b-0dff8ebbca04 {
                                                                    clip-path: url(#e20852f1-ee2a-444d-9cd0-e10b760b6ea0);
                                                                }

                                                                .b5166acb-870a-4bb5-a567-8a1bf48ddaab {
                                                                    clip-path: url(#e0f9adaf-749b-441f-b106-0f3f2b0d4f3e);
                                                                }

                                                                .b3e1034f-62e5-4eb1-b69d-5fa5f0ebaf3f {
                                                                    fill: #fff;
                                                                }

                                                                .bd15a1a2-ee5c-4298-863e-e39e081766e1 {
                                                                    clip-path: url(#b5ab94ae-f782-45b3-95d8-dcc849f2fcda);
                                                                }
                                                            </style>
                                                            <clipPath id="e20852f1-ee2a-444d-9cd0-e10b760b6ea0" transform="translate(37 147)">
                                                                <path class="be058d01-ff0c-45b3-88cf-58598200887f"
                                                                    d="M175.51,155c-15.45,0-45,28.15-65.79,50.27-13.49,14.32-23.31,26.11-23.31,26.11C77.74,227,66.12,205,54.57,177.81,35.15,132.12,15.91,71.89,11.15,56.73,14.74,66.27,23,75.77,34,84.9,80.42,123.28,175.51,155,175.51,155Z" />
                                                            </clipPath>
                                                            <clipPath id="e0f9adaf-749b-441f-b106-0f3f2b0d4f3e" transform="translate(37 147)">
                                                                <path class="be058d01-ff0c-45b3-88cf-58598200887f"
                                                                    d="M341,53.15v0a0,0,0,0,1,0,0v0s0,0,0,0h0l0,.11-.16.51c0,.1-.07.2-.1.31s-.05.15-.07.23l-.11.37c-.16.49-.35,1.1-.57,1.8a77265801279.63,77265801279.63,0,0,0,0,.12C336.29,66.27,328,75.77,317,84.9,215,26.8,34,84.9,34,84.9c-11-9.13-19.3-18.63-22.89-28.17l0-.12-.57-1.8c0-.13-.07-.26-.11-.37s0-.16-.07-.23-.07-.21-.1-.31a.31.31,0,0,1,0-.08l-.06-.17-.07-.25,0-.07a.08.08,0,0,0,0-.06v0a.25.25,0,0,1,0-.07v0S188.24-23.23,341,53.15Z" />
                                                            </clipPath>
                                                            <clipPath id="b5ab94ae-f782-45b3-95d8-dcc849f2fcda" transform="translate(37 147)">
                                                                <path class="be058d01-ff0c-45b3-88cf-58598200887f"
                                                                    d="M339.88,56.73c-4.76,15.16-24,75.39-43.42,121.08C284.9,205,273.29,227,264.62,231.36c0,0-9.82-11.79-23.31-26.11C220.5,183.13,191,155,175.51,155c0,0,95.1-31.7,141.48-70.08C328,75.77,336.29,66.27,339.88,56.73Z" />
                                                            </clipPath>
                                                            <image id="a8df0415-9165-4fed-bee1-ffd91bd9bb55" width="768" height="1024"
                                                                xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                        </defs>
                                                        <path class="be058d01-ff0c-45b3-88cf-58598200887f"
                                                            d="M11.11,56.61a29.52,29.52,0,0,1-1-3.28.08.08,0,0,0,0-.06.89.89,0,0,1,0,.13l.07.25.06.17a.31.31,0,0,0,0,.08c0,.1.06.2.1.31s0,.15.07.23.07.24.11.37Z"
                                                            transform="translate(37 147)" />
                                                        <g class="fa38ee6b-cc3e-46f9-971b-0dff8ebbca04">
                                                            <use transform="translate(0 38) scale(0.9)"
                                                                xlink:href="#a8df0415-9165-4fed-bee1-ffd91bd9bb55" />
                                                        </g>
                                                        <path class="be058d01-ff0c-45b3-88cf-58598200887f"
                                                            d="M175.51,155c-15.45,0-45,28.15-65.79,50.27-13.49,14.32-23.31,26.11-23.31,26.11C77.74,227,66.12,205,54.57,177.81,35.15,132.12,15.91,71.89,11.15,56.73,14.74,66.27,23,75.77,34,84.9,80.42,123.28,175.51,155,175.51,155Z"
                                                            transform="translate(37 147)" />
                                                        <g class="b5166acb-870a-4bb5-a567-8a1bf48ddaab">
                                                            <use transform="translate(-28 -147) scale(0.9)"
                                                                xlink:href="#a8df0415-9165-4fed-bee1-ffd91bd9bb55" />
                                                        </g>
                                                        <path class="be058d01-ff0c-45b3-88cf-58598200887f"
                                                            d="M341,53.15v0a0,0,0,0,1,0,0v0s0,0,0,0h0l0,.11-.16.51c0,.1-.07.2-.1.31s-.05.15-.07.23l-.11.37c-.16.49-.35,1.1-.57,1.8a77265801279.63,77265801279.63,0,0,0,0,.12C336.29,66.27,328,75.77,317,84.9,215,26.8,34,84.9,34,84.9c-11-9.13-19.3-18.63-22.89-28.17l0-.12-.57-1.8c0-.13-.07-.26-.11-.37s0-.16-.07-.23-.07-.21-.1-.31a.31.31,0,0,1,0-.08l-.06-.17-.07-.25,0-.07a.08.08,0,0,0,0-.06v0a.25.25,0,0,1,0-.07v0S188.24-23.23,341,53.15Z"
                                                            transform="translate(37 147)" />
                                                        <path class="b3e1034f-62e5-4eb1-b69d-5fa5f0ebaf3f"
                                                            d="M341,53.15v76.37s0,20.21-44.54,48.29c19.42-45.69,38.66-105.92,43.42-121.08a77265801279.63,77265801279.63,0,0,1,0-.12,28.36,28.36,0,0,0,1-3.33h0s0,0,0,0v0a0,0,0,0,0,0,0Z"
                                                            transform="translate(37 147)" />
                                                        <path class="b3e1034f-62e5-4eb1-b69d-5fa5f0ebaf3f"
                                                            d="M54.57,177.81C10,149.73,10,129.54,10,129.52V53.18a.25.25,0,0,0,0,.07v0a.08.08,0,0,1,0,.06,29.52,29.52,0,0,0,1,3.28l0,.12C15.91,71.89,35.15,132.12,54.57,177.81Z"
                                                            transform="translate(37 147)" />
                                                        <path class="b3e1034f-62e5-4eb1-b69d-5fa5f0ebaf3f"
                                                            d="M317,84.9C270.61,123.28,175.51,155,175.51,155S80.42,123.28,34,84.9C34,84.9,215,26.8,317,84.9Z"
                                                            transform="translate(37 147)" />
                                                        <g class="bd15a1a2-ee5c-4298-863e-e39e081766e1">
                                                            <use transform="translate(-27.66 -105.19) scale(0.9)"
                                                                xlink:href="#a8df0415-9165-4fed-bee1-ffd91bd9bb55" />
                                                        </g>
                                                        <path class="be058d01-ff0c-45b3-88cf-58598200887f"
                                                            d="M339.88,56.73c-4.76,15.16-24,75.39-43.42,121.08C284.9,205,273.29,227,264.62,231.36c0,0-9.82-11.79-23.31-26.11C220.5,183.13,191,155,175.51,155c0,0,95.1-31.7,141.48-70.08C328,75.77,336.29,66.27,339.88,56.73Z"
                                                            transform="translate(37 147)" />
                                                        <path class="be058d01-ff0c-45b3-88cf-58598200887f"
                                                            d="M341,53.28a28.36,28.36,0,0,1-1,3.33c.22-.7.41-1.31.57-1.8l.11-.37c0-.08,0-.16.07-.23s.07-.21.1-.31C340.86,53.61,340.92,53.4,341,53.28Z"
                                                            transform="translate(37 147)" />
                                                        <path class="be058d01-ff0c-45b3-88cf-58598200887f" d="M341,53.15"
                                                            transform="translate(37 147)" />
                                                        <path class="b3e1034f-62e5-4eb1-b69d-5fa5f0ebaf3f"
                                                            d="M175.51,155c-15.45,0-45,28.15-65.79,50.27,0,0,57.36,37.54,131.59,0C220.5,183.13,191,155,175.51,155Zm0,50.92a12.73,12.73,0,1,1,12.73-12.73A12.73,12.73,0,0,1,175.51,205.9Z"
                                                            transform="translate(37 147)" />
                                                        <circle class="b3e1034f-62e5-4eb1-b69d-5fa5f0ebaf3f btnColorChange" cx="212.51" cy="340.17" r="12.73" />
                                                    </svg>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>Wing or Tuxedo</h6>
                                                </div>
                                            </div>--%>
                                            <%--<div class="col-6 p-1">
                                                <div class="drag CollarStyle-8 collars">
                                                    <svg id="ac52dfb5-bb57-4858-b0fa-7f2f4d77def3" data-name="Layer 1"
                                                        xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                        viewBox="35 50 350.31 300">
                                                        <defs>
                                                            <style>
                                                                .facc5246-64a7-4f27-b481-1ea1487cf286 {
                                                                    fill: none;
                                                                }

                                                                .e5a91d89-fe78-4166-bcb4-725dec68d2a8,
                                                                .facc5246-64a7-4f27-b481-1ea1487cf286 {
                                                                    stroke: #000;
                                                                    stroke-miterlimit: 10;
                                                                }

                                                                .a9893f1a-096c-4a68-b78c-bde0afccee1d {
                                                                    clip-path: url(#aef4bcbf-19f4-48ec-af3f-b0320d13256d);
                                                                }

                                                                .e0794325-474c-4ef3-afd7-8bbf9344875b {
                                                                    clip-path: url(#b34cd8e2-f0e4-4385-b94c-ee213d72c489);
                                                                }

                                                                .e5a91d89-fe78-4166-bcb4-725dec68d2a8 {
                                                                    fill: #fff;
                                                                }

                                                                .a17284f1-699b-4c16-94c5-782083b53e4e {
                                                                    clip-path: url(#e25f8a41-f412-4d99-bf38-6232a9257578);
                                                                }
                                                            </style>
                                                            <clipPath id="aef4bcbf-19f4-48ec-af3f-b0320d13256d" transform="translate(33.29 76.17)">
                                                                <path class="facc5246-64a7-4f27-b481-1ea1487cf286"
                                                                    d="M174.69,146.75S150,171.48,125.22,237.44c0,0-56.15-81-70.74-113A23.35,23.35,0,0,1,54.15,106L84,31.32s2.88,20,22,48.15C119.37,99.18,140.72,123,174.69,146.75Z" />
                                                            </clipPath>
                                                            <clipPath id="b34cd8e2-f0e4-4385-b94c-ee213d72c489" transform="translate(33.29 76.17)">
                                                                <path class="facc5246-64a7-4f27-b481-1ea1487cf286"
                                                                    d="M294.9,124.41c-14.59,32-70.74,113-70.74,113-24.74-66-49.47-90.69-49.47-90.69,34-23.75,55.32-47.57,68.68-67.28,19.13-28.2,22-48.15,22-48.15L295.23,106A23.35,23.35,0,0,1,294.9,124.41Z" />
                                                            </clipPath>
                                                            <clipPath id="e25f8a41-f412-4d99-bf38-6232a9257578" transform="translate(33.29 76.17)">
                                                                <path class="facc5246-64a7-4f27-b481-1ea1487cf286"
                                                                    d="M265.38,31.32s-2.88,20-22,48.15c-54.91-26-137.36,0-137.36,0C86.88,51.27,84,31.32,84,31.32S174.69-9.9,265.38,31.32Z" />
                                                            </clipPath>
                                                            <image id="b00fb07c-8541-4ce5-b128-831dd0a02f5b" width="768" height="1024"
                                                                xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                        </defs>
                                                        <g class="a9893f1a-096c-4a68-b78c-bde0afccee1d">
                                                            <use transform="translate(0 22.07) scale(0.9)"
                                                                xlink:href="#b00fb07c-8541-4ce5-b128-831dd0a02f5b" />
                                                        </g>
                                                        <path class="facc5246-64a7-4f27-b481-1ea1487cf286"
                                                            d="M174.69,146.75S150,171.48,125.22,237.44c0,0-56.15-81-70.74-113A23.35,23.35,0,0,1,54.15,106L84,31.32s2.88,20,22,48.15C119.37,99.18,140.72,123,174.69,146.75Z"
                                                            transform="translate(33.29 76.17)" />
                                                        <g class="e0794325-474c-4ef3-afd7-8bbf9344875b">
                                                            <use transform="translate(60.52 -54.1) scale(0.9)"
                                                                xlink:href="#b00fb07c-8541-4ce5-b128-831dd0a02f5b" />
                                                        </g>
                                                        <path class="facc5246-64a7-4f27-b481-1ea1487cf286"
                                                            d="M294.9,124.41c-14.59,32-70.74,113-70.74,113-24.74-66-49.47-90.69-49.47-90.69,34-23.75,55.32-47.57,68.68-67.28,19.13-28.2,22-48.15,22-48.15L295.23,106A23.35,23.35,0,0,1,294.9,124.41Z"
                                                            transform="translate(33.29 76.17)" />
                                                        <path class="facc5246-64a7-4f27-b481-1ea1487cf286" d="M265.38,31.32"
                                                            transform="translate(33.29 76.17)" />
                                                        <path class="facc5246-64a7-4f27-b481-1ea1487cf286" d="M75.75,31.32"
                                                            transform="translate(33.29 76.17)" />
                                                        <path class="facc5246-64a7-4f27-b481-1ea1487cf286" d="M245.54,76.25"
                                                            transform="translate(33.29 76.17)" />
                                                        <path class="facc5246-64a7-4f27-b481-1ea1487cf286" d="M95.59,76.25"
                                                            transform="translate(33.29 76.17)" />
                                                        <path class="e5a91d89-fe78-4166-bcb4-725dec68d2a8"
                                                            d="M243.37,79.47C230,99.18,208.66,123,174.69,146.75,140.72,123,119.37,99.18,106,79.47,106,79.47,188.46,53.42,243.37,79.47Z"
                                                            transform="translate(33.29 76.17)" />
                                                        <g class="a17284f1-699b-4c16-94c5-782083b53e4e">
                                                            <use transform="translate(26.49 -76.17) scale(0.9)"
                                                                xlink:href="#b00fb07c-8541-4ce5-b128-831dd0a02f5b" />
                                                        </g>
                                                        <path class="facc5246-64a7-4f27-b481-1ea1487cf286"
                                                            d="M265.38,31.32s-2.88,20-22,48.15c-54.91-26-137.36,0-137.36,0C86.88,51.27,84,31.32,84,31.32S174.69-9.9,265.38,31.32Z"
                                                            transform="translate(33.29 76.17)" />
                                                    </svg>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>Narrow Bottom</h6>
                                                </div>
                                            </div>--%>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header p-2" id="headingTwo">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left collapsed p-0" type="button" data-toggle="collapse"
                                            data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            Cuff Style
                      <img src="/Assets/Images/cuff.png" class="float-right" width="25" alt="">
                                        </button>
                                    </h2>
                                </div>
                                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                    <div class="card-body">

                                        <!-- Cuff -->
                                        <div class="row m-0">
                                            <div class="col-6 p-1">
                                                <div class="drag CuffDesign1 cuffs">
                                                    <div class="m-0 CuffSideFlex">
                                                        <div class="CuffSides">
                                                            <svg id="abefa9f2-40f7-4ce2-ae6b-0e701a464b6d" data-name="CuffDesign1"
                                                                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                viewBox="0 80 336.5 280">
                                                                <defs>
                                                                    <style>
                                                                        .ba385ae4-76ef-45bb-8c01-790cd97fdf25 {
                                                                            fill: none;
                                                                        }

                                                                        .b57dcf9b-0beb-43d4-8505-c38b0c6cf0e1,
                                                                        .ba385ae4-76ef-45bb-8c01-790cd97fdf25 {
                                                                            stroke: #000;
                                                                            stroke-width: 1%;
                                                                            stroke-miterlimit: 10;
                                                                        }

                                                                        .e3c77383-03ca-4ba0-bd07-e77f9104a655 {
                                                                            clip-path: url(#bed51af4-8cb2-4e88-ae05-bf8bdf750e33);
                                                                        }

                                                                        .b57dcf9b-0beb-43d4-8505-c38b0c6cf0e1 {
                                                                            fill: #fff;
                                                                        }
                                                                    </style>
                                                                    <clipPath id="bed51af4-8cb2-4e88-ae05-bf8bdf750e33" transform="translate(-7 22)">
                                                                        <path id="f443c794-177d-4b1f-8ff8-e59fadfe07f3" data-name="CuffMainAreaStroke"
                                                                            class="ba385ae4-76ef-45bb-8c01-790cd97fdf25"
                                                                            d="M296.11,110.45s-109.42-78.16-281.37,0V266.76s140.68-78.16,281.37,0c0,0,31.26,15.63,46.89,0V110.45S327.37,126.08,296.11,110.45Zm-15.64,101.6a23.45,23.45,0,1,1,23.45-23.45A23.41,23.41,0,0,1,280.47,212.05Z" />
                                                                    </clipPath>
                                                                </defs>
                                                                <g id="b907d82e-fac6-4e17-8880-502ff1ab38b4" data-name="CuffMainArea">
                                                                    <g class="e3c77383-03ca-4ba0-bd07-e77f9104a655">
                                                                        <image id="ac4a540b-77ba-4476-bb1d-43548abaf1cc" data-name="CuffClipImage"
                                                                            width="768" height="1024" transform="scale(1.6)" xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                                    </g>
                                                                    <path id="e7574457-3e3d-4637-b984-e0b27eaada53" data-name="CuffMainAreaStroke"
                                                                        class="ba385ae4-76ef-45bb-8c01-790cd97fdf25"
                                                                        d="M296.11,110.45s-109.42-78.16-281.37,0V266.76s140.68-78.16,281.37,0c0,0,31.26,15.63,46.89,0V110.45S327.37,126.08,296.11,110.45Zm-15.64,101.6a23.45,23.45,0,1,1,23.45-23.45A23.41,23.41,0,0,1,280.47,212.05Z"
                                                                        transform="translate(-7 22)" />
                                                                </g>
                                                                <path id="b8e3499d-d0d0-4b58-a78d-048339a59602" data-name="CuffInner"
                                                                    class="ba385ae4-76ef-45bb-8c01-790cd97fdf25"
                                                                    d="M343,266.76c0,15.63-46.89,15.63-46.89,15.63C92.9,360.55,14.74,266.76,14.74,266.76s140.68-78.16,281.37,0C296.11,266.76,327.37,282.39,343,266.76Z"
                                                                    transform="translate(-7 22)" />
                                                                <circle id="a1873dcc-d25f-4223-ac30-d7d2a18246db" data-name="CuffBtn"
                                                                    class="b57dcf9b-0beb-43d4-8505-c38b0c6cf0e1 btnColorChange" cx="273.47" cy="210.6" r="23.45" />
                                                            </svg>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>French</h6>
                                                </div>
                                            </div>
                                            <!-- Cuff -->
                                            <!-- Cuff -->
                                            <div class="col-6 p-1">
                                                <div class="drag CuffDesign2 cuffs">
                                                    <div class="m-0 CuffSideFlex">
                                                        <div class="CuffSides">
                                                            <svg id="CuffDesign2" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg"
                                                                xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="50 120 390.71 299.28">
                                                                <defs>
                                                                    <style>
                                                                        .CuffDesign2-cls-1,
                                                                        .CuffDesign2-cls-3 {
                                                                            fill: none;
                                                                        }

                                                                        .CuffDesign2-cls-1,
                                                                        .CuffDesign2-cls-3,
                                                                        .CuffDesign2-cls-4 {
                                                                            stroke: #000;
                                                                            stroke-width: 1%;
                                                                            stroke-miterlimit: 10;
                                                                        }

                                                                        .CuffDesign2-cls-2 {
                                                                            clip-path: url(#CuffDesign2-clip-path);
                                                                        }

                                                                        .CuffDesign2-cls-3 {
                                                                            stroke-width: 2px;
                                                                        }

                                                                        .CuffDesign2-cls-4 {
                                                                            fill: #fff;
                                                                        }
                                                                    </style>
                                                                    <clipPath id="CuffDesign2-clip-path" transform="translate(67.28 151.83)">
                                                                        <path class="CuffDesign2-cls-1"
                                                                            d="M3.87,210s218.81-46.88,343.85,0V38S191.43-24.49,3.87,38Z" />
                                                                    </clipPath>
                                                                </defs>
                                                                <g class="CuffDesign2-cls-2">
                                                                    <image width="768" height="1024" transform="translate(0 0) scale(1.8)"
                                                                        xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                                </g>
                                                                <path class="CuffDesign2-cls-1"
                                                                    d="M3.87,210s218.81-46.88,343.85,0V38S191.43-24.49,3.87,38Z"
                                                                    transform="translate(67.28 151.83)" />
                                                                <path id="CuffLine" class="CuffDesign2-cls-3" d="M156,190.49s66.7,3.83,66.7-43.05V11.11"
                                                                    transform="translate(67.28 151.83)" />
                                                                <circle id="CuffBtnCircle" class="CuffDesign2-cls-4 btnColorChange" cx="219.63" cy="260.19"
                                                                    r="23.44" />
                                                                <path id="CuffStyle2Path" class="CuffDesign2-cls-1"
                                                                    d="M343.22,208.33c12,4,0,12,0,12-140,42-339,0-339,0s-4-4,0-10"
                                                                    transform="translate(67.28 151.83)" />
                                                            </svg>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>One Button</h6>
                                                </div>
                                            </div>
                                            <!-- Cuff -->
                                            <!-- Cuff -->
                                            <div class="col-6 p-1">
                                                <div class="drag CuffDesign3 cuffs">
                                                    <div class="m-0 CuffSideFlex">
                                                        <div class="CuffSides">
                                                            <svg id="a07cbf60-c09c-4ca1-a100-2d665e570b62" data-name="CuffLayer"
                                                                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                viewBox="210 378 400 300">
                                                                <defs>
                                                                    <style>
                                                                        .ac81e2b8-9de2-4191-a3ff-3504fd8b5a8a,
                                                                        .b84a15d3-d3f8-434b-8614-46f2220f31e1 {
                                                                            fill: none;
                                                                        }

                                                                        .aaaca85c-3978-45fc-a664-24249faed7d0,
                                                                        .ac81e2b8-9de2-4191-a3ff-3504fd8b5a8a,
                                                                        .b84a15d3-d3f8-434b-8614-46f2220f31e1 {
                                                                            stroke: #000;
                                                                            stroke-width: 1%;
                                                                            stroke-miterlimit: 10;
                                                                        }

                                                                        .ece4ae24-b414-4e39-8073-65aa17d7f2db {
                                                                            clip-path: url(#ee1fa500-8ccf-44b6-9b51-b35c3649dc58);
                                                                        }

                                                                        .ac81e2b8-9de2-4191-a3ff-3504fd8b5a8a {
                                                                            stroke-width: 2px;
                                                                        }

                                                                        .aaaca85c-3978-45fc-a664-24249faed7d0 {
                                                                            fill: #fff;
                                                                        }
                                                                    </style>
                                                                    <clipPath id="ee1fa500-8ccf-44b6-9b51-b35c3649dc58"
                                                                        transform="translate(235.49 408.97)">
                                                                        <path id="e9d49673-fce9-42ea-891a-5ddc13aaa59f" data-name="MainClippedStroke-3"
                                                                            class="b84a15d3-d3f8-434b-8614-46f2220f31e1"
                                                                            d="M2.8,204.75s217.76-46.67,342.2,0V33.65s-155.55-62.22-342.2,0Z" />
                                                                    </clipPath>
                                                                </defs>
                                                                <g id="bd4a892d-6808-4dbd-8c9d-6f5aff052f1c" data-name="MainClippedGroup-3">
                                                                    <g id="ea4aa4df-92bf-4fbe-96ea-d32754ed2e21" data-name="MainClipGroup3">
                                                                        <g class="ece4ae24-b414-4e39-8073-65aa17d7f2db">
                                                                            <image id="b2b7db6a-b05d-4ebf-9265-67608dfcd4f4" data-name="MainClippedCuffImag-3"
                                                                                width="768" height="1024" transform="translate(0 0) scale(2.2)"
                                                                                xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                                        </g>
                                                                        <path id="bf85d4ae-af31-4758-8d08-4d2da2aed5f7" data-name="MainClippedStroke-3"
                                                                            class="b84a15d3-d3f8-434b-8614-46f2220f31e1"
                                                                            d="M2.8,204.75s217.76-46.67,342.2,0V33.65s-155.55-62.22-342.2,0Z"
                                                                            transform="translate(235.49 408.97)" />
                                                                    </g>
                                                                </g>
                                                                <g id="a52bcb4d-0900-492c-8648-31fe168c6552" data-name="MidOutline">
                                                                    <path class="ac81e2b8-9de2-4191-a3ff-3504fd8b5a8a"
                                                                        d="M154.18,185.38s66.38,3.81,66.38-42.85V6.86"
                                                                        transform="translate(235.49 408.97)" />
                                                                </g>
                                                                <g id="bc30538f-fcc9-467e-b557-008562ad3bd3" data-name="Btns2Group">
                                                                    <circle class="aaaca85c-3978-45fc-a664-24249faed7d0 btnColorChange" cx="386.95" cy="465.95"
                                                                        r="23.33" />
                                                                    <circle class="aaaca85c-3978-45fc-a664-24249faed7d0 btnColorChange" cx="386.95" cy="544.62"
                                                                        r="23.33" />
                                                                </g>
                                                                <g id="be069e6c-d4b9-4840-966f-c52084a25c7c" data-name="bottomOutline">
                                                                    <path class="b84a15d3-d3f8-434b-8614-46f2220f31e1"
                                                                        d="M2.5,204.5s-3,7,14,11c0,0,189,29,305,0,0,0,19-5,24-11"
                                                                        transform="translate(235.49 408.97)" />
                                                                </g>
                                                            </svg>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="drag_name">
                                                    <h6>Two Button Round</h6>
                                                </div>
                                            </div>
                                            <!-- Cuff -->
                                            <!-- Cuff -->
                                            <%--<div class="col-6 p-1">
                                                <div class="drag CuffDesign4 cuffs">
                                                    <div class="m-0 CuffSideFlex">
                                                        <div class="CuffSides">
                                                            <svg id="a19b1c6d-3079-44f9-ada8-eb9c35c116d9" data-name="CuffDesign4"
                                                                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                viewBox="220 370 350 300">
                                                                <defs>
                                                                    <style>
                                                                        .bc8ec499-2394-46a4-818a-b5a9cc2d69cb {
                                                                            fill: none;
                                                                        }

                                                                        .bc8ec499-2394-46a4-818a-b5a9cc2d69cb,
                                                                        .eff6d7fa-223f-4011-aabc-c4bf14b5d3fc {
                                                                            stroke: #000;
                                                                            stroke-width: 1%;
                                                                            stroke-miterlimit: 10;
                                                                        }

                                                                        .a6bf3e73-cb00-47e6-94cb-7113744aeaa5 {
                                                                            clip-path: url(#f6b9d5a2-2bba-49a2-aa7b-aef15ce72b52);
                                                                        }

                                                                        .eff6d7fa-223f-4011-aabc-c4bf14b5d3fc {
                                                                            fill: #fff;
                                                                        }
                                                                    </style>
                                                                    <clipPath id="f6b9d5a2-2bba-49a2-aa7b-aef15ce72b52"
                                                                        transform="translate(223.06 395.16)">
                                                                        <path class="bc8ec499-2394-46a4-818a-b5a9cc2d69cb"
                                                                            d="M27.81,222.07s187.39-51.07,294.47,0V34.82s-133.85-68.09-294.47,0Z" />
                                                                    </clipPath>
                                                                </defs>
                                                                <g id="f0cca018-fa13-475c-911d-e619523e35fe" data-name="MainClippedImageCuffDesign-4">
                                                                    <g class="a6bf3e73-cb00-47e6-94cb-7113744aeaa5">
                                                                        <image width="768" height="1024" transform="scale(1.8)"
                                                                            xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                                    </g>
                                                                    <path class="bc8ec499-2394-46a4-818a-b5a9cc2d69cb"
                                                                        d="M27.81,222.07s187.39-51.07,294.47,0V34.82s-133.85-68.09-294.47,0Z"
                                                                        transform="translate(223.06 395.16)" />
                                                                </g>
                                                                <path id="a26684a3-2571-451c-9fe9-638475fce910" data-name="Outline"
                                                                    class="bc8ec499-2394-46a4-818a-b5a9cc2d69cb"
                                                                    d="M162.08,199.25s57.12,4.16,57.12-46.71V4.66" transform="translate(223.06 395.16)" />
                                                                <g id="e808a996-6d7a-4e0c-bae3-85479b27629e" data-name="BtnsCuffDesign4Group">
                                                                    <circle class="eff6d7fa-223f-4011-aabc-c4bf14b5d3fc btnColorChange" cx="402.11" cy="434.53"
                                                                        r="20.08" />
                                                                    <circle class="eff6d7fa-223f-4011-aabc-c4bf14b5d3fc btnColorChange" cx="402.11" cy="555.77"
                                                                        r="20.08" />
                                                                    <circle class="eff6d7fa-223f-4011-aabc-c4bf14b5d3fc btnColorChange" cx="402.11" cy="491.42"
                                                                        r="20.08" />
                                                                </g>
                                                                <path id="fbd9804a-65fa-40ef-9c75-8feb5a00a8a4" data-name="BottomOutline"
                                                                    class="bc8ec499-2394-46a4-818a-b5a9cc2d69cb" d="M27.5,221.8s99.73,40.95,295,0"
                                                                    transform="translate(223.06 395.16)" />
                                                            </svg>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>Three Button</h6>
                                                </div>
                                            </div>--%>
                                            <!-- Cuff -->
                                            <!-- Cuff -->
                                            <div class="col-6 p-1">
                                                <div class="drag CuffDesign5 cuffs">
                                                    <div class="m-0 CuffSideFlex">
                                                        <div class="CuffSides">
                                                            <svg id="f4661585-e9df-4378-b974-654bed22b3e9" data-name="Layer 1"
                                                                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                viewBox="150 400 371 270">
                                                                <defs>
                                                                    <style>
                                                                        .b99ec69c-f3c4-47f5-8ccc-a9480e6735fd,
                                                                        .e84359a2-5074-4580-9af3-f1157063ce84 {
                                                                            fill: none;
                                                                        }

                                                                        .a32dd7f0-c267-4d26-9d62-b444819f2b72,
                                                                        .b99ec69c-f3c4-47f5-8ccc-a9480e6735fd,
                                                                        .e84359a2-5074-4580-9af3-f1157063ce84 {
                                                                            stroke: #000;
                                                                            stroke-width: 1%;
                                                                            stroke-miterlimit: 10;
                                                                        }

                                                                        .b7048ed0-f807-4b0d-9aff-6c3d41d8daad {
                                                                            clip-path: url(#b8cf0541-3d21-443e-aec8-07b4cfd96095);
                                                                        }

                                                                        .b99ec69c-f3c4-47f5-8ccc-a9480e6735fd {
                                                                            stroke-width: 2px;
                                                                        }

                                                                        .a32dd7f0-c267-4d26-9d62-b444819f2b72 {
                                                                            fill: #fff;
                                                                        }
                                                                    </style>
                                                                    <clipPath id="b8cf0541-3d21-443e-aec8-07b4cfd96095"
                                                                        transform="translate(158.4 407.3)">
                                                                        <path class="e84359a2-5074-4580-9af3-f1157063ce84"
                                                                            d="M330.5,33.3V190.7c-33.2-12.4-73.6-17.6-114.2-18.7L195,146.5c-22.8,13.4-39.3,22.5-47.6,26.9A909.7,909.7,0,0,0,15.6,191.7V33.3A500.8,500.8,0,0,1,216,9.7C285.7,15.2,330.5,33.3,330.5,33.3Z" />
                                                                    </clipPath>
                                                                </defs>
                                                                <g class="b7048ed0-f807-4b0d-9aff-6c3d41d8daad">
                                                                    <image width="768" height="1024" transform="translate(0 0) scale(1.8)"
                                                                        xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                                </g>
                                                                <path class="e84359a2-5074-4580-9af3-f1157063ce84"
                                                                    d="M330.5,33.3V190.7c-33.2-12.4-73.6-17.6-114.2-18.7L195,146.5c-22.8,13.4-39.3,22.5-47.6,26.9A909.7,909.7,0,0,0,15.6,191.7V33.3A500.8,500.8,0,0,1,216,9.7C285.7,15.2,330.5,33.3,330.5,33.3Z"
                                                                    transform="translate(158.4 407.3)" />
                                                                <path class="b99ec69c-f3c4-47f5-8ccc-a9480e6735fd" d="M216,8.7V133.5l-21,13"
                                                                    transform="translate(158.4 407.3)" />
                                                                <path class="e84359a2-5074-4580-9af3-f1157063ce84" d="M147.4,173.4"
                                                                    transform="translate(158.4 407.3)" />
                                                                <circle class="a32dd7f0-c267-4d26-9d62-b444819f2b72 btnColorChange" cx="309.9" cy="505.1" r="21.5" />
                                                                <path class="e84359a2-5074-4580-9af3-f1157063ce84" d="M195,146.5"
                                                                    transform="translate(158.4 407.3)" />
                                                                <path class="a32dd7f0-c267-4d26-9d62-b444819f2b72"
                                                                    d="M330.5,191.5c-183,67-315,0-315,0,23-9,132-18,132-18l47-27,22,25C283.5,172.5,330.5,191.5,330.5,191.5Z"
                                                                    transform="translate(158.4 407.3)" />
                                                            </svg>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>One Button Cut</h6>
                                                </div>
                                            </div>
                                            <!-- Cuff -->
                                            <!-- Cuff -->
                                            <div class="col-6 p-1">
                                                <div class="drag CuffDesign6 cuffs">
                                                    <div class="m-0 CuffSideFlex">
                                                        <div class="CuffSides">
                                                            <svg id="adc8a826-a73d-46ae-b74f-07dfff5a7a38" data-name="Layer 1"
                                                                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                viewBox="150 400 360 250">
                                                                <defs>
                                                                    <style>
                                                                        .a67517fa-77df-474a-8872-5774c0b971d7,
                                                                        .b36715f5-376c-4f04-aece-37397abf0c66 {
                                                                            fill: none;
                                                                        }

                                                                        .a67517fa-77df-474a-8872-5774c0b971d7,
                                                                        .af1bb800-cd30-484a-95f7-2a98dd0633eb,
                                                                        .b36715f5-376c-4f04-aece-37397abf0c66 {
                                                                            stroke: #000;
                                                                            stroke-width: 1%;
                                                                            stroke-miterlimit: 10;
                                                                        }

                                                                        .b709450e-cf50-4d0a-bf0b-726ab2fb3034 {
                                                                            clip-path: url(#a24037a9-c143-48c7-971c-f2b80736290d);
                                                                        }

                                                                        .a67517fa-77df-474a-8872-5774c0b971d7 {
                                                                            stroke-width: 2px;
                                                                        }

                                                                        .af1bb800-cd30-484a-95f7-2a98dd0633eb {
                                                                            fill: #fff;
                                                                        }
                                                                    </style>
                                                                    <clipPath id="a24037a9-c143-48c7-971c-f2b80736290d"
                                                                        transform="translate(156.81 397.14)">
                                                                        <path class="b36715f5-376c-4f04-aece-37397abf0c66"
                                                                            d="M332,43.47V200.9c-33.21-12.45-73.57-17.61-114.21-18.75L196.5,156.67c-22.75,13.46-39.21,22.47-47.51,26.91A907.94,907.94,0,0,0,17.11,201.87l.07-158.4A501.14,501.14,0,0,1,217.54,19.85C287.24,25.44,332,43.47,332,43.47Z" />
                                                                    </clipPath>
                                                                </defs>
                                                                <g class="b709450e-cf50-4d0a-bf0b-726ab2fb3034">
                                                                    <image width="768" height="1024" transform="translate(0) scale(1.8)"
                                                                        xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                                </g>
                                                                <path class="b36715f5-376c-4f04-aece-37397abf0c66"
                                                                    d="M332,43.47V200.9c-33.21-12.45-73.57-17.61-114.21-18.75L196.5,156.67c-22.75,13.46-39.21,22.47-47.51,26.91A907.94,907.94,0,0,0,17.11,201.87l.07-158.4A501.14,501.14,0,0,1,217.54,19.85C287.24,25.44,332,43.47,332,43.47Z"
                                                                    transform="translate(156.81 397.14)" />
                                                                <path class="a67517fa-77df-474a-8872-5774c0b971d7"
                                                                    d="M217.54,18.85v124.8c-7.44,4.72-14.6,9-21,13"
                                                                    transform="translate(156.81 397.14)" />
                                                                <path class="b36715f5-376c-4f04-aece-37397abf0c66" d="M149,183.58"
                                                                    transform="translate(156.81 397.14)" />
                                                                <circle class="af1bb800-cd30-484a-95f7-2a98dd0633eb btnColorChange" cx="319.92" cy="466.07"
                                                                    r="21.47" />
                                                                <circle class="af1bb800-cd30-484a-95f7-2a98dd0633eb btnColorChange" cx="319.92" cy="519.07"
                                                                    r="21.47" />
                                                                <path class="b36715f5-376c-4f04-aece-37397abf0c66" d="M196.5,156.67"
                                                                    transform="translate(156.81 397.14)" />
                                                                <path class="af1bb800-cd30-484a-95f7-2a98dd0633eb"
                                                                    d="M332.05,201.69c-183,67-315,0-315,0,23-9,132-18,132-18l47-27,22,25C285.05,182.69,332.05,201.69,332.05,201.69Z"
                                                                    transform="translate(156.81 397.14)" />
                                                            </svg>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>Two Button Cut</h6>
                                                </div>
                                            </div>
                                            <!-- Cuff -->
                                            <!-- Cuff -->
                                            <div class="col-6 p-1">
                                                <div class="drag CuffDesign7 cuffs">
                                                    <div class="m-0 CuffSideFlex">
                                                        <div class="CuffSides">
                                                            <svg id="ad4df73d-9f1c-4ba5-ac60-b332c57696b5" data-name="Layer 1"
                                                                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                viewBox="230 390 300 260">
                                                                <defs>
                                                                    <style>
                                                                        .a349d5d0-cdaa-4c1e-97b4-2a145d1a4da9 {
                                                                            fill: none;
                                                                        }

                                                                        .a349d5d0-cdaa-4c1e-97b4-2a145d1a4da9,
                                                                        .a5ad69c8-f616-414f-a3ff-3d670b37b50d {
                                                                            stroke: #000;
                                                                            stroke-width: 1%;
                                                                            stroke-miterlimit: 10;
                                                                        }

                                                                        .a539640c-e4cf-4bfd-8a01-a62ca6ac1b23 {
                                                                            clip-path: url(#e3642290-ba8f-48eb-bd70-d41ad47aa983);
                                                                        }

                                                                        .a5ad69c8-f616-414f-a3ff-3d670b37b50d {
                                                                            fill: #fff;
                                                                        }
                                                                    </style>
                                                                    <clipPath id="e3642290-ba8f-48eb-bd70-d41ad47aa983"
                                                                        transform="translate(208.31 389.69)">
                                                                        <path class="a349d5d0-cdaa-4c1e-97b4-2a145d1a4da9"
                                                                            d="M305.82,38.94V212.87S230,206,175.87,171.5c-16.53,14-31.56,16.52-31.56,16.52-62.12,0-99.39,24.85-99.39,24.85V38.94C116,11.61,175,8.38,218.85,13.34,274.64,19.43,305.82,38.94,305.82,38.94Z" />
                                                                    </clipPath>
                                                                </defs>
                                                                <g class="a539640c-e4cf-4bfd-8a01-a62ca6ac1b23">
                                                                    <image width="768" height="1024" transform="scale(1.8)"
                                                                        xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                                </g>
                                                                <path class="a349d5d0-cdaa-4c1e-97b4-2a145d1a4da9"
                                                                    d="M305.82,38.94V212.87S230,206,175.87,171.5c-16.53,14-31.56,16.52-31.56,16.52-62.12,0-99.39,24.85-99.39,24.85V38.94C116,11.61,175,8.38,218.85,13.34,274.64,19.43,305.82,38.94,305.82,38.94Z"
                                                                    transform="translate(208.31 389.69)" />
                                                                <path class="a5ad69c8-f616-414f-a3ff-3d670b37b50d"
                                                                    d="M305.82,212.87c-136.66,74.54-260.9,0-260.9,0S82.19,188,144.31,188c0,0,15-2.48,31.56-16.52C230,206,305.82,212.87,305.82,212.87Z"
                                                                    transform="translate(208.31 389.69)" />
                                                                <path class="a349d5d0-cdaa-4c1e-97b4-2a145d1a4da9"
                                                                    d="M194,11V122.18a73,73,0,0,1-9.51,36.48c-7.87,13.69-22,27.87-47,29.84"
                                                                    transform="translate(208.31 389.69)" />
                                                                <circle class="a5ad69c8-f616-414f-a3ff-3d670b37b50d btnColorChange" cx="358.83" cy="447.27"
                                                                    r="18.64" />
                                                            </svg>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>Large Rounded</h6>
                                                </div>
                                            </div>
                                            <!-- Cuff -->
                                            <!-- Cuff -->
                                            <div class="col-6 p-1">
                                                <div class="drag CuffDesign8 cuffs">
                                                    <div class="m-0 CuffSideFlex">
                                                        <div class="CuffSides">
                                                            <svg id="fd2158e0-e6c1-4d6f-9b37-7c6ea42ff5c9" data-name="Layer 1"
                                                                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                viewBox="200 400 400 260">
                                                                <defs>
                                                                    <style>
                                                                        .bd680727-ff96-450a-9b83-6c94bbca2884 {
                                                                            fill: none;
                                                                        }

                                                                        .abc41eac-4f00-44ed-aa77-e2eeb3ae2555,
                                                                        .bd680727-ff96-450a-9b83-6c94bbca2884 {
                                                                            stroke: #000;
                                                                            stroke-width: 1%;
                                                                            stroke-miterlimit: 10;
                                                                        }

                                                                        .e116943a-e563-44fc-a861-14f7dec1b453 {
                                                                            clip-path: url(#a834d595-96e5-4dac-bd98-32ffe63225a0);
                                                                        }

                                                                        .abc41eac-4f00-44ed-aa77-e2eeb3ae2555 {
                                                                            fill: #fff;
                                                                        }
                                                                    </style>
                                                                    <clipPath id="a834d595-96e5-4dac-bd98-32ffe63225a0" transform="translate(226.13 427)">
                                                                        <path class="bd680727-ff96-450a-9b83-6c94bbca2884"
                                                                            d="M5.8,200s215.85-46.25,339.2,0V30.4S190.82-31.27,5.8,30.4Z" />
                                                                    </clipPath>
                                                                </defs>
                                                                <g class="e116943a-e563-44fc-a861-14f7dec1b453">
                                                                    <image width="768" height="1024" transform="translate(0 0) scale(1.9)"
                                                                        xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                                </g>
                                                                <path class="bd680727-ff96-450a-9b83-6c94bbca2884"
                                                                    d="M5.8,200s215.85-46.25,339.2,0V30.4S190.82-31.27,5.8,30.4Z"
                                                                    transform="translate(226.13 427)" />
                                                                <line class="bd680727-ff96-450a-9b83-6c94bbca2884" x1="447.79" y1="607" x2="447.79"
                                                                    y2="432" />
                                                                <circle class="abc41eac-4f00-44ed-aa77-e2eeb3ae2555 btnColorChange" cx="378.41" cy="526.79"
                                                                    r="23.13" />
                                                                <path class="bd680727-ff96-450a-9b83-6c94bbca2884" d="M5.5,200.5s140,50,340,0"
                                                                    transform="translate(226.13 427)" />
                                                            </svg>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>Square</h6>
                                                </div>
                                            </div>
                                            <!-- Cuff -->
                                            <!-- Cuff -->
                                            <div class="col-6 p-1">
                                                <div class="drag CuffDesign8 cuffs">
                                                    <div class="m-0 CuffSideFlex">
                                                        <div class="CuffSides">
                                                            <svg id="a6dc9ecf-210a-4190-94f3-854a8fd9267c" data-name="Layer 1"
                                                                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                viewBox="370 550 370 260">
                                                                <defs>
                                                                    <style>
                                                                        .a172a23e-a192-4eb7-aa90-9a5b9f32ce55,
                                                                        .a80900bb-88c3-41a4-ae85-ec32bcdf8adb {
                                                                            fill: none;
                                                                        }

                                                                        .a172a23e-a192-4eb7-aa90-9a5b9f32ce55,
                                                                        .a80900bb-88c3-41a4-ae85-ec32bcdf8adb,
                                                                        .f13fe65f-d074-443e-8d81-3a7f158d8176 {
                                                                            stroke: #000;
                                                                            stroke-width: 1%;
                                                                            stroke-miterlimit: 10;
                                                                        }

                                                                        .e96030d6-2881-49f6-82eb-aac551a867b8 {
                                                                            clip-path: url(#adc3be47-b341-4b19-ae66-eb84a9784caf);
                                                                        }

                                                                        .a172a23e-a192-4eb7-aa90-9a5b9f32ce55 {
                                                                            stroke-width: 2px;
                                                                        }

                                                                        .f13fe65f-d074-443e-8d81-3a7f158d8176 {
                                                                            fill: #fff;
                                                                        }
                                                                    </style>
                                                                    <clipPath id="adc3be47-b341-4b19-ae66-eb84a9784caf" transform="translate(379.06 563)">
                                                                        <path class="a80900bb-88c3-41a4-ae85-ec32bcdf8adb"
                                                                            d="M7.77,199.36s213-45.65,334.72,0V32S190.35-28.86,7.77,32Z" />
                                                                    </clipPath>
                                                                </defs>
                                                                <g class="e96030d6-2881-49f6-82eb-aac551a867b8">
                                                                    <image width="768" height="1024" transform="translate(0) scale(1.8)"
                                                                        xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                                </g>
                                                                <path class="a80900bb-88c3-41a4-ae85-ec32bcdf8adb"
                                                                    d="M7.77,199.36s213-45.65,334.72,0V32S190.35-28.86,7.77,32Z"
                                                                    transform="translate(379.06 563)" />
                                                                <path class="a172a23e-a192-4eb7-aa90-9a5b9f32ce55"
                                                                    d="M155.84,180.41s64.93,3.73,64.93-41.91V5.79" transform="translate(379.06 563)" />
                                                                <circle class="f13fe65f-d074-443e-8d81-3a7f158d8176 btnColorChange" cx="531.37" cy="659.8" r="22.82" />
                                                                <circle class="f13fe65f-d074-443e-8d81-3a7f158d8176 btnColorChange" cx="657.18" cy="659.8" r="22.82" />
                                                                <path class="a80900bb-88c3-41a4-ae85-ec32bcdf8adb" d="M7.5,199.5s165,70,335,0"
                                                                    transform="translate(379.06 563)" />
                                                            </svg>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>Two Button Square</h6>
                                                </div>
                                            </div>
                                            <!-- Cuff -->
                                            <!-- Cuff -->
                                            <%--<div class="col-6 p-1">
                                                <div class="drag CuffDesign8 cuffs">
                                                    <div class="m-0 CuffSideFlex">
                                                        <div class="CuffSides">
                                                            <svg id="bd0023bf-ee22-486a-b273-7d3fd489fdfe" data-name="Layer 1"
                                                                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                viewBox="200 370 400 270">
                                                                <defs>
                                                                    <style>
                                                                        .b65b3d6e-d9a5-415b-b975-51c2f20c7c7f {
                                                                            fill: none;
                                                                        }

                                                                        .b5993923-2fa9-4c56-acd5-e16a42b1185f,
                                                                        .b65b3d6e-d9a5-415b-b975-51c2f20c7c7f {
                                                                            stroke: #000;
                                                                            stroke-width: 1%;
                                                                            stroke-miterlimit: 10;
                                                                        }

                                                                        .b5993923-2fa9-4c56-acd5-e16a42b1185f {
                                                                            fill: #fff;
                                                                        }

                                                                        .e0e883e0-e81e-42ae-9f84-606cb45091ad {
                                                                            clip-path: url(#febf6096-9976-4c66-a910-92eb7758bae8);
                                                                        }
                                                                    </style>
                                                                    <clipPath id="febf6096-9976-4c66-a910-92eb7758bae8"
                                                                        transform="translate(218.46 397.38)">
                                                                        <path class="b65b3d6e-d9a5-415b-b975-51c2f20c7c7f"
                                                                            d="M339,31V196.49C261.07,167.27,145.29,175.9,73.37,185.6L186.55,118c32.78-19.59,0-41,0-41L76.92,13.23C225.27-14.46,339,31,339,31Z" />
                                                                    </clipPath>
                                                                </defs>
                                                                <path class="b5993923-2fa9-4c56-acd5-e16a42b1185f"
                                                                    d="M186.55,118,73.37,185.6c-39.15,5.29-65.3,10.89-65.3,10.89V31a517.54,517.54,0,0,1,68.85-17.8L186.55,77.06S219.33,98.43,186.55,118Z"
                                                                    transform="translate(218.46 397.38)" />
                                                                <g class="e0e883e0-e81e-42ae-9f84-606cb45091ad">
                                                                    <image width="768" height="1024" transform="translate(0) scale(1.8)"
                                                                        xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                                </g>
                                                                <path class="b65b3d6e-d9a5-415b-b975-51c2f20c7c7f"
                                                                    d="M339,31V196.49C261.07,167.27,145.29,175.9,73.37,185.6L186.55,118c32.78-19.59,0-41,0-41L76.92,13.23C225.27-14.46,339,31,339,31Z"
                                                                    transform="translate(218.46 397.38)" />
                                                                <circle class="b5993923-2fa9-4c56-acd5-e16a42b1185f btnColorChange" cx="354.39" cy="499.43"
                                                                    r="22.56" />
                                                                <circle class="b5993923-2fa9-4c56-acd5-e16a42b1185f btnColorChange" cx="484.57" cy="499.43"
                                                                    r="22.56" />
                                                                <path class="b65b3d6e-d9a5-415b-b975-51c2f20c7c7f" d="M8.5,196.5s188,62,330,0"
                                                                    transform="translate(218.46 397.38)" />
                                                            </svg>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>Envelope</h6>
                                                </div>
                                            </div>--%>
                                            <!-- Cuff -->
                                            <!-- Cuff -->
                                            <%--<div class="col-6 p-1">
                                                <div class="drag CuffDesign11 cuffs">
                                                    <div class="m-0 CuffSideFlex">
                                                        <div class="CuffSides">
                                                            <svg id="f81a778f-5402-4e11-83f5-42fa0615a841" data-name="Layer 1"
                                                                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                                viewBox="320 347 390 280">
                                                                <defs>
                                                                    <style>
                                                                        .a5977d15-7774-4306-8d95-f24e8d4c843b {
                                                                            fill: none;
                                                                        }

                                                                        .a5977d15-7774-4306-8d95-f24e8d4c843b,
                                                                        .ac7b784b-70bb-4848-b65a-402cea9a749a,
                                                                        .ad38cd6e-c5d6-4648-a525-0992bf0a1f8e {
                                                                            stroke: #000;
                                                                            stroke-width: 1%;
                                                                            stroke-miterlimit: 10;
                                                                        }

                                                                        .ac7b784b-70bb-4848-b65a-402cea9a749a {
                                                                            fill: #fcfcfc;
                                                                        }

                                                                        .a300c21e-d74d-45bb-8131-971520cbd8fe {
                                                                            clip-path: url(#a2dad226-80b0-4f7f-997d-3eb24735ad6a);
                                                                        }

                                                                        .ad38cd6e-c5d6-4648-a525-0992bf0a1f8e {
                                                                            fill: #fff;
                                                                        }
                                                                    </style>
                                                                    <clipPath id="a2dad226-80b0-4f7f-997d-3eb24735ad6a"
                                                                        transform="translate(335.18 376.15)">
                                                                        <path class="a5977d15-7774-4306-8d95-f24e8d4c843b"
                                                                            d="M297.35,106.63l-49.67,49.66H198s-25.92,0-33.21,24A1071.09,1071.09,0,0,0,8.07,199.65V33.19A526.23,526.23,0,0,1,163.69,6.41l1.2,17.43S164.89,57,198,57h49.67Z" />
                                                                    </clipPath>
                                                                </defs>
                                                                <path class="ac7b784b-70bb-4848-b65a-402cea9a749a"
                                                                    d="M341,33.19V199.65c-50.29-18.86-116.26-22.05-176.2-19.33,7.29-24,33.21-24,33.21-24h49.67l49.67-49.66L247.68,57H198c-33.12,0-33.12-33.12-33.12-33.12l-1.2-17.43C268.52,4.2,341,33.19,341,33.19Z"
                                                                    transform="translate(335.18 376.15)" />
                                                                <g class="a300c21e-d74d-45bb-8131-971520cbd8fe">
                                                                    <image width="768" height="1024" xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" transform="scale(2)" />
                                                                </g>
                                                                <path class="a5977d15-7774-4306-8d95-f24e8d4c843b"
                                                                    d="M297.35,106.63l-49.67,49.66H198s-25.92,0-33.21,24A1071.09,1071.09,0,0,0,8.07,199.65V33.19A526.23,526.23,0,0,1,163.69,6.41l1.2,17.43S164.89,57,198,57h49.67Z"
                                                                    transform="translate(335.18 376.15)" />
                                                                <circle class="ad38cd6e-c5d6-4648-a525-0992bf0a1f8e btnColorChange" cx="566.68" cy="478.44" r="22.7" />
                                                                <path class="a5977d15-7774-4306-8d95-f24e8d4c843b" d="M8.5,199.5s151,56,332,0"
                                                                    transform="translate(335.18 376.15)" />
                                                            </svg>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="drag_name">
                                                    <h6>Italian</h6>
                                                </div>
                                            </div>--%>
                                            <!-- Cuff -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" id="headingThree">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left collapsed p-0" id="colorCollapse" type="button"
                                            data-toggle="collapse" data-target="#ButtonsArea" aria-expanded="false"
                                            aria-controls="collapseThree">
                                            Buttons
                      <img src="/Assets/Images/btn.png" class="float-right" width="25" alt="">
                                        </button>
                                    </h2>
                                </div>
                                <div id="ButtonsArea" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="colors">
                                            <h5>Pick Color For Buttons</h5>
                                            <div class="row m-0">
                                                <div class="col-3 p-0">
                                                    <div class="colorWidth buttonColorChange">
                                                        <a href="javascript:void(0)" class="lightblue"></a>
                                                    </div>
                                                </div>
                                                <div class="col-3 p-0">
                                                    <div class="colorWidth buttonColorChange">
                                                        <a href="javascript:void(0)" class="navyBlue"></a>
                                                    </div>
                                                </div>
                                                <div class="col-3 p-0">
                                                    <div class="colorWidth buttonColorChange">
                                                        <a href="javascript:void(0)" class="pink"></a>
                                                    </div>
                                                </div>
                                                <div class="col-3 p-0">
                                                    <div class="colorWidth buttonColorChange">
                                                        <a href="javascript:void(0)" class="green"></a>
                                                    </div>
                                                </div>
                                                <div class="col-3 p-0">
                                                    <div class="colorWidth buttonColorChange">
                                                        <a href="javascript:void(0)" class="white"></a>
                                                    </div>
                                                </div>
                                                <div class="col-3 p-0">
                                                    <div class="colorWidth buttonColorChange">
                                                        <a href="javascript:void(0)" class="blackColor"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="drag buttonStyle buttons">
                                            <div class="removeButtons"><i class="fa fa-close"></i></div>
                                            <div class="buttonContainer">

                                                <div class="btnContainerInner">
                                                    <svg id="Button1" class="btnColorChange" data-name="Button1"
                                                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 351 351">
                                                        <defs>
                                                            <style>
                                                                .Button-1-cls-1,
                                                                .Button-1-cls-3 {
                                                                    stroke: #000;
                                                                }

                                                                .Button-1-cls-1,
                                                                .Button-1-cls-2,
                                                                .Button-1-cls-3 {
                                                                    stroke-miterlimit: 10;
                                                                }

                                                                .Button-1-cls-2 {
                                                                    stroke: #fff;
                                                                }

                                                                .Button-1-cls-3 {
                                                                    fill: #fff;
                                                                }
                                                            </style>
                                                        </defs>
                                                        <circle class="Button-1-cls-1" cx="175.5" cy="175.5" r="175" />
                                                        <circle class="Button-1-cls-2" cx="174.03" cy="171.53" r="124.12" />
                                                        <circle class="Button-1-cls-3" cx="143.53" cy="145.03" r="19" />
                                                        <circle class="Button-1-cls-3" cx="143.53" cy="198.03" r="19" />
                                                        <circle class="Button-1-cls-3" cx="204.53" cy="198.03" r="19" />
                                                        <circle class="Button-1-cls-3" cx="204.53" cy="145.03" r="19" />
                                                    </svg>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header p-2" id="headingTwo">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left collapsed p-0" type="button" data-toggle="collapse"
                                            data-target="#PocketCollapse" aria-expanded="false" aria-controls="collapseTwo">
                                            Pocket
                      <img src="/Assets/Images/Pocket.png" class="float-right" width="25" alt="">
                                        </button>
                                    </h2>
                                </div>
                                <div id="PocketCollapse" class="collapse" data-parent="#accordionExample">
                                    <div class="card-body pr-1 pl-1">
                                        <div class="row m-0">
                                            <div class="col-6">
                                                <div class="drag noPocket p-2">
                                                    <img src="/Assets/Images/NoPocket.png" class="img-fluid">
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="drag pocketStyle1 pocket">
                                                    <div class="removePocket"><i class="fa fa-close"></i></div>
                                                    <svg id="fe79f035-8752-4187-b4fe-0672faad38f5" data-name="Layer 1"
                                                        xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                                        viewBox="100 150 240.99 255.32">
                                                        <defs>
                                                            <style>
                                                                .b33b0d09-8460-4e03-9a3d-39f755b6a234,
                                                                .be5cbb29-7613-4f92-9dfc-7883ec274387 {
                                                                    fill: none;
                                                                    stroke-miterlimit: 10;
                                                                }

                                                                .be5cbb29-7613-4f92-9dfc-7883ec274387 {
                                                                    stroke: #000;
                                                                    stroke-width: 2px;
                                                                }

                                                                .acb45104-ea46-408b-a76b-720f22e67fa6 {
                                                                    clip-path: url(#bd0422f6-7fc7-4618-91a5-34d98d6c3c5c);
                                                                }

                                                                .b33b0d09-8460-4e03-9a3d-39f755b6a234 {
                                                                    stroke: #fff;
                                                                }
                                                            </style>
                                                            <clipPath id="bd0422f6-7fc7-4618-91a5-34d98d6c3c5c" transform="translate(41.23 158.52)">
                                                                <polygon class="be5cbb29-7613-4f92-9dfc-7883ec274387"
                                                                    points="72.09 14 284.07 14 284.07 188.21 176.95 233.31 72.09 189.9 72.09 14" />
                                                            </clipPath>
                                                        </defs>
                                                        <g class="acb45104-ea46-408b-a76b-720f22e67fa6">
                                                            <image width="768" height="1024" transform="scale(1.2)" xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                                                        </g>
                                                        <polygon class="be5cbb29-7613-4f92-9dfc-7883ec274387"
                                                            points="113.32 172.52 325.31 172.52 325.31 346.73 218.19 391.83 113.32 348.42 113.32 172.52" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="116.14" y1="177.03" x2="116.14"
                                                            y2="182.1" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="120.65" y1="177.03" x2="125.73"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="130.24" y1="177.03" x2="135.31"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="139.82" y1="177.03" x2="144.89"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="149.4" y1="177.03" x2="154.48"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="158.99" y1="177.03" x2="164.06"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="168.57" y1="177.03" x2="173.65"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="178.16" y1="177.03" x2="183.23"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="187.74" y1="177.03" x2="192.82"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="197.33" y1="177.03" x2="202.4"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="206.91" y1="177.03" x2="211.99"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="216.5" y1="177.03" x2="221.57"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="121.27" y1="347.33" x2="125.94"
                                                            y2="349.31" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="130.1" y1="351.07" x2="134.77"
                                                            y2="353.05" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="138.92" y1="354.81" x2="143.59"
                                                            y2="356.79" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="147.74" y1="358.56" x2="152.42"
                                                            y2="360.54" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="156.57" y1="362.3" x2="161.24"
                                                            y2="364.28" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="165.39" y1="366.04" x2="170.06"
                                                            y2="368.02" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="174.22" y1="369.78" x2="178.89"
                                                            y2="371.76" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="183.04" y1="373.52" x2="187.71"
                                                            y2="375.5" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="191.86" y1="377.26" x2="196.54"
                                                            y2="379.24" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="200.69" y1="381" x2="205.36"
                                                            y2="382.99" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="209.51" y1="384.75" x2="214.18"
                                                            y2="386.73" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="226.08" y1="177.03" x2="231.15"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="235.67" y1="177.03" x2="240.74"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="245.25" y1="177.03" x2="250.32"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="254.83" y1="177.03" x2="259.91"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="264.42" y1="177.03" x2="269.49"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="274" y1="177.03" x2="279.08"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="283.59" y1="177.03" x2="288.66"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="293.17" y1="177.03" x2="298.25"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="302.76" y1="177.03" x2="307.83"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="312.34" y1="177.03" x2="317.41"
                                                            y2="177.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="116.14" y1="187.18" x2="116.14"
                                                            y2="192.25" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="116.14" y1="197.33" x2="116.14"
                                                            y2="202.4" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="116.14" y1="207.48" x2="116.14"
                                                            y2="212.55" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="116.14" y1="217.62" x2="116.14"
                                                            y2="222.7" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="116.14" y1="227.77" x2="116.14"
                                                            y2="232.85" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="116.14" y1="237.92" x2="116.14"
                                                            y2="242.99" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="116.14" y1="248.07" x2="116.14"
                                                            y2="253.14" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="116.14" y1="258.22" x2="116.14"
                                                            y2="263.29" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="116.14" y1="268.37" x2="116.14"
                                                            y2="273.44" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="116.14" y1="278.51" x2="116.14"
                                                            y2="283.59" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="116.14" y1="288.66" x2="116.14"
                                                            y2="293.74" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="116.14" y1="298.81" x2="116.14"
                                                            y2="303.88" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="116.14" y1="308.96" x2="116.14"
                                                            y2="314.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="116.14" y1="319.11" x2="116.14"
                                                            y2="324.18" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="116.14" y1="329.25" x2="116.14"
                                                            y2="334.33" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="116.14" y1="339.4" x2="116.14"
                                                            y2="344.48" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="321.93" y1="177.03" x2="321.93"
                                                            y2="182.1" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="321.93" y1="187.18" x2="321.93"
                                                            y2="192.25" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="321.93" y1="197.33" x2="321.93"
                                                            y2="202.4" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="321.93" y1="207.48" x2="321.93"
                                                            y2="212.55" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="321.93" y1="217.62" x2="321.93"
                                                            y2="222.7" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="321.93" y1="227.77" x2="321.93"
                                                            y2="232.85" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="321.93" y1="237.92" x2="321.93"
                                                            y2="242.99" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="321.93" y1="248.07" x2="321.93"
                                                            y2="253.14" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="321.93" y1="258.22" x2="321.93"
                                                            y2="263.29" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="321.93" y1="268.37" x2="321.93"
                                                            y2="273.44" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="321.93" y1="278.51" x2="321.93"
                                                            y2="283.59" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="321.93" y1="288.66" x2="321.93"
                                                            y2="293.74" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="321.93" y1="298.81" x2="321.93"
                                                            y2="303.88" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="321.93" y1="308.96" x2="321.93"
                                                            y2="314.03" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="321.93" y1="319.11" x2="321.93"
                                                            y2="324.18" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="321.93" y1="329.25" x2="321.93"
                                                            y2="334.33" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="321.93" y1="339.4" x2="321.93"
                                                            y2="344.48" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="314.85" y1="347" x2="310.18"
                                                            y2="348.98" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="306.03" y1="350.74" x2="301.35"
                                                            y2="352.72" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="297.2" y1="354.48" x2="292.53"
                                                            y2="356.46" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="288.38" y1="358.22" x2="283.71"
                                                            y2="360.2" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="279.55" y1="361.96" x2="274.88"
                                                            y2="363.94" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="270.73" y1="365.71" x2="266.06"
                                                            y2="367.69" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="261.91" y1="369.45" x2="257.23"
                                                            y2="371.43" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="253.08" y1="373.19" x2="248.41"
                                                            y2="375.17" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="244.26" y1="376.93" x2="239.59"
                                                            y2="378.91" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="235.43" y1="380.67" x2="230.76"
                                                            y2="382.65" />
                                                        <line class="b33b0d09-8460-4e03-9a3d-39f755b6a234" x1="226.61" y1="384.41" x2="221.94"
                                                            y2="386.39" />
                                                    </svg>
                                                </div>

                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header p-2">
                                    <h2 class="mb-0">
                                        <button class="btn btn-link btn-block text-left collapsed p-0" type="button" data-toggle="collapse"
                                            data-target="#ThreadCollapse" aria-expanded="false" aria-controls="collapseTwo">
                                            Button Thread
                      <img src="/Assets/Images/thread.png" class="float-right" width="25" alt="">
                                        </button>
                                    </h2>
                                </div>
                                <div id="ThreadCollapse" class="collapse" data-parent="#accordionExample">
                                    <div class="card-body">
                                        <div class="colors">
                                            <h5>Pick Color For Thread</h5>
                                            <div class="row m-0">
                                                <div class="col-3 p-0">
                                                    <div class="colorWidth threadColor">
                                                        <a href="javascript:void(0)" class="blackColor"></a>
                                                    </div>


                                                </div>
                                                <!-- <div class="col-3 p-0">
                                                    <div class="colorWidth threadColor">
                                                        <a href="javascript:void(0)" class="yellow"></a>
                                                    </div>
                                                </div> -->
                                                <!-- <div class="col-3 p-0">
                                                    <div class="colorWidth threadColor">
                                                        <a href="javascript:void(0)" class="red"></a>
                                                    </div>
                                                </div> -->
                                                <div class="col-3 p-0">
                                                    <div class="colorWidth threadColor">
                                                        <a href="javascript:void(0)" class="BlueColor"></a>
                                                    </div>
                                                </div>
                                                <!-- <div class="col-3 p-0">
                                                    <div class="colorWidth threadColor">
                                                        <a href="javascript:void(0)" class="violet"></a>
                                                    </div>
                                                </div>
                                                <div class="col-3 p-0">
                                                    <div class="colorWidth threadColor">
                                                        <a href="javascript:void(0)" class="Orange"></a>
                                                    </div>
                                                </div> -->
                                                <div class="col-3 p-0">
                                                    <div class="colorWidth threadColor">
                                                        <a href="javascript:void(0)" class="Light_blue"></a>
                                                    </div>


                                                </div>
                                                <div class="col-3 p-0">
                                                    <div class="colorWidth threadColor">
                                                        <a href="javascript:void(0)" class="Green"></a>
                                                    </div>
                                                </div>
                                                <!-- <div class="col-3 p-0">
                                                    <div class="colorWidth threadColor">
                                                        <a href="javascript:void(0)" class="Dark_Green"></a>
                                                    </div>
                                                </div> -->
                                                <div class="col-3 p-0">
                                                    <div class="colorWidth threadColor">
                                                        <a href="javascript:void(0)" class="white"></a>
                                                    </div>
                                                </div>
                                                <!-- <div class="col-3 p-0">
                                                    <div class="colorWidth threadColor">
                                                        <a href="javascript:void(0)" class="Yellow_Orange"></a>
                                                    </div>
                                                </div> -->
                                                <div class="col-3 p-0">
                                                    <div class="colorWidth threadColor">
                                                        <a href="javascript:void(0)" class="Blue_violet"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="drag Thread">
                                            <svg id="b2adf885-d43a-4694-a85e-7f6dcc6e8445" width="100" data-name="Layer 1"
                                                xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1440.2 1784.67">
                                                <defs>
                                                    <style>
                                                        .bc96a438-9df8-4078-b420-950506db1bcf {
                                                            fill: #b58d5d;
                                                        }

                                                        .a3bf1b66-ea21-4363-9746-a880ced82b93 {
                                                            fill: #dab073;
                                                        }

                                                        .a18cb088-d9ed-4876-8866-f2c0ddbff925,
                                                        .a28c275f-1865-410a-a30d-a05e07c87ead,
                                                        .a857f6a8-724c-43df-a326-7c378ec05910 {
                                                            fill: #fff;
                                                        }

                                                        .a18cb088-d9ed-4876-8866-f2c0ddbff925 {
                                                            opacity: 0.17;
                                                        }

                                                        .a28c275f-1865-410a-a30d-a05e07c87ead {
                                                            opacity: 0.26;
                                                        }

                                                        .aa660987-1d87-47e6-8ab9-b757996d23f3 {
                                                            fill: #469bc1;
                                                        }

                                                        .a857f6a8-724c-43df-a326-7c378ec05910 {
                                                            opacity: 0.31;
                                                        }

                                                        .ad064edb-de09-4db0-80e4-849f7051a9c0 {
                                                            fill: #37819b;
                                                        }

                                                        .b4a6a66a-8efb-4bcc-97e9-7d8b9c1be116 {
                                                            fill: #ad8959;
                                                        }
                                                    </style>
                                                </defs>
                                                <path class="bc96a438-9df8-4078-b420-950506db1bcf"
                                                    d="M3595,3082.61c-129.67-47.29-347.78-78.33-595-78.33s-465.34,31-595,78.33l-125.09-27.8v128.86c0,99.08,322.4,179.4,720.1,179.4s720.1-80.32,720.1-179.4V3054.81Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a3bf1b66-ea21-4363-9746-a880ced82b93"
                                                    d="M3720.1,3054.81c0,99.08-322.4,179.4-720.1,179.4s-720.1-80.32-720.1-179.4c0-59.77,117.35-112.71,297.77-145.31,118.64-21.44,264.56-34.08,422.33-34.08s303.69,12.64,422.33,34.08C3602.75,2942.1,3720.1,2995,3720.1,3054.81Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a18cb088-d9ed-4876-8866-f2c0ddbff925"
                                                    d="M3159.3,2879.83c88.82,29.83,141.37,66.77,141.37,106.76,0,99.08-322.4,179.4-720.1,179.4-54.74,0-108.05-1.53-159.3-4.41,131.21,44.07,341.58,72.63,578.73,72.63,397.7,0,720.1-80.32,720.1-179.4C3720.1,2969.38,3480.34,2897.89,3159.3,2879.83Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a28c275f-1865-410a-a30d-a05e07c87ead"
                                                    d="M3000,3222.84c-390.06,0-707.68-77.27-719.73-173.71a45,45,0,0,0-.37,5.68c0,99.08,322.4,179.4,720.1,179.4s720.1-80.32,720.1-179.4a45,45,0,0,0-.37-5.68C3707.68,3145.57,3390.06,3222.84,3000,3222.84Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a28c275f-1865-410a-a30d-a05e07c87ead"
                                                    d="M3466.51,2958.92c0,64.18-208.87,116.22-466.51,116.22s-466.51-52-466.51-116.22c0-17.67,15.84-34.43,44.18-49.42,118.64-21.44,264.56-34.08,422.33-34.08s303.69,12.64,422.33,34.08C3450.67,2924.49,3466.51,2941.25,3466.51,2958.92Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,2933.57c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.34a22.45,22.45,0,0,0-33.19,19.72v.28a22.52,22.52,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.58a22.51,22.51,0,0,0,6.73-16h0A22.46,22.46,0,0,0,3414.38,2933.57Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,2934.76a22.35,22.35,0,0,0-23.65-1.19c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.34a22.29,22.29,0,0,0-23.66,1.36c54.17,47.54,229.69,82.35,437.85,82.35C3208.5,3017.56,3384.47,2982.52,3438,2934.76Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,2943.52l-.24.13c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33q-.53-.29-1-.54c-8.49-4.09-15,8.28-7,13.24,67.36,41.63,231,71,422.26,71s355.06-29.41,422.36-71.07C3430.22,2951.5,3423.12,2939,3414.62,2943.52Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2962.2c-49.76,49.17-228.48,85.58-441.33,85.58-211.55,0-389.39-36-440.4-84.69a22.51,22.51,0,0,1-6.72-12.91,23.51,23.51,0,0,0-.26,3.39v.28a22.52,22.52,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.58a22.51,22.51,0,0,0,6.73-16,24,24,0,0,0-.28-3.54A22.6,22.6,0,0,1,3441,2962.2Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,2881c-71.5,39.29-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33a22.45,22.45,0,0,0-33.19,19.72v.28a22.52,22.52,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.58a22.52,22.52,0,0,0,6.73-16h0A22.46,22.46,0,0,0,3414.38,2881Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,2882.18a22.38,22.38,0,0,0-23.65-1.18c-71.5,39.29-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33a22.29,22.29,0,0,0-23.66,1.36C2616,2930.17,2791.5,2965,2999.66,2965,3208.5,2965,3384.47,2930,3438,2882.18Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,2891l-.24.13c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.2-414.19-66.33q-.53-.29-1-.54c-8.49-4.09-15,8.28-7,13.24,67.36,41.63,231,71,422.26,71S3354.72,2945.66,3422,2904C3430.22,2898.93,3423.12,2886.4,3414.62,2891Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2909.63c-49.76,49.17-228.48,85.58-441.33,85.58-211.55,0-389.39-36-440.4-84.69a22.54,22.54,0,0,1-6.72-12.91,23.51,23.51,0,0,0-.26,3.39v.28a22.52,22.52,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.58a22.52,22.52,0,0,0,6.73-16,23.94,23.94,0,0,0-.28-3.54A22.6,22.6,0,0,1,3441,2909.63Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,2828.43c-71.5,39.29-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33a22.45,22.45,0,0,0-33.19,19.72v.28a22.5,22.5,0,0,0,7,16.27c51,48.73,228.85,84.69,440.4,84.69,212.85,0,391.57-36.4,441.33-85.58a22.55,22.55,0,0,0,6.73-16h0A22.46,22.46,0,0,0,3414.38,2828.43Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,2829.61a22.38,22.38,0,0,0-23.65-1.18c-71.5,39.29-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33a22.29,22.29,0,0,0-23.66,1.36c54.17,47.53,229.69,82.35,437.85,82.35C3208.5,2912.42,3384.47,2877.38,3438,2829.61Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,2838.37l-.24.14c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.2-414.19-66.33q-.53-.28-1-.54c-8.49-4.09-15,8.28-7,13.23,67.36,41.64,231,71,422.26,71s355.06-29.41,422.36-71.07C3430.22,2846.35,3423.12,2833.83,3414.62,2838.37Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2857.06c-49.76,49.17-228.48,85.57-441.33,85.57-211.55,0-389.39-36-440.4-84.68a22.53,22.53,0,0,1-6.72-12.92,23.54,23.54,0,0,0-.26,3.4v.28a22.5,22.5,0,0,0,7,16.27c51,48.73,228.85,84.69,440.4,84.69,212.85,0,391.57-36.4,441.33-85.58a22.55,22.55,0,0,0,6.73-16,23.91,23.91,0,0,0-.28-3.53A22.63,22.63,0,0,1,3441,2857.06Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,2775.86c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33a22.45,22.45,0,0,0-33.19,19.72v.28a22.5,22.5,0,0,0,7,16.27c51,48.73,228.85,84.69,440.4,84.69,212.85,0,391.57-36.4,441.33-85.58a22.55,22.55,0,0,0,6.73-16h0A22.46,22.46,0,0,0,3414.38,2775.86Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,2777a22.38,22.38,0,0,0-23.65-1.18c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33a22.27,22.27,0,0,0-23.66,1.36c54.17,47.53,229.69,82.35,437.85,82.35C3208.5,2859.85,3384.47,2824.81,3438,2777Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,2785.8l-.24.13c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.33l-1-.54c-8.49-4.09-15,8.28-7,13.23,67.36,41.63,231,71,422.26,71s355.06-29.41,422.36-71.07C3430.22,2793.78,3423.12,2781.26,3414.62,2785.8Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2804.49c-49.76,49.17-228.48,85.57-441.33,85.57-211.55,0-389.39-36-440.4-84.68a22.53,22.53,0,0,1-6.72-12.92,23.54,23.54,0,0,0-.26,3.4v.28a22.5,22.5,0,0,0,7,16.27c51,48.73,228.85,84.69,440.4,84.69,212.85,0,391.57-36.4,441.33-85.58a22.55,22.55,0,0,0,6.73-16,23.91,23.91,0,0,0-.28-3.53A22.63,22.63,0,0,1,3441,2804.49Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,2723.29c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.2-414.19-66.33a22.45,22.45,0,0,0-33.19,19.71v.29a22.5,22.5,0,0,0,7,16.27c51,48.73,228.85,84.69,440.4,84.69,212.85,0,391.57-36.4,441.33-85.58a22.55,22.55,0,0,0,6.73-16h0A22.46,22.46,0,0,0,3414.38,2723.29Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,2724.47a22.38,22.38,0,0,0-23.65-1.18c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.2-414.19-66.33a22.27,22.27,0,0,0-23.66,1.36c54.17,47.53,229.69,82.35,437.85,82.35C3208.5,2807.28,3384.47,2772.24,3438,2724.47Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,2733.23l-.24.13c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.33l-1-.55c-8.49-4.08-15,8.29-7,13.24,67.36,41.63,231,71,422.26,71S3354.72,2788,3422,2746.29C3430.22,2741.21,3423.12,2728.69,3414.62,2733.23Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2751.91c-49.76,49.18-228.48,85.58-441.33,85.58-211.55,0-389.39-36-440.4-84.68a22.53,22.53,0,0,1-6.72-12.92,23.51,23.51,0,0,0-.26,3.39v.29a22.5,22.5,0,0,0,7,16.27c51,48.73,228.85,84.69,440.4,84.69,212.85,0,391.57-36.4,441.33-85.58a22.55,22.55,0,0,0,6.73-16,23.91,23.91,0,0,0-.28-3.53A22.57,22.57,0,0,1,3441,2751.91Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,2670.72c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.2-414.19-66.33a22.44,22.44,0,0,0-33.19,19.71v.29a22.5,22.5,0,0,0,7,16.27c51,48.72,228.85,84.69,440.4,84.69,212.85,0,391.57-36.4,441.33-85.58a22.55,22.55,0,0,0,6.73-16h0A22.46,22.46,0,0,0,3414.38,2670.72Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,2671.9a22.38,22.38,0,0,0-23.65-1.18c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.2-414.19-66.33a22.27,22.27,0,0,0-23.66,1.36c54.17,47.53,229.69,82.35,437.85,82.35C3208.5,2754.71,3384.47,2719.67,3438,2671.9Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,2680.66l-.24.13c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.33-.35-.2-.7-.38-1-.55-8.49-4.09-15,8.29-7,13.24,67.36,41.63,231,71,422.26,71s355.06-29.41,422.36-71.07C3430.22,2688.64,3423.12,2676.12,3414.62,2680.66Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2699.34c-49.76,49.18-228.48,85.58-441.33,85.58-211.55,0-389.39-36-440.4-84.68a22.53,22.53,0,0,1-6.72-12.92,23.51,23.51,0,0,0-.26,3.39v.29a22.5,22.5,0,0,0,7,16.27c51,48.72,228.85,84.69,440.4,84.69,212.85,0,391.57-36.4,441.33-85.58a22.55,22.55,0,0,0,6.73-16,23.91,23.91,0,0,0-.28-3.53A22.57,22.57,0,0,1,3441,2699.34Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,2618.14c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.33a22.44,22.44,0,0,0-33.19,19.71v.29a22.5,22.5,0,0,0,7,16.27c51,48.72,228.85,84.69,440.4,84.69,212.85,0,391.57-36.41,441.33-85.58a22.55,22.55,0,0,0,6.73-16h0A22.47,22.47,0,0,0,3414.38,2618.14Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,2619.33a22.4,22.4,0,0,0-23.65-1.19c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.33a22.25,22.25,0,0,0-23.66,1.36c54.17,47.53,229.69,82.35,437.85,82.35C3208.5,2702.14,3384.47,2667.1,3438,2619.33Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,2628.09l-.24.13c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.34q-.53-.28-1-.54c-8.49-4.09-15,8.29-7,13.24,67.36,41.63,231,71,422.26,71s355.06-29.41,422.36-71.08C3430.22,2636.07,3423.12,2623.54,3414.62,2628.09Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2646.77c-49.76,49.18-228.48,85.58-441.33,85.58-211.55,0-389.39-36-440.4-84.69a22.48,22.48,0,0,1-6.72-12.91,23.51,23.51,0,0,0-.26,3.39v.29a22.5,22.5,0,0,0,7,16.27c51,48.72,228.85,84.69,440.4,84.69,212.85,0,391.57-36.41,441.33-85.58a22.55,22.55,0,0,0,6.73-16,24.16,24.16,0,0,0-.28-3.54A22.6,22.6,0,0,1,3441,2646.77Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,2565.57c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.33a22.44,22.44,0,0,0-33.19,19.71v.28a22.51,22.51,0,0,0,7,16.28c51,48.72,228.85,84.69,440.4,84.69,212.85,0,391.57-36.41,441.33-85.58a22.55,22.55,0,0,0,6.73-16h0A22.47,22.47,0,0,0,3414.38,2565.57Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,2566.76a22.38,22.38,0,0,0-23.65-1.19c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.33a22.27,22.27,0,0,0-23.66,1.35c54.17,47.54,229.69,82.36,437.85,82.36C3208.5,2649.57,3384.47,2614.53,3438,2566.76Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,2575.52l-.24.13c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.34q-.53-.29-1-.54c-8.49-4.09-15,8.29-7,13.24,67.36,41.63,231,71,422.26,71s355.06-29.41,422.36-71.07C3430.22,2583.5,3423.12,2571,3414.62,2575.52Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2594.2c-49.76,49.18-228.48,85.58-441.33,85.58-211.55,0-389.39-36-440.4-84.69a22.48,22.48,0,0,1-6.72-12.91,23.51,23.51,0,0,0-.26,3.39v.28a22.51,22.51,0,0,0,7,16.28c51,48.72,228.85,84.69,440.4,84.69,212.85,0,391.57-36.41,441.33-85.58a22.55,22.55,0,0,0,6.73-16,24.16,24.16,0,0,0-.28-3.54A22.6,22.6,0,0,1,3441,2594.2Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,2513c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.33a22.44,22.44,0,0,0-33.19,19.71v.28a22.51,22.51,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.57a22.55,22.55,0,0,0,6.73-16h0A22.47,22.47,0,0,0,3414.38,2513Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,2514.19a22.38,22.38,0,0,0-23.65-1.19c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.33a22.27,22.27,0,0,0-23.66,1.35C2616,2562.18,2791.5,2597,2999.66,2597,3208.5,2597,3384.47,2562,3438,2514.19Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,2523l-.24.13c-71.5,39.29-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33q-.53-.29-1-.54c-8.49-4.09-15,8.29-7,13.24,67.36,41.63,231,71,422.26,71S3354.72,2577.66,3422,2536C3430.22,2530.93,3423.12,2518.4,3414.62,2523Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2541.63c-49.76,49.18-228.48,85.58-441.33,85.58-211.55,0-389.39-36-440.4-84.69a22.48,22.48,0,0,1-6.72-12.91,23.51,23.51,0,0,0-.26,3.39v.28a22.51,22.51,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.57a22.55,22.55,0,0,0,6.73-16,24.16,24.16,0,0,0-.28-3.54A22.6,22.6,0,0,1,3441,2541.63Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,2460.43c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.34a22.45,22.45,0,0,0-33.19,19.72v.28a22.52,22.52,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.58a22.51,22.51,0,0,0,6.73-16h0A22.47,22.47,0,0,0,3414.38,2460.43Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,2461.62a22.35,22.35,0,0,0-23.65-1.19c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.34a22.29,22.29,0,0,0-23.66,1.36c54.17,47.54,229.69,82.36,437.85,82.36C3208.5,2544.43,3384.47,2509.38,3438,2461.62Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,2470.38l-.24.13c-71.5,39.29-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33q-.53-.28-1-.54c-8.49-4.09-15,8.29-7,13.24,67.36,41.63,231,71,422.26,71s355.06-29.41,422.36-71.07C3430.22,2478.36,3423.12,2465.83,3414.62,2470.38Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2489.06c-49.76,49.18-228.48,85.58-441.33,85.58-211.55,0-389.39-36-440.4-84.69a22.51,22.51,0,0,1-6.72-12.91,23.51,23.51,0,0,0-.26,3.39v.28a22.52,22.52,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.58a22.51,22.51,0,0,0,6.73-16,24,24,0,0,0-.28-3.54A22.6,22.6,0,0,1,3441,2489.06Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,2407.86c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.34a22.45,22.45,0,0,0-33.19,19.72v.28a22.52,22.52,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.58a22.51,22.51,0,0,0,6.73-16h0A22.46,22.46,0,0,0,3414.38,2407.86Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,2409.05a22.35,22.35,0,0,0-23.65-1.19c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.34a22.29,22.29,0,0,0-23.66,1.36c54.17,47.54,229.69,82.35,437.85,82.35C3208.5,2491.85,3384.47,2456.81,3438,2409.05Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,2417.81l-.24.13c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33l-1-.54c-8.49-4.09-15,8.28-7,13.24,67.36,41.63,231,71,422.26,71s355.06-29.41,422.36-71.07C3430.22,2425.79,3423.12,2413.26,3414.62,2417.81Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2436.49c-49.76,49.17-228.48,85.58-441.33,85.58-211.55,0-389.39-36-440.4-84.69a22.51,22.51,0,0,1-6.72-12.91,23.51,23.51,0,0,0-.26,3.39v.28a22.52,22.52,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.58a22.51,22.51,0,0,0,6.73-16,24,24,0,0,0-.28-3.54A22.6,22.6,0,0,1,3441,2436.49Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,2355.29c-71.5,39.29-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33a22.45,22.45,0,0,0-33.19,19.72v.28a22.52,22.52,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.58a22.52,22.52,0,0,0,6.73-16h0A22.46,22.46,0,0,0,3414.38,2355.29Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,2356.47a22.38,22.38,0,0,0-23.65-1.18c-71.5,39.29-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33a22.29,22.29,0,0,0-23.66,1.36c54.17,47.53,229.69,82.35,437.85,82.35C3208.5,2439.28,3384.47,2404.24,3438,2356.47Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,2365.24l-.24.13c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.2-414.19-66.33q-.53-.29-1-.54c-8.49-4.09-15,8.28-7,13.24,67.36,41.63,231,71,422.26,71S3354.72,2420,3422,2378.29C3430.22,2373.21,3423.12,2360.69,3414.62,2365.24Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2383.92c-49.76,49.17-228.48,85.58-441.33,85.58-211.55,0-389.39-36-440.4-84.69a22.54,22.54,0,0,1-6.72-12.91,23.51,23.51,0,0,0-.26,3.39v.28a22.52,22.52,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.58a22.52,22.52,0,0,0,6.73-16,23.94,23.94,0,0,0-.28-3.54A22.6,22.6,0,0,1,3441,2383.92Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,2302.72c-71.5,39.29-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33a22.45,22.45,0,0,0-33.19,19.72v.28a22.5,22.5,0,0,0,7,16.27c51,48.73,228.85,84.69,440.4,84.69,212.85,0,391.57-36.4,441.33-85.58a22.55,22.55,0,0,0,6.73-16h0A22.46,22.46,0,0,0,3414.38,2302.72Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,2303.9a22.38,22.38,0,0,0-23.65-1.18c-71.5,39.29-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33a22.27,22.27,0,0,0-23.66,1.36c54.17,47.53,229.69,82.35,437.85,82.35C3208.5,2386.71,3384.47,2351.67,3438,2303.9Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,2312.66l-.24.14c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.2-414.19-66.33q-.53-.28-1-.54c-8.49-4.09-15,8.28-7,13.23,67.36,41.64,231,71,422.26,71s355.06-29.41,422.36-71.07C3430.22,2320.64,3423.12,2308.12,3414.62,2312.66Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2331.35c-49.76,49.17-228.48,85.57-441.33,85.57-211.55,0-389.39-36-440.4-84.68a22.53,22.53,0,0,1-6.72-12.92,23.54,23.54,0,0,0-.26,3.4v.28a22.5,22.5,0,0,0,7,16.27c51,48.73,228.85,84.69,440.4,84.69,212.85,0,391.57-36.4,441.33-85.58a22.55,22.55,0,0,0,6.73-16,23.91,23.91,0,0,0-.28-3.53A22.63,22.63,0,0,1,3441,2331.35Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,2250.15c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33a22.45,22.45,0,0,0-33.19,19.72v.28a22.5,22.5,0,0,0,7,16.27c51,48.73,228.85,84.69,440.4,84.69,212.85,0,391.57-36.4,441.33-85.58a22.55,22.55,0,0,0,6.73-16h0A22.46,22.46,0,0,0,3414.38,2250.15Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,2251.33a22.38,22.38,0,0,0-23.65-1.18c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33a22.27,22.27,0,0,0-23.66,1.36c54.17,47.53,229.69,82.35,437.85,82.35C3208.5,2334.14,3384.47,2299.1,3438,2251.33Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,2260.09l-.24.13c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.33q-.53-.28-1-.54c-8.49-4.09-15,8.28-7,13.23,67.36,41.63,231,71,422.26,71s355.06-29.41,422.36-71.07C3430.22,2268.07,3423.12,2255.55,3414.62,2260.09Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2278.78c-49.76,49.17-228.48,85.57-441.33,85.57-211.55,0-389.39-36-440.4-84.68a22.53,22.53,0,0,1-6.72-12.92,23.54,23.54,0,0,0-.26,3.4v.28a22.5,22.5,0,0,0,7,16.27c51,48.73,228.85,84.69,440.4,84.69,212.85,0,391.57-36.4,441.33-85.58a22.55,22.55,0,0,0,6.73-16,23.91,23.91,0,0,0-.28-3.53A22.63,22.63,0,0,1,3441,2278.78Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,2197.58c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.2-414.19-66.33a22.45,22.45,0,0,0-33.19,19.71v.29a22.5,22.5,0,0,0,7,16.27c51,48.73,228.85,84.69,440.4,84.69,212.85,0,391.57-36.4,441.33-85.58a22.55,22.55,0,0,0,6.73-16h0A22.46,22.46,0,0,0,3414.38,2197.58Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,2198.76a22.38,22.38,0,0,0-23.65-1.18c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.2-414.19-66.33a22.27,22.27,0,0,0-23.66,1.36c54.17,47.53,229.69,82.35,437.85,82.35C3208.5,2281.57,3384.47,2246.53,3438,2198.76Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,2207.52l-.24.13c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.33-.35-.19-.7-.38-1-.55-8.49-4.08-15,8.29-7,13.24,67.36,41.63,231,71,422.26,71s355.06-29.41,422.36-71.07C3430.22,2215.5,3423.12,2203,3414.62,2207.52Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2226.2c-49.76,49.18-228.48,85.58-441.33,85.58-211.55,0-389.39-36-440.4-84.68a22.53,22.53,0,0,1-6.72-12.92,23.51,23.51,0,0,0-.26,3.39v.29a22.5,22.5,0,0,0,7,16.27c51,48.73,228.85,84.69,440.4,84.69,212.85,0,391.57-36.4,441.33-85.58a22.55,22.55,0,0,0,6.73-16,23.91,23.91,0,0,0-.28-3.53A22.57,22.57,0,0,1,3441,2226.2Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,2145c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.2-414.19-66.33a22.44,22.44,0,0,0-33.19,19.71v.29a22.5,22.5,0,0,0,7,16.27c51,48.72,228.85,84.69,440.4,84.69,212.85,0,391.57-36.4,441.33-85.58a22.55,22.55,0,0,0,6.73-16h0A22.46,22.46,0,0,0,3414.38,2145Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,2146.19a22.38,22.38,0,0,0-23.65-1.18c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.2-414.19-66.33a22.27,22.27,0,0,0-23.66,1.36C2616,2194.18,2791.5,2229,2999.66,2229,3208.5,2229,3384.47,2194,3438,2146.19Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,2155l-.24.13c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.34q-.53-.29-1-.54c-8.49-4.09-15,8.29-7,13.24,67.36,41.63,231,71,422.26,71S3354.72,2209.67,3422,2168C3430.22,2162.93,3423.12,2150.41,3414.62,2155Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2173.63c-49.76,49.18-228.48,85.58-441.33,85.58-211.55,0-389.39-36-440.4-84.68a22.53,22.53,0,0,1-6.72-12.92,23.51,23.51,0,0,0-.26,3.39v.29a22.5,22.5,0,0,0,7,16.27c51,48.72,228.85,84.69,440.4,84.69,212.85,0,391.57-36.4,441.33-85.58a22.55,22.55,0,0,0,6.73-16,23.91,23.91,0,0,0-.28-3.53A22.57,22.57,0,0,1,3441,2173.63Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,2092.43c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.33a22.44,22.44,0,0,0-33.19,19.71v.29a22.5,22.5,0,0,0,7,16.27c51,48.72,228.85,84.69,440.4,84.69,212.85,0,391.57-36.41,441.33-85.58a22.55,22.55,0,0,0,6.73-16h0A22.47,22.47,0,0,0,3414.38,2092.43Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,2093.62a22.4,22.4,0,0,0-23.65-1.19c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.33a22.27,22.27,0,0,0-23.66,1.35c54.17,47.54,229.69,82.36,437.85,82.36C3208.5,2176.43,3384.47,2141.39,3438,2093.62Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,2102.38l-.24.13c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.34q-.53-.28-1-.54c-8.49-4.09-15,8.29-7,13.24,67.36,41.63,231,71,422.26,71s355.06-29.41,422.36-71.08C3430.22,2110.36,3423.12,2097.83,3414.62,2102.38Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2121.06c-49.76,49.18-228.48,85.58-441.33,85.58-211.55,0-389.39-36-440.4-84.69a22.48,22.48,0,0,1-6.72-12.91,23.51,23.51,0,0,0-.26,3.39v.29a22.5,22.5,0,0,0,7,16.27c51,48.72,228.85,84.69,440.4,84.69,212.85,0,391.57-36.41,441.33-85.58a22.55,22.55,0,0,0,6.73-16,24.16,24.16,0,0,0-.28-3.54A22.6,22.6,0,0,1,3441,2121.06Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,2039.86c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.33a22.44,22.44,0,0,0-33.19,19.71v.28a22.51,22.51,0,0,0,7,16.28c51,48.72,228.85,84.69,440.4,84.69,212.85,0,391.57-36.41,441.33-85.58a22.55,22.55,0,0,0,6.73-16h0A22.47,22.47,0,0,0,3414.38,2039.86Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,2041.05a22.38,22.38,0,0,0-23.65-1.19c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.33a22.27,22.27,0,0,0-23.66,1.35c54.17,47.54,229.69,82.36,437.85,82.36C3208.5,2123.86,3384.47,2088.82,3438,2041.05Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,2049.81l-.24.13c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.34l-1-.54c-8.49-4.09-15,8.29-7,13.24,67.36,41.63,231,71,422.26,71s355.06-29.41,422.36-71.07C3430.22,2057.79,3423.12,2045.26,3414.62,2049.81Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2068.49c-49.76,49.18-228.48,85.58-441.33,85.58-211.55,0-389.39-36-440.4-84.69a22.48,22.48,0,0,1-6.72-12.91,23.51,23.51,0,0,0-.26,3.39v.28a22.51,22.51,0,0,0,7,16.28c51,48.72,228.85,84.69,440.4,84.69,212.85,0,391.57-36.41,441.33-85.58a22.55,22.55,0,0,0,6.73-16,24.16,24.16,0,0,0-.28-3.54A22.6,22.6,0,0,1,3441,2068.49Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,1987.29c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.34a22.45,22.45,0,0,0-33.19,19.72v.28a22.51,22.51,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.57a22.55,22.55,0,0,0,6.73-16h0A22.47,22.47,0,0,0,3414.38,1987.29Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,1988.48a22.38,22.38,0,0,0-23.65-1.19c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.34a22.29,22.29,0,0,0-23.66,1.36c54.17,47.54,229.69,82.36,437.85,82.36C3208.5,2071.29,3384.47,2036.24,3438,1988.48Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,1997.24l-.24.13c-71.5,39.29-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33l-1-.54c-8.49-4.09-15,8.29-7,13.24,67.36,41.63,231,71,422.26,71S3354.72,2052,3422,2010.29C3430.22,2005.22,3423.12,1992.69,3414.62,1997.24Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,2015.92c-49.76,49.18-228.48,85.58-441.33,85.58-211.55,0-389.39-36-440.4-84.69a22.48,22.48,0,0,1-6.72-12.91,23.51,23.51,0,0,0-.26,3.39v.28a22.51,22.51,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.57a22.55,22.55,0,0,0,6.73-16,24,24,0,0,0-.28-3.54A22.6,22.6,0,0,1,3441,2015.92Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,1934.72c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.34a22.45,22.45,0,0,0-33.19,19.72v.28a22.52,22.52,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.58a22.51,22.51,0,0,0,6.73-16h0A22.47,22.47,0,0,0,3414.38,1934.72Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,1935.91a22.35,22.35,0,0,0-23.65-1.19c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.34a22.29,22.29,0,0,0-23.66,1.36c54.17,47.54,229.69,82.36,437.85,82.36C3208.5,2018.72,3384.47,1983.67,3438,1935.91Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,1944.67l-.24.13c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33l-1-.54c-8.49-4.09-15,8.29-7,13.24,67.36,41.63,231,71,422.26,71s355.06-29.41,422.36-71.07C3430.22,1952.65,3423.12,1940.12,3414.62,1944.67Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,1963.35c-49.76,49.18-228.48,85.58-441.33,85.58-211.55,0-389.39-36-440.4-84.69a22.51,22.51,0,0,1-6.72-12.91,23.51,23.51,0,0,0-.26,3.39v.28a22.52,22.52,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.58a22.51,22.51,0,0,0,6.73-16,24,24,0,0,0-.28-3.54A22.6,22.6,0,0,1,3441,1963.35Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,1882.15c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.34a22.45,22.45,0,0,0-33.19,19.72v.28a22.52,22.52,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.58a22.51,22.51,0,0,0,6.73-16h0A22.46,22.46,0,0,0,3414.38,1882.15Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,1883.34a22.35,22.35,0,0,0-23.65-1.19c-71.5,39.29-230.29,66.62-414.72,66.62-184,0-342.45-27.2-414.19-66.34a22.29,22.29,0,0,0-23.66,1.36c54.17,47.54,229.69,82.35,437.85,82.35C3208.5,1966.14,3384.47,1931.1,3438,1883.34Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,1892.1l-.24.13c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33l-1-.54c-8.49-4.09-15,8.28-7,13.24,67.36,41.63,231,71,422.26,71s355.06-29.41,422.36-71.07C3430.22,1900.08,3423.12,1887.55,3414.62,1892.1Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,1910.78c-49.76,49.17-228.48,85.58-441.33,85.58-211.55,0-389.39-36-440.4-84.69a22.51,22.51,0,0,1-6.72-12.91,23.51,23.51,0,0,0-.26,3.39v.28a22.52,22.52,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.58a22.51,22.51,0,0,0,6.73-16,24,24,0,0,0-.28-3.54A22.6,22.6,0,0,1,3441,1910.78Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,1829.58c-71.5,39.29-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33a22.45,22.45,0,0,0-33.19,19.72v.28a22.52,22.52,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.58a22.52,22.52,0,0,0,6.73-16h0A22.46,22.46,0,0,0,3414.38,1829.58Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,1830.76a22.38,22.38,0,0,0-23.65-1.18c-71.5,39.29-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33a22.29,22.29,0,0,0-23.66,1.36c54.17,47.53,229.69,82.35,437.85,82.35C3208.5,1913.57,3384.47,1878.53,3438,1830.76Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,1839.53l-.24.13c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.2-414.19-66.33q-.53-.29-1-.54c-8.49-4.09-15,8.28-7,13.24,67.36,41.63,231,71,422.26,71s355.06-29.41,422.36-71.07C3430.22,1847.5,3423.12,1835,3414.62,1839.53Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,1858.21c-49.76,49.17-228.48,85.58-441.33,85.58-211.55,0-389.39-36-440.4-84.69a22.54,22.54,0,0,1-6.72-12.91,23.4,23.4,0,0,0-.26,3.39v.28a22.52,22.52,0,0,0,7,16.28c51,48.72,228.85,84.68,440.4,84.68,212.85,0,391.57-36.4,441.33-85.58a22.52,22.52,0,0,0,6.73-16,23.94,23.94,0,0,0-.28-3.54A22.6,22.6,0,0,1,3441,1858.21Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3414.38,1777c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33a22.45,22.45,0,0,0-33.19,19.72v.28a22.5,22.5,0,0,0,7,16.27c51,48.73,228.85,84.69,440.4,84.69,212.85,0,391.57-36.4,441.33-85.58a22.55,22.55,0,0,0,6.73-16h0A22.46,22.46,0,0,0,3414.38,1777Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="aa660987-1d87-47e6-8ab9-b757996d23f3"
                                                    d="M3438,1778.19a22.38,22.38,0,0,0-23.65-1.18c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.19-414.19-66.33a22.27,22.27,0,0,0-23.66,1.36C2616,1826.18,2791.5,1861,2999.66,1861,3208.5,1861,3384.47,1826,3438,1778.19Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a857f6a8-724c-43df-a326-7c378ec05910"
                                                    d="M3414.62,1787l-.24.14c-71.5,39.28-230.29,66.61-414.72,66.61-184,0-342.45-27.2-414.19-66.33l-1-.54c-8.49-4.09-15,8.28-7,13.23,67.36,41.64,231,71,422.26,71S3354.72,1841.67,3422,1800C3430.22,1794.93,3423.12,1782.41,3414.62,1787Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="ad064edb-de09-4db0-80e4-849f7051a9c0"
                                                    d="M3441,1805.64c-49.76,49.17-228.48,85.57-441.33,85.57-211.55,0-389.39-36-440.4-84.68a22.53,22.53,0,0,1-6.72-12.92,23.54,23.54,0,0,0-.26,3.4v.28a22.5,22.5,0,0,0,7,16.27c51,48.73,228.85,84.69,440.4,84.69,212.85,0,391.57-36.4,441.33-85.58a22.55,22.55,0,0,0,6.73-16,23.91,23.91,0,0,0-.28-3.53A22.63,22.63,0,0,1,3441,1805.64Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="bc96a438-9df8-4078-b420-950506db1bcf"
                                                    d="M3595,1785.59c-129.67-47.29-347.78-78.33-595-78.33s-465.34,31-595,78.33l-125.09-27.8v128.86c0,99.08,322.4,179.4,720.1,179.4s720.1-80.32,720.1-179.4V1757.79Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <ellipse class="a3bf1b66-ea21-4363-9746-a880ced82b93" cx="720.1" cy="179.39" rx="720.1"
                                                    ry="179.39" />
                                                <path class="a18cb088-d9ed-4876-8866-f2c0ddbff925"
                                                    d="M3128.46,1581.25c128.35,32.39,207.59,76.9,207.59,126,0,99.08-322.4,179.39-720.1,179.39-43.85,0-86.78-1-128.46-2.84,130.57,33,312,53.38,512.51,53.38,397.7,0,720.1-80.32,720.1-179.4C3720.1,1669.64,3464.87,1596.34,3128.46,1581.25Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <path class="a28c275f-1865-410a-a30d-a05e07c87ead"
                                                    d="M3000,1927.08c-390.92,0-709.07-77.6-719.81-174.34a44.86,44.86,0,0,0-.29,5c0,99.08,322.4,179.4,720.1,179.4s720.1-80.32,720.1-179.4a44.86,44.86,0,0,0-.29-5C3709.07,1849.48,3390.92,1927.08,3000,1927.08Z"
                                                    transform="translate(-2279.9 -1578.4)" />
                                                <ellipse class="b4a6a66a-8efb-4bcc-97e9-7d8b9c1be116" cx="720.1" cy="161.23" rx="129.96"
                                                    ry="32.38" />
                                            </svg>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>



                    </div>
                </div>


                <!-- CANVAS -->

                <div class="col-xl-10 col-lg-9 col-12 canvasContainer p-0">
                    <div class="canvasInner">
                        <div class="text-right btnBar row m-0 align-items-center">
                            <div class="text-left pl-4">
                                <a href="#" class="navbar-brand">
                                    <img src="Assets/Images/MyLogo.png" width="160" alt="" class="img-fluid">
                                </a>
                            </div>
                            <div class="btnss">

                                <div class="ml-auto">
                                    <asp:LinkButton ID="CustomDesignerButton" OnClick="CustomDesignerButton_Click" CssClass="btn btn-main mr-2" runat="server">Reset<i class="ml-2 fa fa-refresh"></i></asp:LinkButton>
                                    <asp:LinkButton OnClick="SaveBtn_Click" CssClass="btn btn-main mr-2" ID="SaveBtn" runat="server">Next <i class="ml-2 fa fa-angle-right"></i></asp:LinkButton>
                                </div>
                                <div class="mr-auto">
                                    <!--<button class="btn mr-2 csNavToggle">
                                        <i class="ml-2 fa fa-bars"></i>
                                    </button> -->
                                    <a href="javascript:void(0)" class="btn mr-2 csNavToggle">
                                        <i class="ml-2 fa fa-bars"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="text-center CanvasMainHeading">
                        <h1>Customize Your Shirt</h1>
                    </div>

                    <div class="text-center canvas" id="myCanvas">
                        <!-- <p>Drop Your Shirt Design Here</p> -->
                        <div class="cnvInv">
                        </div>


                    </div>
                    <div class="ShirtStylesContainer d-none">
                        <svg id="SimpleShirt" class="ShirtSvg" xmlns="http://www.w3.org/2000/svg"
                            xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 445.62 431.9">
                            <defs>
                                <style>
                                    .MainShirt-cls-1 {
                                        fill: none;
                                        stroke: #000;
                                        stroke-miterlimit: 10;
                                    }

                                    .MainShirt-cls-2 {
                                        clip-path: url(#MainShirt-clip-path);
                                    }

                                    .MainShirt-cls-3 {
                                        clip-path: url(#MainShirt-clip-path-2);
                                    }

                                    .MainShirt-cls-4 {
                                        clip-path: url(#MainShirt-clip-path-3);
                                    }

                                    .MainShirt-cls-5 {
                                        clip-path: url(#MainShirt-clip-path-4);
                                    }
                                </style>
                                <clipPath id="MainShirt-clip-path" transform="translate(48)">
                                    <path id="MainBackStroke" class="MainShirt-cls-1"
                                        d="M55.7,45.39s27.19,98.87,24.72,113.7c0,0,9.27,105.67-6.8,221.84,0,0,91.46,35.84,202.69,0,0,0-13.6-187.85-6.18-215,0,0,6.18-72.92,24.72-119.88C294.85,46,183.62-24.43,55.7,45.39Z" />
                                </clipPath>
                                <clipPath id="MainShirt-clip-path-2" transform="translate(48)">
                                    <rect class="MainShirt-cls-1" x="167.55" y="15.11" width="12.36" height="381.89" />
                                </clipPath>
                                <clipPath id="MainShirt-clip-path-3" transform="translate(48)">
                                    <path id="Sleeve2Stroke" class="MainShirt-cls-1"
                                        d="M15.54,345.09S-3,167.13,55.09,46c0,0,21,53.14,24.71,113.7,0,0-30.89,139.66-28.42,185.38C51.38,345.09,32.84,352.51,15.54,345.09Z" />
                                </clipPath>
                                <clipPath id="MainShirt-clip-path-4" transform="translate(48)">
                                    <path id="Sleeve1Stroke" class="MainShirt-cls-1"
                                        d="M334.08,345.09s18.54-178-39.55-299.08c0,0-21,53.14-24.72,113.7,0,0,30.9,139.66,28.43,185.38C298.24,345.09,316.78,352.51,334.08,345.09Z" />
                                </clipPath>
                                <image id="MainShirt-image" width="768" height="1024" xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                            </defs>
                            <g id="WholeShirtGroup">
                                <g id="MainBack">
                                    <g id="MainBackClipped">
                                        <g class="MainShirt-cls-2">
                                            <use id="MainBackClippedImage" transform="translate(61) scale(0.42)"
                                                xlink:href="#MainShirt-image" />
                                        </g>
                                        <path id="MainBackStroke-2" data-name="MainBackStroke" class="MainShirt-cls-1"
                                            d="M55.7,45.39s27.19,98.87,24.72,113.7c0,0,9.27,105.67-6.8,221.84,0,0,91.46,35.84,202.69,0,0,0-13.6-187.85-6.18-215,0,0,6.18-72.92,24.72-119.88C294.85,46,183.62-24.43,55.7,45.39Z"
                                            transform="translate(48)" />
                                    </g>
                                </g>
                                <g id="Strip">
                                    <g class="MainShirt-cls-3">
                                        <use id="ClippedStrokeImage" transform="translate(39 15) scale(0.37)"
                                            xlink:href="#MainShirt-image" />
                                    </g>
                                    <rect class="MainShirt-cls-1" x="215.55" y="15.11" width="12.36" height="381.89" />
                                </g>
                                <g id="Sleeves">
                                    <g id="Sleeve2">
                                        <g class="MainShirt-cls-4">
                                            <use id="Sleeve2ClippedImage" transform="translate(-48 46) scale(0.33)"
                                                xlink:href="#MainShirt-image" />
                                        </g>
                                        <path id="Sleeve2Stroke-2" data-name="Sleeve2Stroke" class="MainShirt-cls-1"
                                            d="M15.54,345.09S-3,167.13,55.09,46c0,0,21,53.14,24.71,113.7,0,0-30.89,139.66-28.42,185.38C51.38,345.09,32.84,352.51,15.54,345.09Z"
                                            transform="translate(48)" />
                                    </g>
                                    <g id="Sleeve1">
                                        <g class="MainShirt-cls-5">
                                            <use id="Sleeve1ClippedImage" transform="matrix(-0.33, 0, 0, 0.33, 397.62, 46)"
                                                xlink:href="#MainShirt-image" />
                                        </g>
                                        <path id="Sleeve1Stroke-2" data-name="Sleeve1Stroke" class="MainShirt-cls-1"
                                            d="M334.08,345.09s18.54-178-39.55-299.08c0,0-21,53.14-24.72,113.7,0,0,30.9,139.66,28.43,185.38C298.24,345.09,316.78,352.51,334.08,345.09Z"
                                            transform="translate(48)" />
                                    </g>
                                </g>
                            </g>
                        </svg>
                        <svg id="LongBottomShirtDesign" class="ShirtSvg" xmlns="http://www.w3.org/2000/svg"
                            xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 445.62 431.9">
                            <defs>
                                <style>
                                    .LongBottom-cls-1 {
                                        fill: none;
                                        stroke: #000;
                                        stroke-miterlimit: 10;
                                    }

                                    .LongBottom-cls-2 {
                                        clip-path: url(#LongBottom-clip-path);
                                    }

                                    .LongBottom-cls-3 {
                                        clip-path: url(#LongBottom-clip-path-2);
                                    }

                                    .LongBottom-cls-4 {
                                        clip-path: url(#LongBottom-clip-path-3);
                                    }

                                    .LongBottom-cls-5 {
                                        clip-path: url(#LongBottom-clip-path-4);
                                    }
                                </style>
                                <clipPath id="LongBottom-clip-path" transform="translate(48.13 10.3)">
                                    <path id="MainBackStroke" class="LongBottom-cls-1"
                                        d="M55.57,35.09S82.76,134,80.29,148.79c0,0,9.27,105.67-6.8,221.84,0,0,94,93.87,202.69,0,0,0-13.6-187.85-6.18-215,0,0,6.18-72.92,24.71-119.88C294.71,35.71,183.48-34.73,55.57,35.09Z" />
                                </clipPath>
                                <clipPath id="LongBottom-clip-path-2" transform="translate(48.13 10.3)">
                                    <rect class="cls-1" x="167.42" y="4.81" width="12.58" height="407.19" />
                                </clipPath>
                                <clipPath id="LongBottom-clip-path-3" transform="translate(48.13 10.3)">
                                    <path id="Sleeve2Stroke" class="cls-1"
                                        d="M15.41,334.79S-3.13,156.83,55,35.71c0,0,21,53.14,24.72,113.7,0,0-30.9,139.66-28.42,185.38C51.25,334.79,32.71,342.21,15.41,334.79Z" />
                                </clipPath>
                                <clipPath id="LongBottom-clip-path-4" transform="translate(48.13 10.3)">
                                    <path id="Sleeve1Stroke" class="cls-1"
                                        d="M334,334.79s18.53-178-39.55-299.08c0,0-21,53.14-24.72,113.7,0,0,30.9,139.66,28.43,185.38C298.11,334.79,316.64,342.21,334,334.79Z" />
                                </clipPath>
                                <image id="LongBottom-image" width="768" height="1024" xlink:href="/Assets/Images/Red-Cotton-Linen.jpg" />
                            </defs>
                            <g id="LongBottomShirt">
                                <g id="MainBackLongBottom">
                                    <g id="MainBackClipped">
                                        <g class="LongBottom-cls-2">
                                            <use id="MainBackClippedImage" transform="translate(61) scale(0.42)"
                                                xlink:href="#LongBottom-image" />
                                        </g>
                                        <path id="MainBackStroke-2" data-name="MainBackStroke" class="LongBottom-cls-1"
                                            d="M55.57,35.09S82.76,134,80.29,148.79c0,0,9.27,105.67-6.8,221.84,0,0,94,93.87,202.69,0,0,0-13.6-187.85-6.18-215,0,0,6.18-72.92,24.71-119.88C294.71,35.71,183.48-34.73,55.57,35.09Z"
                                            transform="translate(48.13 10.3)" />
                                    </g>
                                </g>
                                <g id="LongBottom-Strip">
                                    <g class="LongBottom-cls-3">
                                        <use id="ClippedStrokeImage" transform="translate(36.55 4.69) scale(0.38 0.4)"
                                            xlink:href="#LongBottom-image" />
                                    </g>
                                    <rect class="LongBottom-cls-1" x="215.55" y="15.11" width="12.58" height="407.19" />
                                </g>
                                <g id="LongBottom-Sleeves">
                                    <g id="LongBottom-Sleeve2">
                                        <g class="LongBottom-cls-4">
                                            <use id="LongBottom-Sleeve2ClippedImage" transform="translate(-48.13 35.7) scale(0.33)"
                                                xlink:href="#LongBottom-image" />
                                        </g>
                                        <path id="LongBottom-Sleeve2Stroke-2" data-name="Sleeve2Stroke" class="LongBottom-cls-1"
                                            d="M15.41,334.79S-3.13,156.83,55,35.71c0,0,21,53.14,24.72,113.7,0,0-30.9,139.66-28.42,185.38C51.25,334.79,32.71,342.21,15.41,334.79Z"
                                            transform="translate(48.13 10.3)" />
                                    </g>
                                    <g id="LongBottom-Sleeve1">
                                        <g class="LongBottom-cls-5">
                                            <use id="LongBottom-Sleeve1ClippedImage" transform="matrix(-0.33, 0, 0, 0.33, 397.48, 35.7)"
                                                xlink:href="#LongBottom-image" />
                                        </g>
                                        <path id="LongBottom-Sleeve1Stroke-2" data-name="Sleeve1Stroke" class="LongBottom-cls-1"
                                            d="M334,334.79s18.53-178-39.55-299.08c0,0-21,53.14-24.72,113.7,0,0,30.9,139.66,28.43,185.38C298.11,334.79,316.64,342.21,334,334.79Z"
                                            transform="translate(48.13 10.3)" />
                                    </g>
                                </g>
                            </g>
                        </svg>
                    </div>
                </div>
            </div>
            <!-- CANVAS -->
        </div>
    </main>
    <asp:HiddenField ID="CustomFabriceImageHiddenField" runat="server" />
    <asp:HiddenField ID="ShirtStyleHiddenField" runat="server" />
    <asp:HiddenField ID="collarHiddenField" runat="server" />
    <asp:HiddenField ID="cuffHiddenField" runat="server" />
    <asp:HiddenField ID="btnsHiddenField" runat="server" />
    <asp:HiddenField ID="pocketHiddenField" runat="server" />
    <asp:HiddenField ID="nopocketHiddenField" runat="server" />
    <asp:HiddenField ID="BtnColorHiddenField" runat="server" />
    <asp:HiddenField ID="ThrdColorHiddenField" runat="server" />
    <asp:HiddenField ID="checkToShowMainImageHiddenField" runat="server" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
    <script>
        $(document).ready(function () {
            $("#SaveBtn").click(function () {
                HandleIT();
            });

            function HandleIT() {
                PageMethods.CaptureImage(onSucess, onError)
                function onSucess(result) {
                    alert(result);
                }
                function onError(result) {
                    alert('Something wrong.');
                }
                //  PageMethods.ProcessIT(name, address, onSucess, onError);
                // function onSucess(result) {
                //    alert(result);
                //  }

                //   function onError(result) {
                //     alert('Something wrong.');
                //    }
            }
        });
    </script>
    <script>         
        var myValue = "";
        $(".SimpleShirt").click(() => {
            myValue = "Simple Shirt";
            $("#<%=ShirtStyleHiddenField.ClientID%>").val(myValue);
        })
        $(".LongBottomShirt").click(() => {
            myValue = "Long Bottom Shirt";
            $("#<%=ShirtStyleHiddenField.ClientID%>").val(myValue);
        })
        console.log(myValue);

    </script>
    <script>

        var getCheckbool = $("#<%=checkToShowMainImageHiddenField.ClientID%>").val();
        if (getCheckbool == "True") {
            $("#choose").modal('show');
        }
    </script>
    <script>
        $('.noPocket').click(function () {
            $('.cnvInv .pocket').remove();
            $('.inner_drag_bar .pocket').removeClass('dgAct');
        });
        var collarVal = "";
        var cuffVal = "";
        var btns = "";
        var pocket = "";
        $(".collars").each(function () {
            $(this).click(() => {
                collarVal = $(this).siblings(".drag_name").text();
                console.log(collarVal);
                $("#<%=collarHiddenField.ClientID%>").val(collarVal);

            })
        })
        $(".cuffs").each(function () {
            $(this).click(() => {
                cuffVal = $(this).siblings(".drag_name").text();
                $("#<%=cuffHiddenField.ClientID%>").val(cuffVal);
            })
        });
        $(".buttons").click(() => {
            btns = "button";
            $("#<%=btnsHiddenField.ClientID%>").val(btns);
        });

        $(".pocket").click(() => {
            pocket = "pocket";
            $("#<%=pocketHiddenField.ClientID%>").val(pocket);
        });
        $(".noPocket").click(() => {
            pocket = "";
        });

        // Button Color Value
        var btnColorValue = "";
        var threadColorValue = "";
        $(".buttonColorChange a").each(function () {
            $(this).click(function () {
                btnColorValue = $(this).attr("class");
                $("#<%=BtnColorHiddenField.ClientID%>").val(btnColorValue);
            });
        });
        $(".threadColor a").each(function () {
            $(this).click(() => {
                threadColorValue = $(this).attr("class");
                $("#<%=ThrdColorHiddenField.ClientID%>").val(threadColorValue);
            })
        })

    </script>

    <script>
        var attribute = $(".drag").attr("data-name");
        //Put Image reference here         
        var imgURl = $("#<%=CustomFabriceImageHiddenField.ClientID%>").val();
        $("svg image").attr("xlink:href", imgURl);
    </script>
    <script>

        const SaveBtn = document.getElementById("SaveBtn");
        const DownloadBtn = document.getElementById("DownloadBtn");
        const myCanvas = document.querySelector(".canvas");
        // const cxt = myCanvas.getContext("2d");
        SaveBtn.addEventListener("click", function () {
            html2canvas(myCanvas).then(function (myCanvas) {
                console.log(myCanvas.toDataURL("image/jpeg", 0.9))
            })
        })

    </script>
    <script>
        var getCheckbool = $("#<%=checkToShowMainImageHiddenField.ClientID%>").val();
        console.log(getCheckbool);
        if (getCheckbool == "False") {
            $(window).load(function () {
                $(".startModal").modal("show");
            })
        }
    </script>
    <script>
        $(".drag_name h6").wrapInner("<strong></strong>");
    </script>
    <script>
        $(".fnav").remove();
        $(".snav").remove();
        $("footer").remove();
    </script>
</asp:Content>
