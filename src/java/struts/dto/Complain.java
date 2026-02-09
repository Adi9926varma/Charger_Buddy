package struts.dto;

public class Complain {
    
    private int complainId; // auto generated
    private int  cId;
    private String fullName;
    private int contact;
    private String complain;

    
    
    public int getComplainId() {
        return complainId;
    }

    public void setComplainId(int complainId) {
        this.complainId = complainId;
    }

    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public int getContact() {
        return contact;
    }

    public void setContact(int contact) {
        this.contact = contact;
    }

    public String getComplain() {
        return complain;
    }

    public void setComplain(String complain) {
        this.complain = complain;
    }
    

    
    public Complain() {
    }

    public Complain(int complainId, int cId, String fullName, int contact, String complain) {
        this.complainId = complainId;
        this.cId = cId;
        this.fullName = fullName;
        this.contact = contact;
        this.complain = complain;
    }

    
    
    
    
}
