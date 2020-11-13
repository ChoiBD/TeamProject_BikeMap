<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
	
	.navigation ul{background-color: #ddd; width: 200px; list-style-type: none; margin: 0; padding: 0;}
	.navigation a{display: block; color: #000000; margin :15px;padding: 15px; text-decoration: none;}
	.icon {font-weight: bold;padding: 15px;}
	.navigation a:hover {color: rgb(0,176,176); }
	.navigation a:not(:hover){color:rgb(ddd);}
	 
	.navigation li {border-bottom: solid 1px gray; }
    .navigationli:last-child { border-bottom: none; }
	#tableDiv{width:800px; height:400px; float:right;}
	#adminDiv{margin:0 auto; height:400px;width:900px}
	
	#userList>li{float:left; width:10%; height:40px; line-height:40px; border-bottom:1px solid gray; }
	#userList>li:nth-child(7n+2){width:40%}
	.wordCut{white-space:norap;overflow:hiddenl;text-overflow:ellipsis;}
	#userList>ul, #userList>li{margin:0; padding:0; list-style-type:none;}
	#userList>ul{width:750px}
</style>

<script>
	
	$(function(){
		
		//회원관리게시판, 처음 관리자화면 초기페이지
		$("#userAdmin").click(function(){
			var url = "/admin/ajaxObject";
			$.ajax({
				url:url,
				success:function(result){
					var tag ="<ul>";
					tag += "<li>번호 = "+result.no+"</li>";
					tag += "<li>이름 = "+result.username+"</li>";
					tag += "<li>주소 = "+result.addr+"</li>";
					tag += "</ul>";
					
					$("#tableDiv").append(tag);
				},error:function(){
					console.log("객체받기에러");
				}
			});
		});
		
		//동행모집게시판 클릭
		$("#partnerfreeboardAdmin").click(function(){
			$(this).css('color','red');
			$("#tableDiv").load('/WEB-INF/views/admin/partnerfreeboardTable.html');
		});
		//후기게시판 클릭
		$("#reviewfreeboardAdmin").click(function(){
			$(this).css('color','red');
			$("#tableDiv").append('/reviewFreeboardTable.html');
		});
		//1:1 문의 게시판 클릭
		$("#inqAdmin").click(function(){
			$("#tableDiv").append('/inqTable.html');
		});	
	});
	
</script>
<div class="page-container" id="adminHome">
	<!-- Page Container -->
	<div class="navigation">
	
		<ul>
			<li>
				<span class ="icon">회원 관리</span>
				<a href="/admin/user">회원목록/검색</a>
			</li>
			
			<li>
				<span class ="icon">게시판 관리</span>
				<a href="/admin/partner">
					<span class="title">동행모집 게시판</span>
				</a>
				<a href="/admin/review">
					<span class="title">후기 게시판</span>
				</a>
			</li>
			<li>
				<a href="/admin/question">
					<span class ="icon">1:1 문의사항</span>
				</a>
			</li>
			
		</ul>
	</div>
	<!-- /Page Sidebar -->
	<!-- Page Content -->
	<div id="tableDiv">
		<h1>동행모집게시판</h1>
		<ul id="userList">
			
			<li>번호</li>
			<li>제목</li>
			<li>작성자</li>
			<li>추천</li>
			<li>비추천</li>
			<li>조회수</li>
			<li>등록일</li>
		
			<!-- DB작업완료 후 for문 생성 -->
			
			<li>234</li>
			<li>여수 3일 코스 !!!</li>
			<li>sss333</li>
			<li>34</li>
			<li>2</li>
			<li>106</li>
			<li>2020-10-01</li>
			
		</ul>
	</div>
	<!-- Page Content -->
</div>