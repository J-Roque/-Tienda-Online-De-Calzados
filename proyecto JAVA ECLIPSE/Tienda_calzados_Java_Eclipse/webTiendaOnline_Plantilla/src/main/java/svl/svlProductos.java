package svl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import dao.daoProductos;


@WebServlet("/svlProductos")
public class svlProductos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public svlProductos() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void  ProcesRequest(HttpServletRequest request, HttpServletResponse response) throws  ServletException, IOException
    {
    	response.setContentType("text/html;charset=UTF-8");
    	response.setCharacterEncoding("UTF-8");
    	HttpSession session = request.getSession();
    	dao.daoProductos daoProductos = new daoProductos();
        Object idProduc= request.getParameter("idProduc");
      
    	
    	if (idProduc == null) {
    		String[][] mProductos = daoProductos.getProductos();
        	session.setAttribute("id", mProductos == null? null :"Productos");
        	session.setAttribute("mProductos", mProductos);
    		
    	}else {
    		String[] aProducto= daoProductos.getProducto(idProduc);
    		session.setAttribute("id", aProducto == null? null : "Producto");
    		session.setAttribute("aProducto", aProducto);
    		/*session.setAttribute("mProductos", daoProductos.getDetalleProducto(idProduc));
    		session.setAttribute("mJpgProduc", daoProductos.getImgProduc(idProduc));
    		*/
    	}

    	response.sendRedirect("index.jsp");

    }

	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		        ProcesRequest(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	        ProcesRequest(request, response);
	}

}
