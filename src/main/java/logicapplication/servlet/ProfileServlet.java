package logicapplication.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import logicapplication.customerDAO.AccountDAOImpl;
import logicapplication.customerDAO.AddressDAOImpl;
import logicapplication.customerDAO.CustomerDAOImpl;
import logicapplication.customerDAO.FullNameDAOImpl;
import logicapplication.orderDAO.CartDAOImpl;
import model.customer.Account;
import model.customer.Address;
import model.customer.Customer;
import model.customer.FullName;

/**
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/profile")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProfileServlet() {
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
		request.setAttribute("numberOfItems", new CartDAOImpl().getCurrentCart(customer.getId()).getQuanity());
		request.getRequestDispatcher("Profile.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Customer customer = (Customer) request.getSession().getAttribute("customer");
		if(customer==null) {
			response.sendRedirect("Login.jsp");
			return;
		}
		request.setAttribute("numberOfItems", new CartDAOImpl().getCurrentCart(customer.getId()).getQuanity());
		request.setCharacterEncoding("utf-8");
		String firstName = request.getParameter("fistname");
		String midName = request.getParameter("midname");
		String lastName = request.getParameter("lastname");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String mail = request.getParameter("mail");
		String phone = request.getParameter("phone");
		String numberHouse = request.getParameter("numberhouse");
		String province = request.getParameter("province");
		String district = request.getParameter("district");
		String street = request.getParameter("street");
		String image = request.getParameter("image");
		String sex = request.getParameter("sex");
		//Update account
		Account account = new Account();
		account.setId(customer.getAccount().getId());
		account.setPassword(password);
		new AccountDAOImpl().update(account);
		//Update address
		Address address = new Address();
		address.setCity(province);
		address.setDistrict(district);
		address.setNumberHouse(numberHouse);
		address.setStreet(street);
		if(customer.getAddress()==null) {
			int AddressID = new AddressDAOImpl().add(address);
			new CustomerDAOImpl().setAddressId(AddressID, customer.getId());
		}
		else {
			address.setId(customer.getAddress().getId());
			new AddressDAOImpl().update(address);
		}
		//Update Fullname
		FullName fullName = new FullName();
		fullName.setFirstName(firstName);
		fullName.setMidName(midName);
		fullName.setLastName(lastName);
		if(customer.getFullName()==null) {
			int FullNameID = new FullNameDAOImpl().add(fullName);
			new CustomerDAOImpl().setFullNameId(FullNameID, customer.getId());
		}
		else {
			fullName.setId(customer.getFullName().getId());
			new FullNameDAOImpl().update(fullName);
		}
	
		customer.setImage(image);
		customer.setMail(mail);
		customer.setSex(sex);
		customer.setPhone(phone);
		new CustomerDAOImpl().update(customer);
		Customer newCustomer = new CustomerDAOImpl().get(customer.getId());
		HttpSession session = request.getSession();
		session.setAttribute("customer",newCustomer);
		request.getRequestDispatcher("/profile").forward(request, response);
	}

}
