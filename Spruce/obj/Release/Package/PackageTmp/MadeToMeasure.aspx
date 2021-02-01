<%@ Page Title="Made To Measure" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MadeToMeasure.aspx.cs" Inherits="Spruce.MadeToMeasure" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <main>      
        <div id="madeToMeasure" class="pt-5 pb-5">
            <div class="container">
               <div class="MadeToMeasureForm mt-4">
                  <div class="form">
                     <div>
                        <h1><strong>Made To Measure</strong></h1>
                     </div>
                     <label for="">Please fill out all these fields</label>
                     <div class="form-row">
                        <div class="form-group col-md-6">
                           <label for="">Collar</label>
                           <asp:DropDownList runat="server" name="" id="CollarDropdown" CssClass="form-control">
                              <asp:ListItem value="14">14</asp:ListItem>
                              <asp:ListItem value="14.5">14.5</asp:ListItem>
                              <asp:ListItem value="15">15</asp:ListItem>
                              <asp:ListItem value="15.5">15.5</asp:ListItem>
                              <asp:ListItem value="16">16</asp:ListItem>
                              <asp:ListItem value="16.5">16.5</asp:ListItem>
                              <asp:ListItem value="17">17</asp:ListItem>
                              <asp:ListItem value="17.5">17.5</asp:ListItem>
                              <asp:ListItem value="18">18</asp:ListItem>
                           </asp:DropDownList>
                        </div>
                        <div class="form-group col-md-6">
                           <label for="">Shoulder</label>
                           <asp:DropDownList runat="server" name="" id="ShoulderDropdown" CssClass="form-control">
                              <asp:ListItem value="17">17</asp:ListItem>
                              <asp:ListItem value="18">18</asp:ListItem>
                              <asp:ListItem value="18.5">18.5</asp:ListItem>
                              <asp:ListItem value="20">20</asp:ListItem>
                              <asp:ListItem value="21">21</asp:ListItem>
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="form-row">
                        <div class="form-group col-md-6">
                           <label for="">Chest</label>
                           <asp:DropDownList runat="server" name="" id="ChestDropdown" CssClass="form-control">
                              <asp:ListItem value="20.5">20.5</asp:ListItem>
                              <asp:ListItem value="22.5">22.5</asp:ListItem>
                              <asp:ListItem value="24.5">24.5</asp:ListItem>
                              <asp:ListItem value="26.5">26.5</asp:ListItem>
                           </asp:DropDownList>
                        </div>
                        <div class="form-group col-md-6">
                           <label for="">Waist</label>
                           <asp:DropDownList runat="server" name="" id="WaistDropdown" CssClass="form-control">
                              <asp:ListItem value="18">18</asp:ListItem>
                              <asp:ListItem value="19">19</asp:ListItem>
                              <asp:ListItem value="21">21</asp:ListItem>
                              <asp:ListItem value="23">23</asp:ListItem>
                              <asp:ListItem value="25">25</asp:ListItem>
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="form-row">
                        <div class="form-group col-md-6">
                           <label for="">Sleeve Length</label>
                           <asp:DropDownList runat="server" name="" id="SleeveDropdown" CssClass="form-control">
                              <asp:ListItem value="24.5">24.5</asp:ListItem>
                              <asp:ListItem value="25">25</asp:ListItem>
                              <asp:ListItem value="25.5">25.5</asp:ListItem>
                              <asp:ListItem value="26">26</asp:ListItem>
                           </asp:DropDownList>
                        </div>
                        <div class="form-group col-md-6">
                           <label for="">Shirt Length</label>
                           <asp:DropDownList runat="server" name="" id="ShirtDropdown" class="form-control">
                              <asp:ListItem value="28.5">28.5</asp:ListItem>
                              <asp:ListItem value="29">29</asp:ListItem>
                              <asp:ListItem value="29.5">29.5</asp:ListItem>
                              <asp:ListItem value="30">30</asp:ListItem>
                              <asp:ListItem value="30.5">30.5</asp:ListItem>
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="text-right">
                         <asp:Button Text="Create Order" OnClick="SaveButton_Click" ID="SaveButton" CssClass="btn btn-main" runat="server" />
                     </div>
                  </div>
               </div>
            </div>
         </div>
    </main>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
