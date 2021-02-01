<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StandardShirtSizes.aspx.cs" Inherits="Spruce.StandardShirtSizes" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="container">
            <div id="standardShirt" class="mt-5 mb-5">
                <h1><strong>Standard Size Shirt</strong></h1>
                <div class="row m-0">
                    <div class="col-sm-6 mt-4 p-2">
                        <label for="">Select Size</label>
                        <select id="MainSelect" class="form-control">
                            <option value="" disabled selected>Select shirt size</option>
                            <option value="small">Small</option>
                            <option value="medium">Medium</option>
                            <option value="large">Large</option>
                        </select>
                    </div>
                    <div class="col-sm-6 mt-4 p-2">
                        <label for="">Select Collar Size</label>
                        <select
                            name=""
                            id="sizeSelection"
                            class="form-control">
                        </select>
                    </div>
                    <div class="col-sm-6 mt-4 p-2">
                        <label>Select Fit</label>
                        <select class="form-control" id="firSelection">
                            <option value="regularFit">Regular Fit</option>
                            <option value="slimFit">Slim Fit</option>
                        </select>
                    </div>
                </div>
                <div class="mt-4">
                    <h3><strong>Sizes</strong></h3>
                    <div class="table-responsive mt-3">
                        <table class="table tRounded table-hover text-center" id="mytbl">
                            <thead>
                                <tr>
                                    <th>Collar Size</th>
                                    <th>Shoulder</th>
                                    <th>Chest</th>
                                    <th>Waist</th>
                                    <th>Sleeve Length</th>
                                    <th>Shirt Length</th>
                                </tr>
                            </thead>
                            <tbody class="mytbody"></tbody>
                        </table>
                    </div>
                </div>
                <div class="text-right mt-5 pt-5">
                    <asp:Button ID="Button1" OnClick="Button1_Click" CssClass="btn btn-main sizeSubmit" runat="server" Text="Submit" />                    
                </div>
            </div>
        </div>
    </main>
    <asp:HiddenField ID="CollarSizeHiddenField" runat="server" />
    <asp:HiddenField ID="ShoulderHiddenField" runat="server" />
    <asp:HiddenField ID="ChestHiddenField" runat="server" />
    <asp:HiddenField ID="WaistHiddenField" runat="server" />
    <asp:HiddenField ID="SleeveLengthHiddenField" runat="server" />
    <asp:HiddenField ID="ShirtLengthHiddenField" runat="server" />
    <script>        
        $('#MainContent_Button1').click(function () {
            var sumVal = 0;
            var table = document.getElementById("mytbl");
            for (var i = 0; i < 1; i++) {
                $("#<%=CollarSizeHiddenField.ClientID%>").val(table.rows[1].cells[0].innerHTML);
                $("#<%=ShoulderHiddenField.ClientID%>").val(table.rows[1].cells[1].innerHTML);
                $("#<%=ChestHiddenField.ClientID%>").val(table.rows[1].cells[2].innerHTML);
                $("#<%=WaistHiddenField.ClientID%>").val(table.rows[1].cells[3].innerHTML);
                $("#<%=SleeveLengthHiddenField.ClientID%>").val(table.rows[1].cells[4].innerHTML);
                $("#<%=ShirtLengthHiddenField.ClientID%>").val(table.rows[1].cells[5].innerHTML);                
            }            
        });
</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsPlaceHolder" runat="server">
</asp:Content>
