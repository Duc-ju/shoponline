package logicapplication.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.If;

import logicapplication.bookDAO.BookItemDAOImpl;
import logicapplication.electonicDAO.ElectronicItemDAOImpl;
import logicapplication.orderDAO.CartDAOImpl;
import model.book.BookItem;
import model.customer.Customer;
import model.electronic.ElectronicItem;

/**
 * Servlet implementation class ProductPageServlet
 */
@WebServlet("/productpage")
public class ProductPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductPageServlet() {
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
			List<BookItem> bookItems = new ArrayList<BookItem>();
			bookItems = new BookItemDAOImpl().getAll();
			List<List<BookItem>> bookItemSplit = new ArrayList<List<BookItem>>();
			int j=0;
			for(int i=0; i<bookItems.size(); i=i+5) {
				int last = i+5;
				if(last>bookItems.size()-1) last = bookItems.size()-1;
				bookItemSplit.add(bookItems.subList(i, last));
			}
			request.setAttribute("title", "Sản phẩm sách");
			request.setAttribute("type", "bookitem");
			request.setAttribute("items", bookItemSplit);
			request.getRequestDispatcher("ProductPage.jsp").forward(request, response);
		}else 
		if(type.equals("electronicitem")||type.equals("laptopitem")||type.equals("tabletitem")||type.equals("mobilephoneitem")) {
			List<ElectronicItem> electronicItems = new ArrayList<ElectronicItem>();
			ElectronicItemDAOImpl electronicItemDAOImpl = new ElectronicItemDAOImpl();
			switch (type) {
				case "electronicitem": 
					electronicItems = electronicItemDAOImpl.getAll();
					break;
				case "laptopitem":
					electronicItems = electronicItemDAOImpl.getLaptopItems();
					break;
				case "tabletitem":
					electronicItems = electronicItemDAOImpl.getTabletItems();
					break;
				case "mobilephoneitem":
					electronicItems = electronicItemDAOImpl.getMobilePhones();
					break;
			}
			
			List<List<ElectronicItem>> electronicItemSplit = new ArrayList<List<ElectronicItem>>();
			int j=0;
			for(int i=0; i<electronicItems.size(); i=i+5) {
				int last = i+5;
				if(last>electronicItems.size()-1) last = electronicItems.size()-1;
				electronicItemSplit.add(electronicItems.subList(i, last));
			}
			switch (type) {
				case "electronicitem": 
					request.setAttribute("title", "Sản phẩm thuộc ngành hàng điện tử");
					break;
				case "laptopitem":
					request.setAttribute("title", "Sản phẩm thuộc ngành hàng Laptop");
					break;
				case "tabletitem":
					request.setAttribute("title", "Sản phẩm thuộc ngành hàng Máy tính bảng");
					break;
				case "mobilephoneitem":
					request.setAttribute("title", "Sản phẩm thuộc ngành hàng �?iện thoại");
					break;
			}
			request.setAttribute("type", "electronicitem");
			request.setAttribute("items", electronicItemSplit);
			request.getRequestDispatcher("ProductPage.jsp").forward(request, response);
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
