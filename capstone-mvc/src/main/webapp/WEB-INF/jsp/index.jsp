<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<title>BBbongo</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.4/examples/cover/">

<!-- Bootstrap core CSS -->
<link
	href="https://getbootstrap.com/docs/4.4/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<!-- Custom styles for this template -->
<link href="cover.css" rel="stylesheet">
</head>


<!--<body style="background-color:floralwhite;"> -->
 <body>

	<main>
		<div class="container py-4">
			<header class="pb-3 mb-4 border-bottom">

				<img src="images/bbb.jpg" alt="car cmon please" width="200"
					height="60"> 
					




			</header>

			<div class="p-5 mb-4 bg-light rounded-3">
				<div class="container-fluid py-5">
					<h1 class="display-5 fw-bold">Play</h1>
					<p class="col-md-8 fs-4"></p>
					
					<a href="play" <button class="btn btn-primary btn-lg" type="button">Play
						</button>></a>
						
						
					
				</div>
			</div>

			<div class="row align-items-md-stretch">
				<div class="col-md-6">
					<div class="h-100 p-5 text-white bg-dark rounded-3">
						<h2>Player Stuff</h2>
						<p>Add, update, and delete.</p>
						<a href="player-options" <button class="btn btn-outline-light" type="button">Go to Player
							Options</button>></a>
					</div>
				</div>
				<div class="col-md-6">
					<div class="h-100 p-5 text-white bg-dark rounded-3">
						<h2>Score</h2>
						<p></p>
						<a href="scores" <button class="btn btn-outline-light" type="button">Show Score</button>></</a>
					</div>
				</div>
			</div>

			<footer class="pt-3 mt-4 text-muted border-top">  </footer>
		</div>
	</main>





</body>

</html>
