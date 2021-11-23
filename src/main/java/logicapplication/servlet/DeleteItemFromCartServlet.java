package logicapplication.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logicapplication.orderDAO.CartDAOImpl;
import model.customer.Customer;

/**
 * Servlet implementation class DeleteItemFromCart
 */
@WebServlet("/delete-item-cart")
public class DeleteItemFromCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteItemFromCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		if(customer==null) {
			response.sendRedirect("Login.jsp");
			return;
		}
		else {
			String type = request.getParameter("type");
			int id = Integer.parseInt(request.getParameter("id"));
			CartDAOImpl cartDAOImpl = new CartDAOImpl();
			int idCart = cartDAOImpl.getCurrentCart(customer.getId()).getId();
			switch (type) {
				case "bookitem":
					cartDAOImpl.deleteBookItem(id, idCart);
					break;
				case "electronicitem":
					cartDAOImpl.deleteElectronicItem(id, idCart);
					break;	
			}
			request.setAttribute("deleteSuccess", 1);
			request.getRequestDispatcher("/cart").forward(request, response);
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
