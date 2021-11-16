package logicapplication.bookDAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.book.Book;
import model.book.BookItem;

public class BookItemDAOImpl implements BookItemDAO{

	@Override
	public List<BookItem> getAll() {
		List<BookItem> bookItems = new ArrayList<>();
      	try {
             	PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM bookitem;");
             	System.out.println(preparedStatement);
             	ResultSet rs = preparedStatement.executeQuery();

             	while (rs.next()) {
                   	int id = rs.getInt("ID");
                   	PreparedStatement preparedStatement1 = con.prepareStatement("SELECT * FROM bookitem_image\n"
                   			+ "WHERE BookItemID = ?");
                   	preparedStatement1.setInt(1, id);
                   	ResultSet rs1 = preparedStatement1.executeQuery();
                   	List<String> image = new ArrayList<String>();
                   	while(rs1.next()) {
                   		image.add(rs1.getString(3));
                   	}
                   	int bookID = rs.getInt("BookID");
                   	Book book = new BookDAOImpl().get(bookID);
                   	String barcode = rs.getString("Barcode");
                   	float price = rs.getFloat("Price");
                   	String header = rs.getString("Header");
                   	float discount = rs.getFloat("Discount");
                   	String description = rs.getString("Description");
                   	bookItems.add(new BookItem(id, barcode, price, description, header, image, book, discount));
             	}
      	} catch (SQLException e) {
             	// TODO Auto-generated catch block
             	e.printStackTrace();
      	}
      	return bookItems;
	}

	@Override
	public BookItem get(int id) {
		try {
			PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM bookitem WHERE ID = ?");
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			if (rs.next()) {
				BookItem bookItem = new BookItem();

				bookItem.setId(rs.getInt(1));
				int bookID = rs.getInt(2);
				Book book = new BookDAOImpl().get(bookID);
				bookItem.setBook(book);
				bookItem.setBarcode(rs.getString(3));
				bookItem.setPrices(rs.getFloat(4));
				bookItem.setHeader(rs.getString(5));
				bookItem.setDiscount(rs.getFloat(6));
				bookItem.setDescription(rs.getString(7));

				List<String> image = new ArrayList<>();
				try {
					PreparedStatement preparedStatement1 = con
							.prepareStatement("SELECT * FROM bookitem_image WHERE BookItemID = ?");
					System.out.println(preparedStatement1);
					preparedStatement1.setInt(1, id);

					ResultSet rs1 = preparedStatement1.executeQuery();

					while (rs1.next()) {
						String imageString = rs1.getString(3);
						image.add(imageString);
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

				bookItem.setImage(image);

				return bookItem;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int add(BookItem t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void update(BookItem t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(BookItem t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<BookItem> getListByHeader(String header) {
		// TODO Auto-generated method stub
		return null;
	}

}
