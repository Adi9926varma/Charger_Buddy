package struts.hibernate.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import struts.dto.Feedback;
import struts.hibernate.logicalcode.LogicalCodeDAO;

public class FeedbackAction extends ActionSupport implements ModelDriven<Feedback> 
{
    Feedback feed=new Feedback();
    LogicalCodeDAO dao=new LogicalCodeDAO();

    @Override
    public Feedback getModel() {
    return feed;   
    }

    @Override
    public String execute() throws Exception {
        dao.feedback(feed);
        return SUCCESS;
    }
    
    
    
    
    
    
    

    
}
