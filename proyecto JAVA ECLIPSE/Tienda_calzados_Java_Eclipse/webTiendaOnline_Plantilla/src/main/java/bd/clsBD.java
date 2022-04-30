package bd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class clsBD {
	 public int MySQL = 1;
	    public int SQLServer = 2;

	    String IP = "localhost", PORT = "3306", USER = "root", PASSWORD = "", BD = "", SQL = "";
	    int TIPO = MySQL;

	    PreparedStatement ps = null;

	public clsBD(String BD) {
		 this.BD = BD;
	}

	 public clsBD(int TIPO, String BD) {
	        this.BD = BD;

	    }

	    public clsBD(int TIPO, String PORT, String BD) {

	        this.TIPO = TIPO;
	        this.PORT = PORT;
	        this.BD = BD;

	    }
	    
	    private Connection getConnection() {

	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            return DriverManager.getConnection(String.format("jdbc:mysql://%s:%s/%s", IP, PORT, BD), USER, PASSWORD);
	        } catch (ClassNotFoundException | SQLException ex) {
	            System.out.println(ex.getMessage());
	        }
	        return null;

	    }


	public void Sentencia(String SQL) {
		this.SQL = SQL;
        try {
            ps = (PreparedStatement) getConnection().prepareStatement(SQL);
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
		
	}

	  public String[][] getRegistros() {

	        try {
	            ResultSet rs = ps.executeQuery();
	            if (rs.last()) {
	                int filas = rs.getRow();
	                int columnas = rs.getMetaData().getColumnCount();
	                String[][] mRegistros = new String[filas][columnas];
	                rs.beforeFirst();

	                for (int fila = 0; rs.next(); fila++) {
	                    for (int columna = 0; columna < columnas; columna++) {
	                        mRegistros[fila][columna] = rs.getString(columna + 1).trim();
	                    }
	                }

	                return mRegistros;

	            }

	        } catch (SQLException ex) {
	            System.out.println(ex.getMessage());
	        }
	        return null;
	    }

	  public String[] getRegistro() {
	        
	        try {
	            ResultSet rs = ps.executeQuery();
	            if (rs.next()){
	                int columnas = rs.getMetaData().getColumnCount();
	                String[] aRegistro = new String[columnas];
	                
	                for (int columna = 0;columna < columnas; columna++) {
	                   
	                        aRegistro[columna] = rs.getString(columna + 1).trim();
	                    
	                }
	                return aRegistro;
	                
	            }
	        } catch (SQLException ex) {
	            System.out.println(ex.getMessage());
	        }
	        return null;

	    }


	    
	

}
