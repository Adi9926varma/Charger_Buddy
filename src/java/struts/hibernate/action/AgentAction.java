package struts.hibernate.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import struts.dto.Agent;
import struts.hibernate.logicalcode.LogicalCodeDAO;

public class AgentAction extends ActionSupport implements ModelDriven<Agent> 
{
    Agent age=new Agent();
    LogicalCodeDAO dao=new LogicalCodeDAO();

    @Override
    public Agent getModel() {
        return age;
    }

    @Override
    public String execute() throws Exception {
        dao.agent(age);
        return SUCCESS;
    }
    
    
    
    
    
    
}
