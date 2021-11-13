package logicapplication.customerDAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import model.customer.Address;
import model.customer.Customer;
import model.customer.FullName;
import model.order.Order;

public class CustomerDAOImpl implements CustomerDAO{

	@Override
	public List<Customer> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Customer get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int add(Customer t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void update(Customer t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Customer t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void viewOrder(Order o) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Customer get(Customer customer) {
		try {
			PreparedStatement preparedStatement = con.
					prepareStatement("SELECT * FROM customer\r\n"
							+ "WHERE CustomerID = ?");
			preparedStatement.setInt(1, customer.getId());
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			if(rs.next()) {
				customer.setPhone(rs.getString(2));
				customer.setMail(rs.getString(3));
			}
			customer.setAddress(new AddressDAOImpl().get(customer.getId()));
			customer.setFullName(new FullNameDAOImpl().get(customer.getId()));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return customer;
	}

}
