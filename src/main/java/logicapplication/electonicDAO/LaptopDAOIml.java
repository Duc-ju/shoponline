package logicapplication.electonicDAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import model.electronic.Laptop;

public class LaptopDAOIml implements LaptopDAO{

	@Override
	public List<Laptop> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Laptop get(int id) {
		try {
			PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM laptop WHERE ElectronicID = ?");
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();

			if (rs.next()) {
				Laptop laptop = new Laptop();
				laptop.setLaptopType(rs.getString(1));
				laptop.setStorageType(rs.getString(2));
				laptop.setWeight(rs.getString(3));
				int laptopID = rs.getInt(4);
				laptop.setId(laptopID);
				try {
					PreparedStatement preparedStatement1 = con
							.prepareStatement("SELECT * FROM electronic WHERE ID = ?");
					preparedStatement1.setInt(1, laptopID);
					System.out.println(preparedStatement1);
					ResultSet rs1 = preparedStatement1.executeQuery();
					if (rs1.next()) {
						laptop.setProductName(rs1.getString(2));
						laptop.setBatteryCapacity(rs1.getString(3));
						laptop.setWarrantyDuration(rs1.getString(4));
						laptop.setWarrantyType(rs1.getString(5));
						laptop.setCondition(rs1.getString(6));
						laptop.setScreenSize(rs1.getString(7));
						laptop.setBrand(rs1.getString(8));
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return laptop;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int add(Laptop t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void update(Laptop t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Laptop t) {
		// TODO Auto-generated method stub
		
	}
}
