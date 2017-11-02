<%@ page import="com.example.model.DBManagement.UserDao"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<title>${sessionScope.selectedUser.username}</title>
<style type="text/css" media="screen">
.subContainer {
	position: right;
	align: right;
	height: 30px;
	width: 80%;
	margin-bottom: 0px;
	margin-left: 150px;
	padding: 0;
	background-color: #b3e6cc;
	border: 2px solid #ddd;
}

.container {
	position: center;
	height: 160px;
	align: center;
	width: 70%;
	margin-bottom: 25px;
	padding: 1em;
	background-color: #eee;
	border: 3px solid #ddd;
}

.floatedbox {
	float: left;
	width: 125px;
	height: 125px;
	margin-right: 1em;
	padding: 0 10px;
	background-color: #fff;
	border: 3px solid #bbb;
	border-radius: 8px;
}

.clearfix:after {
	content: ".";
	display: block;
	height: 0;
	clear: both;
	visibility: hidden;
}
</style>

<style>
table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 80%;
            border: 2px solid #909090;
    
}

td, .th {
        border: 2px solid #909090;
    text-align: left;
    padding: 5px;
}

tr {
    background-color: #dddddd;
    
}
</style>

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include><br>
	
<table align="center">
<tr>
 <td > 
				<img src="/user/picture/${sessionScope.selectedUser.userId}" border="3" width="200"
					height="200" align="middle"
					style="border-radius: 80px; border-style: solid; border-color: #bbb;">
					${sessionScope.selectedUser.username}
					Followers: ${sessionScope.selectedUser.followers.size()} Following: ${sessionScope.selectedUser.following.size()}
					${sessionScope.selectedUser.description}
					
				</td>
				</tr>
				</table>	
					<br><br><br>
	<c:forEach var="post" items="${sessionScope.selectedUser.posts}">
		<div class="container" width=70%>
			<div class="floatedbox">
				<p>
					<img src="/post/getMainPic/${post.id}" border="3" width="120"
						height="120" align="middle"
						style="border-radius: 8px; border-style: solid; border-color: #bbb;">
				</p>
			</div>
			<h3>

				${post.dateTime} <a target="_blank" href="/showPost/${post.id}">${post.user.username}</a>
				<c:if test="${post.location!=null}">
 was at 
 <a target="_blank" href="/location/${post.location.id}">${post.location.locationName}</a>

				</c:if>
			</h3>
			<c:if test="${post.taggedPeople.size()>0}">
with 	
<c:forEach var="taggedUser" items="${post.taggedPeople}">			
	${taggedUser.username};
	</c:forEach>
			</c:if>
			<p>${post.description}
				<a target="_blank" href="/post/${post.id}"> explore
					more...</a>
			<div class="subContainer">
				Categories:
				<c:forEach var="category" items="${post.categories}">
${category.name};
</c:forEach>
			</div>
			<div class="subContainer">
				Tags:
				<c:forEach var="tag" items="${post.tags}">
${tag.tag_name};
</c:forEach>
			</div>
			<div class="subContainer">Likes: ${post.likesCount} Dislikes:
				${post.dislikesCount}</div>
			</p>

		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
	</c:forEach>

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>