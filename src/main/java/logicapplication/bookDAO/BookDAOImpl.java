package logicapplication.bookDAO;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.book.Book;
import model.book.*;

public class BookDAOImpl implements BookDAO{

	@Override
	public List<Book> getAll() {
		List<Book> books = new ArrayList<>();
		try {
			PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM book;");
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();

			while (rs.next()) {
				int id = rs.getInt("ID");
				int categoryID = rs.getInt("CategoryID");
				Category category = new CategoryImpl().get(categoryID);

				int publisherID = rs.getInt("PublisherID");
				Publisher publisher = new PublisherDAOImpl().get(publisherID);

				int authorID = rs.getInt("AuthorID");
				Author author = new AuthorDAOImpl().get(authorID);

				String IBSN = rs.getString("IBSN");
				String title = rs.getString("Title");
				String language = rs.getString("Language");
				Date publicationDate = rs.getDate("PublicationDate");
				int numberOfPage = rs.getInt("NumberOfPage");

				books.add(new Book(id, IBSN, title, language, publicationDate, numberOfPage, author, category,
						publisher));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return books;
	}

	@Override
	public Book get(int id) {
		try {
			PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM book WHERE ID = ?");
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			if (rs.next()) {
				Book book = new Book();
				book.setId(rs.getInt(1));

				int categoryID = rs.getInt(2);
				book.setCategory(new CategoryImpl().get(categoryID));

				int publisherID = rs.getInt(3);
				book.setPublisher(new PublisherDAOImpl().get(publisherID));

				int authorID = rs.getInt(4);
				book.setAuthor(new AuthorDAOImpl().get(authorID));

				book.setIBSN(rs.getString(5));
				book.setTitle(rs.getString(6));
				book.setLanguage(rs.getString(7));
				book.setPublicationDate(rs.getDate(8));
				book.setNumberOfPage(rs.getInt(9));

				return book;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int add(Book t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void update(Book t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Book t) {
		// TODO Auto-generated method stub
		
	}

}
