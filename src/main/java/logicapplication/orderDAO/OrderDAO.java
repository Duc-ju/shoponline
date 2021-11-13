package logicapplication.orderDAO;

import logicapplication.baseDAO.BaseDAO;
import model.customer.Customer;
import model.order.Cart;
import model.order.Order;

public interface OrderDAO extends BaseDAO<Order>{
	void getCustomer(Customer c);
	void getCart(Cart c);
}
