package logicapplication.orderDAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import model.customer.Customer;
import model.order.Cart;
import model.order.Order;

public class OrderDAOImpl implements OrderDAO{

	@Override
	public List<Order> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Order get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int add(Order t) {
		try {
			PreparedStatement preparedStatement = con
					.prepareStatement("INSERT INTO `order` (CustomerID, Status) VALUES (?,?);");

			preparedStatement.setInt(1, t.getId());
			preparedStatement.setString(2, "new");

			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
			try {
				PreparedStatement preparedStatement1 = con.prepareStatement("SELECT MAX(ID) FROM `order`;");
				System.out.println(preparedStatement1);
				ResultSet rs1 = preparedStatement1.executeQuery();
				if(rs1.next()) {
					return rs1.getInt(1);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public void update(Order t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Order t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void getCustomer(Customer c) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void getCart(Cart c) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateStatus(Order o) {
		try {
			PreparedStatement preparedStatement = con.prepareStatement("UPDATE `order` SET Status = ? WHERE ID = ?");

			preparedStatement.setString(1, o.getStatus());
			preparedStatement.setInt(2, o.getId());

			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
