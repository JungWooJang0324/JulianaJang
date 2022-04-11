<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="http://localhost/html_prj/common/css/main_20220321.css">
<style type="text/css">
</style>
<!-- JQuery CDN -->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<!-- include summernote-ko-KR -->
<script src="http://127.0.0.1:5109/html_prj/common/js/summernote-0.8.18-dist/lang/summernote-ko-KR.js"></script>
<script type="text/javascript">
$(function() {
	  $('#summernote').summernote({
	        placeholder: '경험을 작성해주세요',
	        focus: true,
	        height: 400,
	        toolbar: [
	          ['style', ['style']],
	          ['font', ['bold', 'underline', 'clear']],
	          ['color', ['color']],
	          ['para', ['ul', 'ol', 'paragraph']],
	          ['table', ['table']],
	          ['insert', ['link', 'picture', 'video']],
	          ['view', ['fullscreen', 'codeview', 'help']]
	        ]
	      });
	  
	  $("#btn").click(function() {
		$("#frm").submit();
	})
	});
</script>
</head>
<body><form method="post" id="frm" action="form_process.jsp">
  <textarea id="summernote" name="editordata"></textarea>
  <br/>
  <input type="button" value="전송" id="btn" class="btn btn-success"/>
</form>

</body>
</html>