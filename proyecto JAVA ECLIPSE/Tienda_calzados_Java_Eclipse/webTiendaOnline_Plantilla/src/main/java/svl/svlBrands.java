package svl;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/svlBrands")
public class svlBrands extends HttpServlet {
	private static final long serialVersionUID = 1L;

	  protected void  ProcesRequest(HttpServletRequest request, HttpServletResponse response) throws  ServletException, IOException
	    {
	    	response.setContentType("text/html;charset=UTF-8");
	    	response.setCharacterEncoding("UTF-8");
	    	HttpSession session = request.getSession();
	    	session.setAttribute("id","Brands");
	    	response.sendRedirect("index.jsp");
	    	
	    }
    public svlBrands() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		  ProcesRequest(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		  ProcesRequest(request, response);
	}

}
