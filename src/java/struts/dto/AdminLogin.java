package struts.dto;

public class AdminLogin{
    private int adminId;
    private String password;
    private String adminNewPassword;
private String admincNPassword;



    public int getAdminId() {
        return adminId;
    }

    public String getPassword() {
        return password;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getAdminNewPassword() {
        return adminNewPassword;
    }

    
    public void setAdminNewPassword(String adminNewPassword) {
        this.adminNewPassword = adminNewPassword;
    }

   
    public String getAdmincNPassword() {
        return admincNPassword;
    }

  
    public void setAdmincNPassword(String admincNPassword) {
        this.admincNPassword = admincNPassword;
    }
    

    public AdminLogin() {
    }
    
    public AdminLogin(int adminId, String password, String adminNewPassword, String admincNPassword ) {
        this.adminId = adminId;
        this.password = password;
        this.adminNewPassword=adminNewPassword;
        this.admincNPassword=adminNewPassword;
    }

    @Override
    public String toString() {
        return "AdminLogin{" + "adminId=" + adminId + ", password=" + password + ", adminNewPassword=" + adminNewPassword + ", admincNPassword =" + admincNPassword+'}';
    }

}
