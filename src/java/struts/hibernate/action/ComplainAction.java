
package struts.hibernate.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import struts.dto.Complain;
import struts.hibernate.logicalcode.LogicalCodeDAO;


public class ComplainAction extends ActionSupport implements ModelDriven<Complain>
{
    Complain com=new Complain();
    LogicalCodeDAO dao=new LogicalCodeDAO();

    @Override
    public Complain getModel() {
        return com;
    }

    @Override
    public String execute() throws Exception {
       dao.complain(com);
       return SUCCESS;
    }
    
    
    
    
    
}
