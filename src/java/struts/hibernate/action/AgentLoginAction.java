package struts.hibernate.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import struts.dto.Agent;
import struts.hibernate.logicalcode.LogicalCodeDAO;

public class AgentLoginAction extends ActionSupport implements ModelDriven<Agent>
{
    Agent ag=new Agent();
    LogicalCodeDAO dao=new LogicalCodeDAO();

    @Override
    public Agent getModel() {
        return ag;
        
    }

    @Override
    public String execute() throws Exception {
        boolean result=dao.agentCheckLogin(ag);
        if(result)
            return SUCCESS;
        else
            return ERROR;
    }
    
    
    
    
    
    
    
    
}
