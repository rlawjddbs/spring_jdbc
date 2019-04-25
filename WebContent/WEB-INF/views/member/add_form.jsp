<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:8080/jsp_prj/common/css/main_v190130.css" />
<style type="text/css">
	#wrap{ margin: 0px auto; width:800px; height:860px;  }
	#header{ mwidth:800px; height:140px; background:#FFF url('http://localhost:8080/jsp_prj/common/images/header_bg.png'); position:relative; }
	#headerTitle{ font-family: HY견고딕, 고딕; font-size: 35px; font-weight:bold; text-align:center; position:absolute; left:300px; top:30px; }
	#container{ width:800px; }
	#footer{ width:800px; height:120px; }
	#footerTitle{ float:right; font-size:15px; padding-top:20px; padding-right: 20px;}
	/* td{ padding:10px; } */
	#subject { padding-top:10px; }
	#subject > a { padding-left:10px; padding-right:10px; color:blue; font-weight:bold; transition-duration:0.3s; }
	#subject > a:hover { text-decoration:none; color:#A3CB38; }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#upfile").change(function(){
			var upfile = $("#upfile").val();
			if( upfile == "" ){
				alert("이미지를 선택해주세요.");
				return;
			} // end if
			
			readURL(this);
			
			/* var img=$("#img");
			img.src=upfile;
			alert( img.src ); */
			
		}); // click
		
		function readURL(input) {
		    if (input.files && input.files[0]) {
		        var reader = new FileReader();
		        reader.onload = function (e) {
		            $('#img').attr('src', e.target.result);
		        }//function
		        reader.readAsDataURL(input.files[0]);
		    }//end if
		}//readURL
	}); // ready
</script>
</head>
<body>
	<div id="wrap">
		<div id="header">
			<div id="headerTitle">SIST Class4</div>
			<div style="padding-top:100px;">
				<%-- <c:import url="/common/jsp/main_menu.jsp" /> --%>
			</div>
		</div>
		<div id="container">
			
			<form action="addmember_process.do" method="post" enctype="multipart/form-data">
				<table border="1" cellspacing="0">
					<tr>
						<th colspan="3"><h2>회원정보추가</h2></th>
					</tr>
					<tr>
						<td width="100">이미지</td>
						<td width="100">이름</td>
						<td width="100">
							<input type="text" name="name" class="inputBox" />
						</td>
					</tr>
					<tr>
						<td rowspan="4">
							<img src="common/images/default.png" id="img" style="width:100px; height:100px" /><br />
							<input type="file" name="upfile" class="inputBox" id="upfile" />
						</td>
					</tr>
					<tr>
						<td>지역</td>
						<td><input type="text" name="loc" class="inputBox" /></td>
					</tr>
					<tr>
						<td>출신고</td>
						<td>
							<select name="highschool">
								<option value="오지고">오지고</option>
								<option value="지리고">지리고</option>
								<option value="렛잇고">렛잇고</option>
								<option value="맛보고">맛보고</option>
							</select>
						</td>
					</tr>
					<tr>
						<td colspan="3" align="center">
							<input type="submit" class="btn" value="입력" />
						</td>
					</tr>
				</table>
			</form>
			
		</div>
		<div id="footer">
			<div id="footerTitle">copyright&copy; all right reserve class 4</div>
		</div>
	</div>
</body>
</html>