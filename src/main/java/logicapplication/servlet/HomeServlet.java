package logicapplication.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import logicapplication.bookDAO.BookItemDAOImpl;
import logicapplication.electonicDAO.ElectronicItemDAOImpl;
import logicapplication.orderDAO.CartDAOImpl;
import model.book.Book;
import model.book.BookItem;
import model.book.Category;
import model.customer.Customer;
import model.electronic.ElectronicItem;

/**
 * Servlet implementation class Home
 */
@WebServlet(name = "HomeServlet", urlPatterns = { "/home" })
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeServlet() {
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
		List<BookItem> bookItems = new BookItemDAOImpl().getAll().subList(0, 13);
		List<ElectronicItem> electronicItems = new ElectronicItemDAOImpl().getAll().subList(0, 13);
		List<List<BookItem>> bookItemSplit = new ArrayList<List<BookItem>>();
		int j=0;
		for(int i=0; i<bookItems.size(); i=i+6) {
			int last = i+6;
			if(last>bookItems.size()-1) last = bookItems.size()-1;
			bookItemSplit.add(bookItems.subList(i, last));
		}
		List<List<ElectronicItem>> electronicItemSplit = new ArrayList<List<ElectronicItem>>();
		j=0;
		for(int i=0; i<electronicItems.size(); i=i+6) {
			int last = i+6;
			if(last>electronicItems.size()-1) last = electronicItems.size()-1;
			electronicItemSplit.add(electronicItems.subList(i, last));
		}
		request.setAttribute("bookItems", bookItemSplit);
		request.setAttribute("elctronicItems", electronicItemSplit);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
