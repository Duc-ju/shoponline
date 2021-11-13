package logicapplication.customerDAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import model.customer.Account;
import model.customer.Customer;

public class AccountDAOImpl implements AccountDAO{

	@Override
	public List<Account> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Account get(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int add(Account t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void update(Account t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Account t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Customer CheckAccount(Account account) {
		try {
			PreparedStatement preparedStatement = con.
					prepareStatement("SELECT * FROM account\r\n"
							+ "WHERE username = ?\r\n"
							+ "AND passWord = ?");
			preparedStatement.setString(1, account.getUsername());
			preparedStatement.setString(2, account.getPassword());
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			Customer customer = new Customer();
			if(rs.next()) {
				account.setId(rs.getInt(1));
				customer.setId(2);
				return customer;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
