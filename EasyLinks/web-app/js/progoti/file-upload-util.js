function fileUpload(id,contextPath, divId, bulkImport) {
    document.getElementById(divId).innerHTML = "";
//    alert(id);
//    checkFileSize(id);
    var photographUrl = document.getElementById(id).files[0];
//    alert(document.getElementById(id).value);
    var formdata = new FormData();
    formdata.append(id, photographUrl);

    var xhr = new XMLHttpRequest();
    xhr.open("POST",contextPath+"/FileUpload", true);

    xhr.send(formdata);
    xhr.onload = function(e) {
        if (this.status == 200) {
            if(bulkImport){
                window.setTimeout(showDiv(id, contextPath, divId),3600000000);
            }else{
                $("#previewPhoto").html(this.response);
            }
        }
    };
}
function showDiv(id, contextPath, divId){
    $.ajax({
        url: contextPath+'/ShowAndConvertExcel',
        type: 'post',
        success: function(responseText) {
//            alert(responseText);
            $('#'+divId).html(responseText);
        },
        error:function(){
            alert("Error occured.");
        }
    });
}

