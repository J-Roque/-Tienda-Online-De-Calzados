<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<form>
	<div class="contact-form">
		<h3>Reclamos o consultas</h3>
		<legend>Datos de la persona</legend>
		<div class="contact-to">
			<input type="text" class="text" value="Nombre y A..."
				onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = 'Nombre...';}">

			<input type="text" class="text" value="Email..."
				onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = 'Email...';}"> <input
				type="text" class="text" value="Telefono..."
				onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = 'Subject...';}">

		</div>
		<br />
		<div class="radio">
			<legend>Tipo</legend>
			<fieldset>

				<label for="decision">Consulta</label> <input type="radio" id="r1"
					name="consulta" required=""><br> <label for="decision">Reclamo</label>
				<input type="radio" id="r2" name="consulta" required="">
			</fieldset>
		</div>


		<div class="text2">
			<textarea value="Message:" onfocus="this.value = '';"
				onblur="if (this.value == '') {this.value = 'Message';}">Message..</textarea>
		</div>
		<span><input type="submit" class="" value="Send"></span>
		<div class="clearfix"></div>
	</div>
</form>
<br />
</html>