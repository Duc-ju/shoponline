package logicapplication.customerDAO;

import logicapplication.baseDAO.BaseDAO;
import model.customer.Customer;
import model.order.Order;

public interface CustomerDAO extends BaseDAO<Customer>{
	void viewOrder(Order o);
	Customer get(Customer customer);
}
