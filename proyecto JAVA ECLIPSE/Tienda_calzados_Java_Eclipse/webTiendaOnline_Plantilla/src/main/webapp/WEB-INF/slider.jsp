<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!----start-slider-script---->
<script src="js/responsiveslides.min.js"></script>
<script>
	// You can also use "$(window).load(function() {"
	$(function() {
		// Slideshow 4
		$("#slider4").responsiveSlides({
			auto : true,
			pager : true,
			nav : true,
			speed : 500,
			namespace : "callbacks",
			before : function() {
				$('.events').append("<li>before event fired.</li>");
			},
			after : function() {
				$('.events').append("<li>after event fired.</li>");
			}
		});

	});
</script>
<!----//End-slider-script---->
<!-- Slideshow 4 -->
<div id="top" class="callbacks_container">
	<ul class="rslides" id="slider4">
		<li><img src="images/slide1.png" alt="">
			<div class="caption">
				<div class="slide-text-info">
					<h1>WILL HELM</h1>
					<label>WINTER</label> <a class="slide-btn" href="#"><span>99.90$</span>
						<small>GET NOW</small><label> </label></a>
				</div>
			</div></li>
		<li><img src="images/slide2.png" alt="">
			<div class="caption">
				<div class="slide-text-info">
					<h1>FAST NER2</h1>
					<label>Dress Shoe</label> <a class="slide-btn" href="#"><span>99.90$</span>
						<small>GET NOW</small><label> </label></a>
				</div>
			</div></li>
		<li><img src="images/slide1.png" alt="">
			<div class="caption">
				<div class="slide-text-info">
					<h1>WILL HELM</h1>
					<label>WINTER</label> <a class="slide-btn" href="#"><span>99.90$</span>
						<small>GET NOW</small><label> </label></a>
				</div>
			</div></li>
	</ul>
</div>
<div class="clearfix"></div>
<!----- //End-slider---->