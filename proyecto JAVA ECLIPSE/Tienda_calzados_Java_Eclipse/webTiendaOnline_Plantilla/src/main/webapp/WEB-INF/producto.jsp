<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!----product-details--->
<div class="product-details">
<% String[] aProducto =(String[])session.getAttribute("aProducto");%>
		<div class="product-details-row1">
			<div class="product-details-row1-head">
				<h2><%= aProducto[1]%></h2>
				<p><%=aProducto[2] %></p>
			</div>
			<div class="col-md-4 product-details-row1-col1">
				<!----details-product-slider--->
				<!-- Include the Etalage files -->
				<link rel="stylesheet" href="css/etalage.css">
				<script src="js/jquery.etalage.min.js"></script>
				<!-- Include the Etalage files -->
				<script>
					jQuery(document)
							.ready(
									function($) {

										$('#etalage')
												.etalage(
														{
															thumb_image_width : 300,
															thumb_image_height : 400,
															source_image_width : 900,
															source_image_height : 1000,
															show_hint : true,
															click_callback : function(
																	image_anchor,
																	instance_id) {
																alert('Callback example:\nYou clicked on an image with the anchor: "'
																		+ image_anchor
																		+ '"\n(in Etalage instance: "'
																		+ instance_id
																		+ '")');
															}
														});
										// This is for the dropdown list example:
										$('.dropdownlist').change(
												function() {
													etalage_show($(this).find(
															'option:selected')
															.attr('class'));
												});

									});
				</script>
				<!----//details-product-slider--->


			<div class="details-left">
				<div class="details-left-slider">
						<ul id="etalage">
									<li>
										<a href="optionallink.html">
											<img class="etalage_thumb_image" src="images/producto/<%=aProducto[0]%>.jpg" />
											<img class="etalage_source_image" src="images/producto/<%=aProducto[0]%>.jpg" />
										</a>
									</li>
									<li>
										<img class="etalage_thumb_image" src="images/producto/<%=aProducto[0]%>.jpg" />
										<img class="etalage_source_image" src="images/producto/<%=aProducto[0]%>.jpg" />
									</li>
									
						</ul>
				</div>
			</div>
			
		</div>
			<div class="col-md-8 product-details-row1-col2">
				<div class="product-rating">
					<a class="rate" href="#"><span> </span></a> <label><a
						href="#">Read <b>8</b> Reviews
					</a></label>
				</div>
				<div class="product-price">
					<div class="product-price-left text-right">
						<span><%=aProducto[3] %>.00</span>
						<h5>S/<%=aProducto[4] %>.00</h5>
					</div>
					<div class="product-price-right">
						<a href="#"><span> </span></a> <label> save <b>40%</b></label>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="product-price-details">
					<p class="text-right"><%=aProducto[5] %></p>
					<a class="shipping" href="#"><span> </span>Free shipping</a>
					<div class="clearfix"></div>
					<div class="product-size-qty">
						<div class="pro-size">
							<span>Size:</span> <select>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
								<option>11</option>
							</select>
						</div>
						<div class="pro-qty">
							<span>Qty:</span> <select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
							</select>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="clearfix"></div>
					<div class="product-cart-share">
						<div class="add-cart-btn">
							<input type="button" value="Add to cart" />
						</div>
						<ul class="product-share text-right">
							<h3>Share This:</h3>
							<ul>
								<li><a class="share-face" href="#"><span> </span> </a></li>
								<li><a class="share-twitter" href="#"><span> </span> </a></li>
								<li><a class="share-google" href="#"><span> </span> </a></li>
								<li><a class="share-rss" href="#"><span> </span> </a></li>
								<div class="clear"></div>
							</ul>
						</ul>
					</div>
				</div>
			</div>
			<div class="clearfix"></div>
			<!--//product-details--->
		</div>
		<!---- product-details ---->
		<div class="product-tabs">
			<!--Horizontal Tab-->
			<div id="horizontalTab">
				<ul>
					<li><a href="#tab-1">Product overwiev</a></li>
					<li><a href="#tab-2">Features</a></li>
					<li><a href="#tab-3">Customer reviews</a></li>
				</ul>
				<div id="tab-1" class="product-complete-info">
					<h3>DESCRIPTION:</h3>
					<p><%=aProducto[11] %></p>
					<span>DETAILS:</span>
					<div class="product-fea">
						<p>Marca <%=aProducto[6] %></p>
						<p>Modelo <%=aProducto[7] %></p>
						<p>Tipo<%=aProducto[8] %></p>
						<p>Genero<%=aProducto[9] %></p>
						<p>Material<%=aProducto[10] %></p>
						<p>SmartWool® fabric-lined anti-fatigue footbed provides
							superior, all-day comfort and climate control</p>
						<p>Timberland® exclusive Gripstick™ and Green Rubber™ outsole
							is made with 42% recycled rubber</p>
					</div>
				</div>
				<div id="tab-2" class="product-complete-info">
					<h3>DESCRIPTION:</h3>
					<p>With its beautiful premium leather, lace-up oxford styling,
						recycled rubber outsoles and 9-inch height, this Earthkeepers City
						Premium style is an undeniably handsome boot. To complement its
						rustic, commanding outer appearance, we've paid attention to the
						inside as well - by adding SmartWool® faux shearling to the
						linings and crafting the footbed using our exclusive anti-fatigue
						comfort foam technology to absorb shock. Imported.</p>
					<p>lace-up oxford styling, recycled rubber outsoles and 9-inch
						height, this Earthkeepers City Premium style is an undeniably
						handsome boot. To complement its rustic, commanding outer
						appearance,</p>
					<span>DETAILS:</span>
					<div class="product-fea">
						<p>Premium burnished full-grain leather and suede upper</p>
						<p>Leather is from a tannery rated Silver for its water,
							energy and waste-management practices</p>
						<p>Leather lining and footbed for a premium feel and optimal
							comfort</p>
						<p>SmartWool® faux shearling lining is made with 60% merino
							wool and 40% PET</p>
						<p>Reflective insole board for additional warmth under foot</p>
					</div>
				</div>
				<div id="tab-3" class="product-complete-info">
					<h3>DESCRIPTION:</h3>
					<p>With its beautiful premium leather, lace-up oxford styling,
						recycled rubber outsoles and 9-inch height, this Earthkeepers City
						Premium style is an undeniably handsome boot. To complement its
						rustic, commanding outer appearance, we've paid attention to the
						inside as well - by adding SmartWool® faux shearling to the
						linings and crafting the footbed using our exclusive anti-fatigue
						comfort foam technology to absorb shock. Imported.</p>
					<span>DETAILS:</span>
					<div class="product-fea">
						<p>100% organic cotton laces</p>
						<p>SmartWool® fabric-lined anti-fatigue footbed provides
							superior, all-day comfort and climate control</p>
						<p>Timberland® exclusive Gripstick™ and Green Rubber™ outsole
							is made with 42% recycled rubber</p>
						<p>Premium burnished full-grain leather and suede upper</p>
						<p>Leather is from a tannery rated Silver for its water,
							energy and waste-management practices</p>
						<p>Leather lining and footbed for a premium feel and optimal
							comfort</p>
						<p>SmartWool® faux shearling lining is made with 60% merino
							wool and 40% PET</p>
						<p>Reflective insole board for additional warmth under foot</p>
						<p>100% organic cotton laces</p>
						<p>SmartWool® fabric-lined anti-fatigue footbed provides
							superior, all-day comfort and climate control</p>
						<p>Timberland® exclusive Gripstick™ and Green Rubber™ outsole
							is made with 42% recycled rubber</p>
					</div>
				</div>
			</div>
			<!-- Responsive Tabs JS -->
			<script src="js/jquery.responsiveTabs.js" type="text/javascript"></script>

			<script type="text/javascript">
				$(document)
						.ready(
								function() {
									$('#horizontalTab')
											.responsiveTabs(
													{
														rotate : false,
														startCollapsed : 'accordion',
														collapsible : 'accordion',
														setHash : true,
														disabled : [ 3, 4 ],
														activate : function(e,
																tab) {
															$('.info')
																	.html(
																			'Tab <strong>'
																					+ tab.id
																					+ '</strong> activated!');
														}
													});

									$('#start-rotation').on(
											'click',
											function() {
												$('#horizontalTab')
														.responsiveTabs(
																'active');
											});
									$('#stop-rotation')
											.on(
													'click',
													function() {
														$('#horizontalTab')
																.responsiveTabs(
																		'stopRotation');
													});
									$('#start-rotation').on(
											'click',
											function() {
												$('#horizontalTab')
														.responsiveTabs(
																'active');
											});
									$('.select-tab').on(
											'click',
											function() {
												$('#horizontalTab')
														.responsiveTabs(
																'activate',
																$(this).val());
											});

								});
			</script>
		</div>
		<!-- //product-details ---->

</div>