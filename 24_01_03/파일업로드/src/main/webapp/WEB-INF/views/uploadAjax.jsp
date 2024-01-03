<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <style>
        .uploadResult {
            width: 100%;
            background-color: grey;
        }

        .uploadResult ul {
            display: flex;
            flex-flow: row;
            justify-content: center;
            align-items: center;
        }

        .uploadResult ul li {
            list-style: none;
            padding: 10px;
            align-content: center;
            text-align: center;
        }

        .uploadResult ul li img {
            width: 100px;
        }
        .uploadResult ui li span{
            color:white;
        }
        .bigPictureWrapper {
            position: absolute;
            display: none;
            justify-content: center;
            align-items: center;
            top:0%;
            width:100%;
            height:100%;
            background-color: grey;
            z-index: 100;
        }

        .bigPicture {
            position: relative;
            display:flex;
            justify-content: center;
            align-items: center;
        }
        .bigPicture img{
            width: 600px;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Upload Ajax</title>
</head>
<body>
<h1>Upload with Ajax</h1>


<div class='uploadDiv'>
    <input type='file' name='uploadFile' multiple>
</div>

<div class='uploadResult'>
    <ul>

    </ul>
</div>
<div class='bigPictureWrapper'>
    <div class='bigPicture'>

    </div>
</div>

<button id="uploadBtn">Upload</button>


<script>


    $(document).ready(function (){
        var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
        var maxSize = 5242880; //5MB

        function checkExtension(fileName, fileSize) {

            if (fileSize >= maxSize) {
                alert("파일 사이즈 초과");
                return false;
            }

            if (regex.test(fileName)) {
                alert("해당 종류의 파일은 업로드할 수 없습니다.");
                return false;
            }
            return true;
        }

        var cloneObj  = $(".uploadDiv").clone();

        $("#uploadBtn").on("click", function (e){
            let formDate = new FormData();

            let inputFile = $("input[name='uploadFile']");

            let files = inputFile[0].files;

            console.log(files);

            /* add filedate to formaata */
            for(let i = 0; i< files.length; i++){
                if(!checkExtension(files[i].name, files[i].sign)){
                    return flase;
                }

                formDate.append("uploadFile", files[i]);
            }

            $.ajax({
                url: '/uploadAjaxAction',
                processData: false,
                contentType: false,
                data: formDate,
                type: 'POST',
                dataType: 'json',
                success: function (result){
                    alert("Uploaded");
                    console.log(result);

                    showUploadedFile(result);

                    $(".uploadDiv").html(cloneObj.html());
                }
            }); //$.ajax

        });


        let uploadResult = $(".uploadResult ul");

        function showUploadedFile(uploadResultArr){

            var str = "";

            $(uploadResultArr).each(function(i, obj){

                if(!obj.image){
                    let fileCallPath  = encodeURIComponent(obj.uploadPath + "/" + obj.uuid + "_" + obj.fileName);
                    //str += "<li><img src='/resources/img/attach.png'>"+obj.fileName+"</li>";
                    str += "<li><a href='/download?fileName="+fileCallPath+"'>"+"<img src='/resources/img/attach.png'>"+obj.fileName+"</a></li>"
                }else{

                    let fileCallPath =  encodeURIComponent( obj.uploadPath+ "/s_"+obj.uuid+"_"+obj.fileName);
                    str += "<li><img src='/display?fileName="+fileCallPath+"'><li>";
                }
            });
            uploadResult.append(str);
        }
    });
</script>


</body>
</html>
