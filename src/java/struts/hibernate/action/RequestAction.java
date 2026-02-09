
package struts.hibernate.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.Date;
import struts.dto.Request;
import struts.hibernate.logicalcode.LogicalCodeDAO;


public class RequestAction extends ActionSupport implements ModelDriven
{
 
    Request req=new Request();
    LogicalCodeDAO dao=new LogicalCodeDAO();
    @Override
    public Request getModel() {
        return req;
    }

    @Override
    public String execute() throws Exception 
    {
        req.setDateOfRequest((java.sql.Date) new Date());
        dao.request(req);
        return SUCCESS ; 
    }

}
