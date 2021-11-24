<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<title>Delete Player</title>

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


<!-- <body> -->
<body style="background-color: bisque;">

	<main>
		<div class="container py-4">
			<header class="pb-3 mb-4 border-bottom">

				<img src="images/bbb.jpg" alt="car cmon please" width="300"
					height="120">





			</header>



			<div>
				<!-- form -->
				<form:form method="post" action="/delete-player"
					modelAttribute="deadPlayer">

					<div class="form-row">
						<div class="form-group col-md-6">
							<label for="inputName">Player Name</label>
							<form:input path="name" type="text" class="form-control"
								id="inputName" />
						</div>

					</div>

					<button type="submit" class="btn btn-primary">Delete Player</button>
				</form:form>


			</div>







			<footer class="pt-3 mt-4 text-muted border-top"> bbb </footer>
		</div>
	</main>





</body>

</html>
