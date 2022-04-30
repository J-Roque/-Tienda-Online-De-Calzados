package dao;

import java.util.ArrayList;
import java.util.List;

import bd.clsBD;

import bean.productos;

public class daoProductos {
	clsBD clsBD = new clsBD("tienda3");
	


	public String[][] getProductos() {
		clsBD.Sentencia("call usp_getVerProductos()");
		return  clsBD.getRegistros();
	}

	public String[] getProducto(Object idProduc) {
		clsBD.Sentencia(String.format("call usp_getProducto(%S)",idProduc));
		return clsBD.getRegistro();
	}



	public String[] getContacto() {
		clsBD.Sentencia("call usp_getcontacto()");
		return  clsBD.getRegistro();
	}

	public String[][] getProductosH() {
		clsBD.Sentencia("call usp_getVerProductosH()");
		return  clsBD.getRegistros();
		
	}


	
	/*
	public String[][] getDetalleProducto(Object idProduc) {
		
		clsBD.Sentencia(String.format("call usp_getProducto(%S)",idProduc));
		return clsBD.getRegistros();
	}


*/

	
/*
	public List<productos> getProductos() {
		clsBD.Sentencia(String.format("call usp_getVerProductos()"));
		String[][] mProductos = clsBD.getRegistros();		
		if(mProductos == null) {
			return null;
		}
		List<productos>lstProductos = new ArrayList<>();
		for (String[] aProducto:mProductos ) {
			lstProductos.add(new  productos(aProducto));
			
		}
			
			return lstProductos;
	}
	public productos getProducto(String idProduc) {
		clsBD.Sentencia(String.format("call usp_getProducto(%s)",idProduc));
	
	return  new productos(clsBD.getRegistro());
	
	}
	public Object getDetalleProducto(String idProduc) {
		// TODO Auto-generated method stub
		return null;
	}

	
*/


	
	
	
}
