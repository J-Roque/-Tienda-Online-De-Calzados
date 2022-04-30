<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!----contact---->
<br>
<br>
<% String[] aContacto =(String[])session.getAttribute("aContacto");%>
			<div class="contact-info">
					<div class="map">
					<iframe src="<%=aContacto[1]%>" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
					 </div>
					 <div class="container">
					 <div class="contact-grids">
							 <div class="col_1_of_bottom span_1_of_first1">
								    <h5>Address</h5>
								    <ul class="list3">
										<li>
											<img src="images/home.png" alt="">
											<div class="extra-wrap">
											 <p><%=aContacto[2]%><br>dolor sit amet,.</p>
											</div>
										</li>
									</ul>
							    </div>
								<div class="col_1_of_bottom span_1_of_first1">
								    <h5>Phones</h5>
									<ul class="list3">
										<li>
											   <img src="images/phone.png" alt="">
											<div class="extra-wrap">
												<p><span>Telephone:</span><%=aContacto[3]%></p>
											</div>
												<img src="images/fax.png" alt="">
											<div class="extra-wrap">
												<p><span>FAX:</span><%=aContacto[4]%></p>
											</div>
										</li>
									</ul>
								</div>
								<div class="col_1_of_bottom span_1_of_first1">
									 <h5>Email</h5>
								    <ul class="list3">
										<li>
											<img src="images/email.png" alt="">
											<div class="extra-wrap">
											  <p><span class="mail"><a href="mailto:yoursite.com">info(at)<%=aContacto[5]%></a></span></p>
											</div>
										</li>
									</ul>
							    </div>
								<div class="clearfix"></div>
					 </div>
					 	<form>
					          <div class="contact-form">
								<div class="contact-to">
			                     	<input type="text" class="text" value="Name..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name...';}">
								 	<input type="text" class="text" value="Email..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email...';}">
								 	<input type="text" class="text" value="Subject..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject...';}">
								</div>
								<div class="text2">
				                   <textarea value="Message:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message..</textarea>
				                </div>
				               <span><input type="submit" class="" value="Send"></span>
				                <div class="clearfix"></div>
				               </div>
				           </form>
							</div>
			</div>
			<!---//contact---->