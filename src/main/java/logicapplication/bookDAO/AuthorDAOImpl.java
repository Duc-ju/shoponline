package logicapplication.bookDAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import model.book.Author;

public class AuthorDAOImpl implements AuthorDAO{

	@Override
	public List<Author> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Author get(int id) {
		try {
			PreparedStatement preparedStatement = con.prepareStatement("SELECT * FROM author WHERE ID = ?");
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			if (rs.next()) {
				Author author = new Author();
				author.setId(rs.getInt(1));
				author.setName(rs.getString(2));
				author.setBiography(rs.getString(3));
				author.setEmail(rs.getString(4));
				author.setAddress(rs.getString(5));
				return author;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int add(Author t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void update(Author t) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Author t) {
		// TODO Auto-generated method stub
		
	}

}
