<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!----footer--->
<div class="footer">
	<div class="container">
		<div class="col-md-3 footer-logo">
			<a href="svlProductos?idProduc=200"><img src="images/flogo1.png"
				title="brand-logo" /></a>
		</div>
		<div class="col-md-7 footer-links">
			<ul class="unstyled-list list-inline">
				<li><a href="#"> Preguntas frecuentes</a> <span> </span></li>
				<li><a href="#">Términos y Condiciones</a> <span> </span></li>
				<li><a href="#">Pagos seguros</a> <span> </span></li>
				<li><a href="#">Shipping</a> <span> </span></li>
				<li><a href="contact.html">Contacto</a></li>
				<div class="clearfix"></div>
			</ul>
		</div>
	
		<div class="col-md-2 footer-social">
			<ul class="unstyled-list list-inline">
				<li><a class="pin" href="#"><span> </span></a></li>
				<li><a class="twitter" href="#"><span> </span></a></li>
				<li><a class="facebook" href="#"><span> </span></a></li>
				<div class="clearfix"></div>
			</ul>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<div class="clearfix"></div>
<!---//footer--->
<!---copy-right--->
<div class="copy-right">
	<div class="container">
		<p>
			Template by <a href="www.proyectofinal.com">Proyecto Final</a>
		</p>
		<script type="text/javascript">
			$(document).ready(function() {
				/*
				var defaults = {
						containerID: 'toTop', // fading element id
					containerHoverID: 'toTopHover', // fading element hover id
					scrollSpeed: 1200,
					easingType: 'linear' 
					};
				 */

				$().UItoTop({
					easingType : 'easeOutQuart'
				});

			});
		</script>
		<a href="#" id="toTop" style="display: block;"> <span
			id="toTopHover" style="opacity: 1;"> </span></a>
	</div>
</div>
<!--//copy-right--->