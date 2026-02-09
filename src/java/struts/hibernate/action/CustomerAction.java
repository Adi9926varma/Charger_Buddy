package struts.hibernate.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import struts.dto.Customer;
import struts.hibernate.logicalcode.LogicalCodeDAO;

public class CustomerAction extends ActionSupport implements  ModelDriven<Customer>
{
Customer customer=new Customer();
LogicalCodeDAO dao=new LogicalCodeDAO();
    @Override
    public Customer getModel() 
    {
                    return customer; //
    }

    @Override
    public String execute() throws Exception 
    {
        dao.register(customer);
        return SUCCESS;
    }
    
     public String pwdLogic() throws Exception 
    {

    boolean result=dao.changePassword(customer);
        if(result)
            return SUCCESS;
        else
            return ERROR;    
        
    }

    
    
}
