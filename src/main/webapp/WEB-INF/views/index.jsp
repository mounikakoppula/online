<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<html>
<head>

<title>OnlineShopping</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>
.carousel-inner>.item>img, .carousel-inner>.item>a>img {
	width: 70%;
	margin: auto;
	height: 500;
	
}

.right {
    position: absolute;
    right: 0px;
    width: 90px;
  

}
</style>



</head>
<body>
	 
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">LOGO</a>
    </div>
    <ul class="nav navbar-nav">
   
    
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Register"><span class="glyphicon glyphicon-user"></span> Register</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>
  
<div class="container">
  <h3>ONLINE SHOPPING</h3>
 
</div>

					<c:choose>
					<c:when test="${LoggedIn}">

						
						<c:choose>	
						<c:when test="${!Administrator}">	
						<li style="float: right"><a href="viewcart/${userId}"
							class="w3-hover-none"><i class="glyphicon glyphicon-shopping-cart"></i></a></li>
						</c:when>
						</c:choose>
<li class="active"><a href="perform_logout"
							class="w3-hover-none"><i class="glyphicon glyphicon-log-out"></i></a></li>
						
						<li class="active"><a href="#" class="w3-hover-none"><i
								class="glyphicon glyphicon-user"></i> Hi, ${name}</a></li>
					</c:when>

					<c:otherwise>
					 <div class="collapse navbar-collapse" style=color:red >
				<ul class="nav navbar-nav navbar-right">
				
					
					</ul>
			</div>
						
					</c:otherwise>
				</c:choose>
				</ul>

		</nav>
		
					
		<c:choose>	
		<c:when test="${!Administrator}">	
			<!-- Category List -->
			<c:if test="${!empty categoryList}">
			 <div class="collapse navbar-collapse" style=color:red >
				<ul class="nav navbar-nav navbar-right">
				<c:forEach items="${categoryList}" var="category">
							<li><a href="${category.name}" class="w3-hover-none"><i class="fa fa-list-alt" aria-hidden="true"></i> ${category.name}</a></li>
						</c:forEach>
					
					</ul>
				</div>
			</c:if>	
		</c:when>	
	
		<c:when test="${Administrator}">
			<div class="collapse navbar-collapse" style=color:red >
				<ul class="nav navbar-nav navbar-right">
				<li><a href="product"class="w3-hover-none"><i class="glyphicon glyphicon-list"
					aria-hidden="true"></i> Products</a></li>
				<li><a href="category" class="w3-hover-none"><i class="glyphicon glyphicon-list"
					aria-hidden="true"></i> Category</a></li>
				<li><a href="supplier" class="w3-hover-none"><i class="glyphicon glyphicon-list"
					aria-hidden="true"></i> Supplier</a></li>
			</ul>
		</c:when>
	</c:choose>		
	
	</div>
	
	<!-- Category List End -->
	<c:choose>
	<c:when test="${IfLoginClicked}">
		<c:import url="/WEB-INF/views/login.jsp">
		</c:import>
	</c:when>
	
	<c:when test="${IfRegisterClicked}">
		<c:import url="/WEB-INF/views/register.jsp">
		</c:import>
	</c:when>
	</c:choose>

	<c:choose>
			<c:when test="${ProductPageClicked}">
				<c:import url="/WEB-INF/views/addproduct.jsp"></c:import>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${CategoryPageClicked}">
				<c:import url="/WEB-INF/views/addcategory.jsp"></c:import>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${SupplierPageClicked}">
				<c:import url="/WEB-INF/views/addsupplier.jsp"></c:import>
			</c:when>
		</c:choose>		


		<div class="container" >
			<br>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active" style="width: 100%; height: 400">
						<img src=<c:url value="C:\Users\V\Pictures\Craftsvilla.jpg" /> alt="Craftsvilla">
					</div>

					<div class="item" style="width: 100%; height: 400">
						<img src=<c:url value="C:\Users\V\Pictures\Chocolate.jpg" /> alt="Chocolate">
					</div>

					<div class="item" style="width: 100%; height: 400">
						<img src=<c:url value="C:\Users\V\Pictures\diamond.jpg" /> alt="diamond">
					</div>

				</div>

				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>

		<div>
			<br> <br>
		</div>
		
		<c:choose>
			<c:when test="${!Administrator}">
				<c:if test="${!empty productList}">
					<div>
						<ul>
							<c:forEach items="${productList}" var="product">
								<li><a href=" ${product.name}" class="w3-hover-none"><img
										alt="${product.id}"
										src="<c:url value="/resources/Images/product/${product.id}.jpg"></c:url>"></a></li>
								<c:choose>
									<c:when test="${LoggedIn}">
										<li><a href="addtoCart/${userId}/${product.id}"
											class="w3-hover-none">Add to Cart</a></li>
									</c:when>
								</c:choose>
							</c:forEach>
						</ul> 
					</div>
				</c:if>
			</c:when>
		</c:choose>
</div>
		
		
</body>
</html>
