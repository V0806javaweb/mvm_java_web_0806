

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductDAO;

/**
 * Servlet implementation class ShowProductList
 */
@WebServlet("/ShowProductList")
public class ShowProductList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowProductList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    public void doGet(HttpServletRequest request,  HttpServletResponse response) throws ServletException {
        ServletContext context=getServletContext(); 
        ArrayList list=prepareArrayList();
        request.setAttribute("catalog" , list);
        RequestDispatcher  forwardPage = request.getRequestDispatcher("Show.jsp");
        try {
        	forwardPage.forward(request , response);
        } catch (IOException e) {
        	e.printStackTrace();
        }
      }
      public ArrayList  prepareArrayList(){
            ArrayList list ;
            ProductDAO dao=new ProductDAO();
            list=dao.getProductList();
            return list;
      }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
