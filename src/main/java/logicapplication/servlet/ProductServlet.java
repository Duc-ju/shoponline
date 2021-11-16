package logicapplication.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.If;
import org.w3c.dom.ls.LSOutput;

import logicapplication.bookDAO.BookItemDAOImpl;
import logicapplication.electonicDAO.ElectronicItemDAOImpl;
import logicapplication.orderDAO.CartDAOImpl;
import model.book.BookItem;
import model.customer.Customer;
import model.electronic.ElectronicItem;

/**
 * Servlet implementation class ProductServlet
 */
@WebServlet("/product")
public class ProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		if(customer == null) {
			
		}
		else {
			request.setAttribute("numberOfItems", new CartDAOImpl().getCurrentCart(customer.getId()).getQuanity());
		}
		String type = request.getParameter("type");
		if(type.equals("bookitem")) {
			String id = request.getParameter("id");
			BookItem bookItem = new BookItemDAOImpl().get(Integer.parseInt(id));
			request.setAttribute("type","bookitem");
			request.setAttribute("title","Sách");
			request.setAttribute("item", bookItem);
			request.getRequestDispatcher("Product.jsp").forward(request, response);
		}
		else if(type.equals("electronicitem")) {
			String id = request.getParameter("id");
			ElectronicItem electronicItem = new ElectronicItemDAOImpl().get(Integer.parseInt(id));
			
			request.setAttribute("type","electronic");
			request.setAttribute("title","�?iện tử");
			request.setAttribute("item", electronicItem);
			String classFullname = electronicItem.getElectronic().getClass().getName();
			String[] classFullnameSplitString = classFullname.split("\\.");
			request.setAttribute("subtitle",classFullnameSplitString[classFullnameSplitString.length-1]);
			request.getRequestDispatcher("Product.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
