
package struts.hibernate.action;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import struts.dto.AdminLogin;
import struts.hibernate.logicalcode.LogicalCodeDAO;


public class AdminLoginAction extends ActionSupport implements ModelDriven<AdminLogin> 
{  
    
    AdminLogin al=new AdminLogin();
    LogicalCodeDAO dao=new LogicalCodeDAO();
    @Override
    public AdminLogin getModel(){
        return al;
    }
    
    @Override
    public String execute()throws Exception{
        boolean result=dao.checkAdminLogin(al);
        if(result)
            return SUCCESS;
        else 
            return ERROR;
    }
    
      public String pwdLogic() throws Exception 
    {

    boolean result=dao.changePassword(al);
        if(result)
            return SUCCESS;
        else
            return ERROR;    
        
    }
            
    
}
