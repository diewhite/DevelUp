<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	$(document).ready(function() {
		$("#sidebarCollapse").on('click', function() {
			$("#sidebar").toggleClass('active');
		});
	});
</script>
<style type="text/css">
@import
	"https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700";

body {
	font-family: 'Poppins', sans-serif;
	background: #fafafa
}

p {
	font-size: 1.1em;
	font-weight: 300;
	line-height: 1.7em;
	color: #999
}

a, a:hover, a:focus {
	color: inherit;
	text-decoration: none;
	transition: all 0.3s
}

.navbar {
	padding: 15px 10px;
	background: #fff;
	border: none;
	border-radius: 0;
	margin-bottom: 40px;
	box-shadow: 1px 1px 3px rgba(0, 0, 0, 0.1)
}

.navbar-btn {
	box-shadow: none;
	outline: none !important;
	border: none
}

.line {
	width: 100%;
	height: 1px;
	border-bottom: 1px dashed #ddd
}

.wrapper {
	display: flex;
	width: 100%;
	align-items: stretch
}

#sidebar {
	min-width: 250px;
	max-width: 250px;
	background: #005086;
	color: #fff;
	transition: all 0.3s
}

#sidebar.active {
	margin-left: -250px
}

#sidebar .sidebar-header {
	padding: 20px;
	background: #005086
}

#sidebar ul.components {
	padding: 20px 0px;
	border-bottom: 1px solid #47748b
}

#sidebar ul p {
	padding: 10px;
	font-size: 15px;
	display: block;
	color: #fff
}

#sidebar ul li a {
	padding: 10px;
	font-size: 1.1em;
	display: block
}

#sidebar ul li a:hover {
	color: #fff;
	background: #318fb5
}

#sidebar ul li.active>a, a[aria-expanded="true"] {
	color: #fff;
	background: #318fb5
}

a[data-toggle="collapse"] {
	position: relative
}

.dropdown-toggle::after {
	display: block;
	position: absolute;
	top: 50%;
	right: 20px;
	transform: translateY(-50%)
}

ul ul a {
	font-size: 0.9em !important;
	padding-left: 30px !important;
	background: #318fb5
}

ul.CTAs {
	padding: 20px
}

ul.CTAs a {
	text-align: center;
	font-size: 0.9em !important;
	display: block;
	border-radius: 5px;
	margin-bottom: 5px
}

a.download, a.download:hover {
	background: #318fb5;
	color: #fff
}

#content {
	width: 100%;
	padding: 20px;
	min-height: 100vh;
	transition: all 0.3s
}

.content-wrapper {
	padding: 15px
}

@media ( maz-width :768px) {
	#sidebar {
		margin-left: -250px
	}
	#sidebar.active {
		margin-left: 0px
	}
	#sidebarCollapse span {
		display: none
	}
}
</style>
</head>
<body>

	<div class="wrapper">
		<nav id="sidebar">
			<div class="sidebar-header">
				<h3>BBBOOTSTRAP</h3>
				<hr>
			</div>
			<ul class="list-unstyled components">
				<p>MENUS</p>
				<li><a href="#homeSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">Dashboard</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
						<li><a href="#">Dashboard1</a></li>
						<li><a href="#">Dashboard2</a></li>
						<li><a href="#">Dashboard3</a></li>
					</ul></li>
				<li><a href="#">Users</a></li>
				<li><a href="#pageSubmenu" data-toggle="collapse"
					aria-expanded="false" class="dropdown-toggle">Subscribers</a>
					<ul class="collapse list-unstyled" id="pageSubmenu">
						<li><a href="#">Active</a></li>
						<li><a href="#">Idle</a></li>
						<li><a href="#">Non Active</a></li>
					</ul></li>
				<li><a href="#">Timeline</a></li>
				<li><a href="#">Live Chat</a></li>
				<li><a href="#">Likes</a></li>
				<li><a href="#">Comments</a></li>
			</ul>
			<ul class="list-unstyled CTAs">
				<li><a href="#" class="download">Subscribe</a></li>
			</ul>
		</nav>
		<div class="content">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<button type="button" id="sidebarCollapse" class="btn btn-info">
					<i class="fa fa-align-justify"></i>
				</button>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarNav" aria-controls="navbarNav"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link" href="#">Home
								<span class="sr-only">(current)</span>
						</a></li>
						<li class="nav-item"><a class="nav-link" href="#">Features</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Pricing</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Contact</a>
						</li>
					</ul>
				</div>
			</nav>
			<!-- <div class="content-wrapper">
				
			<div class="line"></div>
			</div> -->
		</div>
	</div>


</body>
</html>