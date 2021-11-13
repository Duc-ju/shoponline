package logicapplication.customerDAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import model.customer.Address;
import model.customer.Customer;
import model.customer.FullName;

public class FullNameDAOImpl implements FullNameDAO{

	@Override
	public List<FullName> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public FullName get(int id) {
		try {
			PreparedStatement preparedStatement = con.
					prepareStatement("SELECT * FROM fullname\r\n"
							+ "WHERE CustomerID = ?");
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			Customer customer = new Customer();
			if(rs.next()) {
				return new FullName(rs.getInt(1),
						rs.getString(3),
						rs.getString(4),
						rs.getString(5));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int add(FullName t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void update(FullName t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(FullName t) {
		// TODO Auto-generated method stub
		
	}

}
