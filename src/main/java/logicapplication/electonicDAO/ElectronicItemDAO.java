package logicapplication.electonicDAO;

import java.util.List;

import logicapplication.baseDAO.BaseDAO;
import model.book.BookItem;
import model.electronic.ElectronicItem;

public interface ElectronicItemDAO extends BaseDAO<ElectronicItem>{
	List<BookItem> getListByHeader(String header);
	
}
