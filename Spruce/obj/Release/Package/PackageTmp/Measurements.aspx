<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Measurements.aspx.cs" Inherits="Spruce.User.Measurements" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <main>
      
        <div class="container-fluid">
            <div class="row m-0 mt-4">
                <div class="col-md-3">
                    <div class="user__sidebar">
                        <div class="welcome__user">
                            <h5>Welcome Guest</h5>
                        </div>
                         <ul>
                            <li class="user__item"><a class="user__link" href="Dashboard">Dashboard <i class="user__link fa fa-angle-right ml-2"></i></a>
                            </li>
                            <li class="user__item"><a class="user__link user__active" href="CustomShirtOrders">Custom Shirt Orders <i class="fa fa-angle-right ml-2"></i></a></li>
                            <li class="user__item"><a class="user__link" href="ProductOrders">Product Order <i class="fa fa-angle-right ml-2"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-9">
                    <h1><b>Measurements</b></h1>
                    <div class="mt-5 mb-5">
                        <div class="table-responsive">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>S.No</th>
                                        <th>Size</th>
                                        <th>Measurements</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <th>Collar</th>
                                        <td>5.5</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <th>Shoulder</th>
                                        <td>5.5</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <th>Chest</th>
                                        <td>5.5</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <th>Waist</th>
                                        <td>5.5</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <th>Sleeve Length</th>
                                        <td>5.5</td>
                                    </tr>
                                    <tr>
                                        <td>6</td>
                                        <th>Shirt Length</th>
                                        <td>5.5</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    
                    
                </div>
            </div>
        </div>
    </main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
