<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>设置党费标准</title>
<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.min.css">

<script type="text/javascript" src="/resources/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/resources/js/datatable-editable.js"></script>
<script type="text/javascript" src="/resources/js/jquery.dataTables.min.js"></script>
</head>
<body>
	<table class="table table-bordered table-striped"
		id="datatable-editable">
		<thead>
			<tr>
			<td>人员类别</td>
			<td>所在党组织</td>
			<td>姓名</td>
			<td>年龄</td>
			<td>性别</td>
			<td>入党时间</td>
			<td>党费标准（元/月）</td>
			<td>缴费情况</td>
			<td>已缴费到</td>
			<td>操作</td>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${users}" var="user">
				<tr>
					<td style="display:none;">${user.id }</td>
					<td>${user.username }</td>
					<td class="hidden-xs">${user.realname }</td>
					<td>${user.age }</td>
					<td>${user.gender }</td>
					<td>${user.phone }</td>
					<td><a class="edit-row" href="#">Edit</a></td>
					<td><a class="delete-row" href="#">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>