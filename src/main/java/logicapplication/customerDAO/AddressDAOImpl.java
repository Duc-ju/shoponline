package logicapplication.customerDAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import model.customer.Address;
import model.customer.Customer;

public class AddressDAOImpl implements AddressDAO{

	@Override
	public List<Address> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Address get(int id) {
		try {
			PreparedStatement preparedStatement = con.
					prepareStatement("SELECT * FROM address\r\n"
							+ "WHERE CustomerID = ?");
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			Customer customer = new Customer();
			if(rs.next()) {
				Address address = new Address();
				address.setId(rs.getInt(1));
				address.setNumberHouse(rs.getString(3));
				address.setStreet(rs.getString(4));
				address.setDistrict(rs.getString(5));
				address.setCity(rs.getString(6));
				return address;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int add(Address t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void update(Address t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Address t) {
		// TODO Auto-generated method stub
		
	}

}
