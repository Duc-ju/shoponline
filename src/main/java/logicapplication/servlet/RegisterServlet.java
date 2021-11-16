package logicapplication.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import logicapplication.customerDAO.AccountDAOImpl;
import logicapplication.customerDAO.CustomerDAOImpl;
import logicapplication.orderDAO.CartDAOImpl;
import logicapplication.orderDAO.OrderDAOImpl;
import model.customer.Account;
import model.customer.Customer;
import model.order.Cart;
import model.order.Order;

/**
 * Servlet implementation class Register
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("Register.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String email = request.getParameter("email");
		String phoneNumber = request.getParameter("phoneNumber");
		String pass = request.getParameter("pass");
		String repass = request.getParameter("re_pass");
		if(!pass.equals(repass)) {
			request.setAttribute("errorMessage", "Password and re-pass are different");
			request.getRequestDispatcher("Register.jsp").forward(request, response);
			return;
		}
		AccountDAOImpl accountDAOImpl = new AccountDAOImpl();
		boolean check = accountDAOImpl.checkDuplicatedName(username);
		if(check) {
			request.setAttribute("errorMessage", "Dupplicated username");
			request.getRequestDispatcher("Register.jsp").forward(request, response);
			return;	
		}
		else {
			Account c = new Account(username,pass);
			int ID = accountDAOImpl.add(c);
			if(ID==-1) {
				request.setAttribute("errorMessage", "Adding error");
				request.getRequestDispatcher("Register.jsp").forward(request, response);
				return;	
			}
			else{
				c.setId(ID);
				int cusID = new CustomerDAOImpl().add(new Customer(phoneNumber,email,c));
				c.setId(cusID);
				HttpSession session = request.getSession();
				session.setAttribute("customer",c);
				int orderID = new OrderDAOImpl().add(new Order(c.getId()));
				int cartID = new CartDAOImpl().add(new Cart());
				new CartDAOImpl().setOrderID(cartID, orderID);
				request.getRequestDispatcher("/home").forward(request, response);
			}
		}
	}

}
