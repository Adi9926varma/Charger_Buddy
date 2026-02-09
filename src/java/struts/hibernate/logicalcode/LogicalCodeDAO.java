package struts.hibernate.logicalcode;

import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import struts.dto.AdminLogin;
import struts.dto.Agent;
import struts.dto.Complain;
import struts.dto.Customer;
import struts.dto.Feedback;
import struts.dto.Request;
public class LogicalCodeDAO 
{
        public void register(Customer customer)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session session=sf.openSession();
            Transaction tx=session.beginTransaction();
            session.save(customer);
            tx.commit();
            session.close();
        }
        
          public boolean checkLogin(Customer customer)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session session=sf.openSession();
            Transaction tx=session.beginTransaction();
            Criteria crit=session.createCriteria(Customer.class);
            crit.add(Restrictions.and(Restrictions.eq("cId",customer.getcId()),Restrictions.eq("password",customer.getPassword())));
                        List<Customer> list=crit.list();
                        if(list.isEmpty())
                            return  false;
                        return true;
        }
          
           public boolean checkAdminLogin(AdminLogin al)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session session=sf.openSession();
            Transaction tx=session.beginTransaction();
            Criteria crit=session.createCriteria(AdminLogin.class);
            crit.add(Restrictions.and(Restrictions.eq("adminId",al.getAdminId()),Restrictions.eq("password",al.getPassword())));
                        List<AdminLogin> list=crit.list();
                        if(list.isEmpty())
                            return  false;
                        return true;
        }
           
            public boolean changePassword(AdminLogin al)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session session=sf.openSession();
            Transaction tx=session.beginTransaction();
            Criteria crit=session.createCriteria(AdminLogin.class);
            crit.add(Restrictions.and(Restrictions.eq("adminId",al.getAdminId()),Restrictions.eq("password",al.getPassword())));
                        List<AdminLogin> list=crit.list();
                        if(!list.isEmpty())
                        {
                                if(al.getAdminNewPassword().equals(al.getAdmincNPassword()))
                                {
                AdminLogin ref=(AdminLogin)session.get(AdminLogin.class,al.getAdminId());
                ref.setPassword(al.getAdminNewPassword());
                session.update(ref);
                tx.commit();
                return true;
                                }
                        }
                        return false;
        }
            
            
            
            public boolean changePassword(Customer customer)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session session=sf.openSession();
            Transaction tx=session.beginTransaction();
            Criteria crit=session.createCriteria(Customer.class);
            crit.add(Restrictions.and(Restrictions.eq("cId",customer.getcId()),Restrictions.eq("password",customer.getPassword())));
                        List<Customer> list=crit.list();
                        if(!list.isEmpty())
                        {
                                if(customer.getCustomerNewPassword().equals(customer.getCustomercNPassword()))
                                {
                Customer ref=(Customer)session.get(Customer.class,customer.getcId());
                ref.setPassword(customer.getCustomerNewPassword());
                session.update(ref);
                tx.commit();
                return true;
                                }
                        }
                        return false;

        }
            
             public void request(Request req)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session session=sf.openSession();
            Transaction tx=session.beginTransaction();
            session.save(req);
            tx.commit();
            session.close();
        }
             
             public void complain(Complain com)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session session=sf.openSession();
            Transaction tx=session.beginTransaction();
            session.save(com);
            tx.commit();
            session.close();
        }
             
              public void feedback(Feedback feed)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session session=sf.openSession();
            Transaction tx=session.beginTransaction();
            session.save(feed);
            tx.commit();
            session.close();
        }
              
              
                public void agent(Agent age)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session session=sf.openSession();
            Transaction tx=session.beginTransaction();
            session.save(age);
            tx.commit();
            session.close();
        }
                
                
                  public boolean agentCheckLogin(Agent ag)
        {
            SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session session=sf.openSession();
            Transaction tx=session.beginTransaction();
            Criteria crit=session.createCriteria(Agent.class);
            crit.add(Restrictions.and(Restrictions.eq("agentId",ag.getAgentId()),Restrictions.eq("password",ag.getPassword())));
                        List<Agent> list=crit.list();
                        if(list.isEmpty())
                            return  false;
                        return true;
        }
        
}


