package logicapplication.electonicDAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import model.electronic.MobilePhone;

public class MobilePhoneDAOImpl implements MobilePhoneDAO {

	@Override
	public List<MobilePhone> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MobilePhone get(int id) {
		try {
			PreparedStatement preparedStatement = con
					.prepareStatement("SELECT * FROM mobilephone WHERE ElectronicID = ?");
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			if (rs.next()) {
				MobilePhone mobilePhone = new MobilePhone();
				mobilePhone.setRAM(rs.getString(1));
				mobilePhone.setProcessorType(rs.getString(2));
				mobilePhone.setStorageCapacity(rs.getString(3));
				mobilePhone.setMobileCableType(rs.getString(4));
				int mobilePhoneID = rs.getInt(5);
				mobilePhone.setId(mobilePhoneID);
				try {
					PreparedStatement preparedStatement1 = con
							.prepareStatement("SELECT * FROM electronic WHERE ID = ?");
					preparedStatement1.setInt(1, mobilePhoneID);
					System.out.println(preparedStatement1);
					ResultSet rs1 = preparedStatement1.executeQuery();
					if (rs1.next()) {
						mobilePhone.setProductName(rs1.getString(2));
						mobilePhone.setBatteryCapacity(rs1.getString(3));
						mobilePhone.setWarrantyDuration(rs1.getString(4));
						mobilePhone.setWarrantyType(rs1.getString(5));
						mobilePhone.setCondition(rs1.getString(6));
						mobilePhone.setScreenSize(rs1.getString(7));
						mobilePhone.setBrand(rs1.getString(8));
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return mobilePhone;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int add(MobilePhone t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void update(MobilePhone t) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(MobilePhone t) {
		// TODO Auto-generated method stub

	}

}
