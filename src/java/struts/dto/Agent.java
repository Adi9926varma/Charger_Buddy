package struts.dto;
public class Agent {
    
     private int agentId;
    private String fullName;
    private String password;
    private String contact;
    private String dob;
    private String address;

    public int getAgentId() {
        return agentId;
    }

    public void setAgentId(int agentId) {
        this.agentId = agentId;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }
    
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    

    

    public Agent() {
    }

    public Agent(int agentId, String fullName, String password, String contact, String dob, String address) {
        this.agentId = agentId;
        this.fullName = fullName;
        this.password = password;
        this.contact = contact;
        this.dob = dob;
        this.address = address;
    }

   
    
    
       
    
    
}
