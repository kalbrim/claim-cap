<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
    <meta charset="utf-8">
    <title>Play</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.4/examples/cover/">

    <!-- Bootstrap core CSS -->
<link href="https://getbootstrap.com/docs/4.4/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="cover.css" rel="stylesheet">
  </head>


<body class="text-center">
    <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
  <header class="masthead mb-auto">
    <div class="inner">
      <h3 class="masthead-brand">Play Hole</h3>
      <nav class="nav nav-masthead justify-content-center">
        <a class="nav-link active" href="/">Home</a>
        <a class="nav-link" href="/scores">Scores</a>
        
      </nav>
    </div>
  </header>

  <main role="main" class="inner cover">
     
     
<form:form method="post" action="/play" modelAttribute="hole">

  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputFirstOnTheGreen">First on the green: </label>
      <form:input path="firstOnTheGreen" type="text" class="form-control" id="inputFirstOnTheGreen"/>
    </div>
    
  </div>
  
  
    <div class="form-row">
    
   <div class="form-group col-md-6">
      <label for="inputEmail4">Closest to the pin: </label>
      <form:input path="closestToThePin" type="text" class="form-control" id="inputClosestToThePin"/>
    </div>
  </div>
  
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputPassword4">First in the hole: </label>
      <form:input path="firstInTheHole" type="text" class="form-control" id="inputFirstInTheHole"/>
    </div>
  </div>
 
  
   
  
  <div class="form-group">

  </div>
  <button type="submit" class="btn btn-primary">Enter</button>
</form:form>


  </main>

  <footer class="mastfoot mt-auto">
    <div class="inner">
     
    </div>
  </footer>
</div>


</body>

</html>


