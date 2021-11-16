package logicapplication.electonicDAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import model.electronic.Tablet;

public class TabletDAOPImpl implements TabletDAO {

	@Override
	public List<Tablet> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Tablet get(int id) {
		try {
			PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM tablet WHERE ElectronicID = ?");
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			if (rs.next()) {
				Tablet tablet = new Tablet();
				tablet.seteReader(rs.getBoolean(1));
				tablet.setStorageCapacity(rs.getString(2));
				int tabletID = rs.getInt(3);
				tablet.setId(tabletID);

				try {
					PreparedStatement preparedStatement1 = con
							.prepareStatement("SELECT * FROM electronic WHERE ID = ?");
					preparedStatement1.setInt(1, tabletID);
					System.out.println(preparedStatement1);
					ResultSet rs1 = preparedStatement1.executeQuery();
					if (rs1.next()) {
						tablet.setProductName(rs1.getString(2));
						tablet.setBatteryCapacity(rs1.getString(3));
						tablet.setWarrantyDuration(rs1.getString(4));
						tablet.setWarrantyType(rs1.getString(5));
						tablet.setCondition(rs1.getString(6));
						tablet.setScreenSize(rs1.getString(7));
						tablet.setBrand(rs1.getString(8));
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				return tablet;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int add(Tablet t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void update(Tablet t) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Tablet t) {
		// TODO Auto-generated method stub

	}

}
