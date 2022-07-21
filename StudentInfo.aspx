<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="PopulatingStudent_Info.StudentInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Information</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <!--<script src="scrips/StudentInfo.js"></script>-->
    <link href="css/StudentInfo.css" rel="stylesheet" />

    <script>
        function GetStudentData() {

            var stdId = document.getElementById("StudentDropdownList").value;
            if (stdId == "") return;

            $.ajax({
                url: 'StudentInfo.aspx/GetStudentByFName',
                type: 'post',
                data: JSON.stringify({ "stdId": stdId }),
                dataType: 'JSON',
                contentType: 'application/json',
                async: false,
                success: function (data) {
                    data1 = JSON.parse(data.d);
                    console.log(data1);
                    
                    
                }
            });
            return false;
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h1>Student Information</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-4">
                    <asp:Label CssClass="col-form-label-lg" Text="Select Student" runat="server" />
                </div>
                <div class="col-4 depdwn">
                    <!--<select id="stdDropDown" onclick="javascript: GetStudentDropDownList();" onchange="javascript: GetStudentData();" cssclass="dropdown-header btn-lg" runat="server">
                        <option selected>select</option>
                    </select>-->
                    <asp:DropDownList ID="StudentDropdownList" runat="server" CssClass="dropdown-header btn-lg" >
                        
                    </asp:DropDownList>
                </div>
                <div class="col-4">
                    <input type="button" value="Get Data" onclick ="return GetStudentData()" class ="btn btn-outline-success" />
                </div>
            </div>
            <div class="row toHide">
                <div class="col-12">
                    <h4>Student Details</h4>
                </div>
            </div>
            <div class="row toHide">
                <div class="col-3">
                    <asp:Label Text="ID:" runat="server" CssClass="col-form-label-lg" />
                </div>
                <div class="col-3">
                    <asp:Label Text="" ID="stdId" runat="server" CssClass="col-form-label-lg" />
                </div>
            </div>
            <div class="row toHide">
                <div class="col-3">
                    <asp:Label Text="first Name:" runat="server" CssClass="col-form-label-lg" />
                </div>
                <div class="col-3">
                    <asp:Label Text="" ID="stdFName" runat="server" CssClass="col-form-label-lg" />
                </div>
                <div class="col-3">
                    <asp:Label Text="Last Name:" runat="server" CssClass="col-form-label-lg" />
                </div>
                <div class="col-3">
                    <asp:Label Text="" ID="stdLName" runat="server" CssClass="col-form-label-lg" />
                </div>
            </div>
            <div class="row toHide">
                <div class="col-3">
                    <asp:Label Text="Age:" runat="server" CssClass="col-form-label-lg" />
                </div>
                <div class="col-3">
                    <asp:Label Text="" ID="stdAge" runat="server" CssClass="col-form-label-lg" />
                </div>
                <div class="col-3">
                    <asp:Label Text="Address:" runat="server" CssClass="col-form-label-lg" />
                </div>
                <div class="col-3">
                    <asp:Label Text="" ID="stdAddress" runat="server" CssClass="col-form-label-lg" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
