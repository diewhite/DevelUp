<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="ko">
<head>
 <meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=Edge">
 <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,user-scalable=yes">
 <link rel="icon" type="image/x-icon" href="/ongo/images/favicon.ico">
 
<!-- Bootstrap-->
<link type="text/css" rel="stylesheet" href="/ongo/common/css/bootstrap/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="/ongo/common/css/bootstrap-icons/font/bootstrap-icons.css">
<link type="text/css" rel="stylesheet" href="/ongo/common/css/line-awesome.min.css">
<link type="text/css" rel="stylesheet" href="/ongo/common/css/toastr.min.css">
<!-- common -->
<link type="text/css" rel="stylesheet" href="/ongo/common/css/font.css">
<link type="text/css" rel="stylesheet" href="/ongo/common/css/common.css">
<link type="text/css" rel="stylesheet" href="/ongo/common/css/cmpt.css">
<link type="text/css" rel="stylesheet" href="/ongo/common/css/layout.css">
<link type="text/css" rel="stylesheet" href="/ongo/common/css/sub.css">

<!--jquery -->
<script src="/ongo/common/js/jquery/jquery-3.3.1.min.js"></script>
<script src="/ongo/common/js/bootstrap/bootstrap.bundle.min.js"></script>
<script src="/ongo/common/js/bootstrap/toastr.min.js"></script>
<!-- common -->
<script src="/ongo/common/js/common.js"></script>

<title>온고-온라인 고물상</title>
</head>
<body>
<div>
	<div>
		<tiles:insertAttribute name="top"></tiles:insertAttribute>
	</div>
	<div class="col-sm-3">
		<tiles:insertAttribute name="menu"></tiles:insertAttribute>
	</div>
	<div class="col-sm-8" style="height: 800px;">
		<tiles:insertAttribute name="content"></tiles:insertAttribute>
	</div>
</div>
</body>
</html>