/**
 * Created with IntelliJ IDEA.
 * User: Khadija
 * Date: 12/24/12
 * Time: 9:57 AM
 * To change this template use File | Settings | File Templates.
 */

function checkFileSize(id){
    var fileSize = getFileSize(id);
    alert(fileSize);
    if(fileSize > 102400){
        alert("The file size is grater than 100KB.\nPlease select smaller file.");
        document.getElementById('hidden'+id).value = "false";
        return false;
    }else{
        document.getElementById('hidden'+id).value = "true";
    }
}