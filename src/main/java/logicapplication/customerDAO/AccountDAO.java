package logicapplication.customerDAO;

import logicapplication.baseDAO.BaseDAO;
import model.customer.Account;
import model.customer.Customer;

public interface AccountDAO extends BaseDAO<Account>{
	Customer CheckAccount(Account account);
	boolean checkDuplicatedName(String username);
}
