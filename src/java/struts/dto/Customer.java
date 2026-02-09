package struts.dto;

public class Customer {
    
     private int cId;
    private String fullName;
    private String password;
    private String contact;
    private String dob;
    private String city;
    private String customerNewPassword;
    private String customercNPassword;
    
    
   
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

    
    public String getCity() {
        return city;
    }

    
    public void setCity(String city) {
        this.city = city;
    }

    
    

  
    public Customer() {
    }

    @Override
    public String toString() {
        return "Customer{" + "cId=" + cId + ", fullName=" + fullName + ", password=" + password + ", contact=" + contact + ", dob=" + dob + ", city=" + city +'}'; 
    }

    public Customer(int cId, String fullName, String password, String contact, String dob, String city, String customerNewPassword, String customercNPassword) {
        this.cId = cId;
        this.fullName = fullName;
        this.password = password;
        this.contact = contact;
        this.dob = dob;
        this.city = city;
        this.customerNewPassword = customerNewPassword;
        this.customercNPassword = customercNPassword;
    }

    
    
    
    

    public String getCustomerNewPassword() {
        return customerNewPassword;
    }

    public void setCustomerNewPassword(String customerNewPassword) {
        this.customerNewPassword = customerNewPassword;
    }

    public String getCustomercNPassword() {
        return customercNPassword;
    }

    public void setCustomercNPassword(String customercNPassword) {
        this.customercNPassword = customercNPassword;
    }

    
}
