<%@page import="bean.productos"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@include file="../WEB-INF/filtro_producto2.jsp" %>
<!----speical-products---->
<div class="special-products all-poroducts">
	<div class="s-products-head">
		<div class="s-products-head-left">
			<h3>
				SPECIAL <span>PRODUCTS</span>
			</h3>
		</div>
		<div class="s-products-head-right">
			<a href="#"><span> </span>view all products</a>
		</div>
		<div class="clearfix"></div>
	</div>
	<!----special-products-grids---->
	<div class="special-products-grids">
	<%String[][] mProductos = (String[][]) session.getAttribute("mProductos");
	for (String [] aProducto : mProductos){%>
		<div class="col-md-3 special-products-grid text-center">
		
			<a class="brand-name" href="single-page.html"><img src="images/b1.jpg" title="name" /></a>
			 <a class="product-here"href="single-page.html"><img src="images/producto/<%=aProducto[0] %>.jpg" title="product-name" /></a>
			 <h4><a href="svlProductos?=idProduc=<%=aProducto[0]%>"><%=aProducto[4]%></a></h4>
			<a class="product-btn" href="svlProductos?idProduc=<%=aProducto[0]%>"><span>S/<%=aProducto[1]%>.00</span><small>GET NOW</small><label> </label></a>
			
		</div>
		
		<%}%>
		<div class="clearfix"></div>
		
		
	</div>
		
	
	
	<!---//special-products-grids---->
</div>





