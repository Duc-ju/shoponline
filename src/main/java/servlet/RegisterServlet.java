package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import logicapplication.customerDAO.AccountDAOImpl;
import model.customer.Account;
import model.customer.Customer;

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
			int ID = accountDAOImpl.add(new Account(username,pass));
			if(ID==-1) {
				request.setAttribute("errorMessage", "Adding error");
				request.getRequestDispatcher("Register.jsp").forward(request, response);
				return;	
			}
			else {
				
			}
		}
//		AccountDAO accountDAO= new AccountDAO();
//		if(accountDAO.checkAccountByName(name)) {
//			request.setAttribute("errorMessage", "The user name is used");
//			request.getRequestDispatcher("Register.jsp").forward(request, response);
//			return;
//		}
//		else {  
//			accountDAO.addAccount(new Account(name, pass));
//			CustomerDAO customerDAO = new CustomerDAO();
//			customerDAO.addCustomer(new Customer(nickname,
//					accountDAO.getAccount(new Account(name, pass)), null));
//			Customer customer = new CustomerDAO().getCustomer
//					(new AccountDAO().getAccount(new Account(name, pass)));
//			new CartDAO().createCartByCustomerID(customer.getID());
//			HttpSession session = request.getSession();
//			session.setAttribute("customer",customer);
//			response.sendRedirect(request.getContextPath()+"/home");
//		}
	}

}
