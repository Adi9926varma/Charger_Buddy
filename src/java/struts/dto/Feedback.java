package struts.dto;

public class Feedback {
    
    private int cId;
    private String feedback;

    
     public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }
   
    
   
    
    
    
    public Feedback() {
    }

    public Feedback(int cId, String feedback) {
        this.cId = cId;
        this.feedback = feedback;
    }

  
}
