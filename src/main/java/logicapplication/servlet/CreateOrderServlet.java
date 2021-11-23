package logicapplication.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.basic.BasicLookAndFeel;

import logicapplication.orderDAO.CartDAOImpl;
import logicapplication.orderDAO.CashDAOImpl;
import logicapplication.orderDAO.OrderDAOImpl;
import logicapplication.orderDAO.ShipmentDAOImpl;
import model.customer.Customer;
import model.order.Cart;
import model.order.Cash;
import model.order.Order;
import model.order.Payment;
import model.order.Shipment;

/**
 * Servlet implementation class CreateOrderSerrvlet
 */
@WebServlet("/createorder")
public class CreateOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreateOrderServlet() {
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
		Cart cart = new CartDAOImpl().getCurrentCart(customer.getId());
		request.setAttribute("cart", cart);
		request.getRequestDispatcher("Order.jsp").forward(request, response);
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
		request.setCharacterEncoding("utf-8");
		String address = request.getParameter("address");
		String shipmentType = request.getParameter("shipmentType");
		float shippingFee = 0;
		String paymentMethod = request.getParameter("paymentMethod");
		String discount = request.getParameter("discount");
		Cart cart = new CartDAOImpl().getCurrentCart(customer.getId());
		
		switch (shipmentType){
			case "fast": {
				shippingFee = 50000;
				shipmentType = "Vận chuyển hỏa tốc";
			}
			case "quick":{
				shippingFee = 40000;
				shipmentType = "Vận chuyển nhanh";
			}
			case "normal":{
				shippingFee = 30000;
				shipmentType = "Vận chuyển tiết kiệm";
			}
		}
		//Thêm cash
		Cash cash = new Cash();
		cash.setTotalAmount(cart.getTotalPrice()+shippingFee);
		cash.setType("Thanh toán khi nhận hàng");
		cash.setCashier("Vui lòng thanh toán cho người vận chuyển");
		cash.setCashTendered(cart.getTotalPrice()+shippingFee);
		int PaymentID = new CashDAOImpl().add(cash);
		//
		int ShipmentID = new ShipmentDAOImpl().add(new Shipment(shipmentType,shippingFee, address));
		//new CashDAOImpl().setID(PaymentID, ShipmentID) -> OK
		new CartDAOImpl().setPaymentID(PaymentID, cart.getId());
		//Set paymentID cho shipment ->OK;
		new ShipmentDAOImpl().setPaymentID(ShipmentID, PaymentID);
		
		int currentOrderID = new OrderDAOImpl().getLastOrderID(customer.getId());
		// Set orderID cho shipment
		new ShipmentDAOImpl().setOrderID(ShipmentID, currentOrderID);
		// Set orderID cho payment
		new CashDAOImpl().setID(PaymentID, currentOrderID);
		//Cập nhật status cho order
		Order order1 = new Order();
		order1.setId(currentOrderID);
		order1.setStatus("process");
		new OrderDAOImpl().updateStatus(order1);
		//SetID cho cash
		new CashDAOImpl().setID(PaymentID, currentOrderID);
//		System.out.println("*************"+PaymentID+","+currentOrderID);
		////////////Tạo order mới
		Order order = new Order();
		order.setCustomer(customer);
		int orderID = new OrderDAOImpl().add(order);
		int cartID = new CartDAOImpl().add(new Cart());
		new CartDAOImpl().setOrderID(cartID, orderID);
		response.sendRedirect(request.getContextPath()+"/orderdetail?id="+currentOrderID);
	}

}
