function GetStudentData() {

    var fname = document.getElementById("StudentDropdownList").value;

    $.ajax({
        url: 'studentinfo.aspx/GetStudentByFName',
        type: 'post',
        data: JSON.stringify({"FName": fname}),
        contenttype: 'application/json',
        async: false,
        success: function (data) {
            data = JSON.parse(data);
            console.log(data.toStrig());
        }
    });
}