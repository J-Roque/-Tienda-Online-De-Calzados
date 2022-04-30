<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Brnd-logo Website Template | Home :: w3layouts</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!---- start-smoth-scrolling---->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
</script>
<!----webfonts--->
<link
	href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic'
	rel='stylesheet' type='text/css'>
<!---//webfonts--->
<!----start-top-nav-script---->
<script>
	$(function() {
		var pull = $('#pull');
		menu = $('nav ul');
		menuHeight = menu.height();
		$(pull).on('click', function(e) {
			e.preventDefault();
			menu.slideToggle();
		});
		$(window).resize(function() {
			var w = $(window).width();
			if (w > 320 && menu.is(':hidden')) {
				menu.removeAttr('style');
			}
		});
	});
</script>
<!----//End-top-nav-script---->
</head>
<body>
	<%@include file="WEB-INF/header.jsp"%>
	<div class="content">
		<div class="container">
		<% Object id= session.getAttribute("id");
                if( id == null ){%><%@include file="WEB-INF/Inicio.jsp" %>                
                <%} else if (id =="Producto"){ %><%@include file="WEB-INF/producto.jsp" %>
                <%} else if (id =="contacto"){ %><%@include file="WEB-INF/contacto.jsp" %>    
                <%} else if (id == "Brands"){ %><%@include file="WEB-INF/Brands.jsp" %>  
                <%} else if (id == "Servicios"){ %><%@include file="WEB-INF/Servicios.jsp" %>           
		      	<%} else if (id =="Productos"){ %><%@include file="WEB-INF/productos.jsp" %>				
		<%}%>
		</div>
	</div>
	<%@include file="WEB-INF/footer.jsp"%>
</body>
</html>