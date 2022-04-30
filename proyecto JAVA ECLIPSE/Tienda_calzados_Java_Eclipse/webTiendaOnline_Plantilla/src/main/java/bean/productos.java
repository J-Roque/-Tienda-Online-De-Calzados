package bean;

public class productos {
	int idProduc;
	String nombre,Titulo,comentario,precio,precioD,descripcion,marca,modelo,tipo,genero,material,descripcionP;
	public  productos(){
		
	}
	public productos(String[] aProducto) {
		if(aProducto == null) {
			return;
		}
		idProduc = Integer.parseInt(aProducto[0]);
		nombre = aProducto[1];
		Titulo = aProducto[2];
		comentario = aProducto[3];
		precio = aProducto[4];
		precioD = aProducto[5];
		descripcion = aProducto[6];
		marca = aProducto[7];
		modelo = aProducto[8];
		tipo = aProducto[9];
		genero = aProducto[10];
		material = aProducto[11];
		descripcionP = aProducto[12];
		
		
	}
	public int getIdProduc() {
		return idProduc;
	}
	public String getNombre() {
		return nombre;
	}
	public String getTitulo() {
		return Titulo;
	}
	public String getComentario() {
		return comentario;
	}
	public String getPrecio() {
		return precio;
	}
	public String getPrecioD() {
		return precioD;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public String getMarca() {
		return marca;
	}
	public String getModelo() {
		return modelo;
	}
	public String getTipo() {
		return tipo;
	}
	public String getGenero() {
		return genero;
	}
	public String getMaterial() {
		return material;
	}
	public String getDescripcionP() {
		return descripcionP;
	}
	public void setIdProduc(int idProduc) {
		this.idProduc = idProduc;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public void setTitulo(String titulo) {
		Titulo = titulo;
	}
	public void setComentario(String comentario) {
		this.comentario = comentario;
	}
	public void setPrecio(String precio) {
		this.precio = precio;
	}
	public void setPrecioD(String precioD) {
		this.precioD = precioD;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public void setDescripcionP(String descripcionP) {
		this.descripcionP = descripcionP;
	}


}
