
package struts.dto;

import java.sql.Date;


public class Request {
     
    private int requestId;
    private String cId;
    private Date deliveryDate;
    private Date dateOfRequest;
    private String requestType;
    private String location;
    private String noOfItems;

    
    public int getRequestId() {
        return requestId;
    }

    
    public void setRequestId(int requestId) {
        this.requestId = requestId;
    }

   
    public String getcId() {
        return cId;
    }

    
    public void setcId(String cId) {
        this.cId = cId;
    }

    
    public Date getDeliveryDate() {
        return deliveryDate;
    }

   
    public void setDeliveryDate(Date deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    
    public Date getDateOfRequest() {
        return dateOfRequest;
    }

    
    public void setDateOfRequest(Date dateOfRequest) {
        this.dateOfRequest = dateOfRequest;
    }

    
    public String getRequestType() {
        return requestType;
    }

    
    public void setRequestType(String requestType) {
        this.requestType = requestType;
    }

   
    public String getLocation() {
        return location;
    }

    
    public void setLocation(String location) {
        this.location = location;
    }
    
    
    public String getNoOfItems() {
        return noOfItems;
    }

    public void setNoOfItems(String noOfItems) {
        this.noOfItems = noOfItems;
    }
    
    
    

    public Request() {
    }

    public Request(int requestId, String cId, Date deliveryDate, Date dateOfRequest, String requestType, String location, String noOfItems) {
        this.requestId = requestId;
        this.cId = cId;
        this.deliveryDate = deliveryDate;
        this.dateOfRequest = dateOfRequest;
        this.requestType = requestType;
        this.location = location;
        this.noOfItems = noOfItems;
    }

  
}
