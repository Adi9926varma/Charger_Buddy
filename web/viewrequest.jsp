<%@page import="org.hibernate.Criteria,org.hibernate.Session,org.hibernate.SessionFactory,org.hibernate.Transaction,org.hibernate.cfg.Configuration,java.util.List"%>
<%@page import="struts.dto.Request" %>
<%@taglib prefix="strutsns"  uri="/struts-tags"%>
<%@taglib prefix="strutsns_dojo"  uri="/struts-dojo-tags"%>
<strutsns_dojo:head debug="true"/>


<%

SessionFactory sf=new Configuration().configure().buildSessionFactory();
            Session session1=sf.openSession();
            Transaction tx=session1.beginTransaction();
            Criteria crit=session1.createCriteria(Request.class);
            List<Request> data=crit.list();

%>

 <html>
    
    <style>
        a{
            text-decoration: none;
            color:white;
            
        }
        body{
        background-image: url('IMAGES/reqW.jpg');
        background-size: 100%;
             }
             .tabtheme{
                 font-size: 30px;
                 color:#003333;
                 text-transform:uppercase;
                 text-align: center;
                 font-family: arial;
                 background-color:#debe92;
                 
                 
             }
             .tabtheme:hover{
                 transition: width 2s,height 2s,transform 2s;
                 transform: rotateX(360deg);
             }
             @keyframes mytheme{
                from{left: -100%}
                to{left : 0%}
             }
             .dox:hover
             {
                 background-color:black;
             }
             
             .title{
                 margin-left: 50px;
                 color:blue;
                 text-transform: uppercase;
                 font-family:arial;
                 font-size: 60px;
                 text-align: left;
             }   
             .titletab{
                 margin-left: 400px;
                 margin-top: 150px;
                 color: black;
                 font-size: 80px
             }
             .divtheme{
                 background-size: 100%;
                  margin-top: 35px;
                 
             }

             h1{
                 color:black;
                 text-align: center;
                 font-family: arial;
                 font-size: 50px;
             }
             .titlelab{
                 animation: mytheme 4s;
                 animation-fill-mode: forwards;
                 position: relative;
                 color:#000000;
             }
             @keyframes aditheme{
                from{bottom: -100%}
                to{top: 100%}
             }
             
             .adilab{
                 animation: aditheme 4s;
                 animation-fill-mode: forwards;
                 position: relative;
             }
             .divtheme1{
                 background-image: url('IMAGES/ezgif.com-speed.gif');
                 width:700px; 
                 height:600px;
                 color: coral;
             }
             footer {
                background-color: #222;
                color: #fff;
                padding: 20px;
                text-align: center;
             }
             .hero {
                background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.6)), url('images/reqW.jpg') no-repeat center center/cover;
                height: 85vh;
                display: flex;
                align-items: center;
                justify-content: center;
                color: white;
                text-align: center;
                padding: 20px;
                }
             .hero-text h1 {
                font-size: 3rem;
                margin-bottom: 15px;
                color: white;
                }
             .hero-text p {
                font-size: 1.2rem;
                margin-bottom: 20px;
                }
             .btn {
                background-color: #28a745;
                padding: 12px 25px;
                color: #fff;
                text-decoration: none;
                border-radius: 8px;
                font-weight: bold;
                }
              .services {
                 padding: 50px 20px;
                 background-color: #fff;
                 text-align: center;
                 }
               .service-boxes {
                 display: flex;
                 justify-content: center;
                 gap: 30px;
                 margin-top: 30px;
                 flex-wrap: wrap;
                 }
              .box {
                 background: #f1f1f1;
                 padding: 25px;
                 width: 250px;
                 border-radius: 10px;
                 box-shadow: 0 4px 8px rgba(0,0,0,0.1);
                 }
              header {
                 background-color: #222;
                 color: #fff;
                 padding: 15px 40px;
                 display: flex;
                 justify-content: space-between;
                 align-items: center;
                 }
               header .logo {
                 font-size: 24px;
                 font-weight: bold;
                 }
               nav a {
                  margin: 0 15px;
                  color: #fff;
                  text-decoration: none;
                  }
               .about {
                  padding: 40px 20px;
                  text-align: center;
                  background-color: #e9f7ef;
                  }    
                .products {
                  padding: 40px 20px;
                  background: #fff;
                  text-align: center;
                  }
              .product-grid {
                  display: flex;
                  justify-content: center;
                  gap: 25px;
                  flex-wrap: wrap;
                  margin-top: 30px;
                  }
              .product-card {
                  background: #fdfdfd;
                  padding: 15px;
                  width: 220px;
                  border: 1px solid #ddd;
                  border-radius: 10px;
                  }
              .product-card img {
                  width: 100%;
                  border-radius: 8px;
                  }
                * {
                  margin: 0;
                  padding: 0;
                  box-sizing: border-box;
                  font-family: 'Segoe UI', sans-serif;
                  }
                body {
                  background-color: #f9f9f9;
                  color: #333;
                  }
                  .formtheme{
                   width:850px;
                   height: 550px;
                   background-color:rgba(255,255,255,0.5);
                   box-shadow: 5px 5px 5px black;
                   font-size:15px;
                   margin-left:150px;
                   margin-bottom: 50px;
                   border: outset;
                    }
        

   


             
             
        
    </style>
 <body>
         <header>
    <div class="logo"> Buddy Charger</div>
    <nav>
      <!--                    define all the actions here-->
                <%--<strutsns:a href="homeurl.action">Home</strutsns:a>--%>
                <strutsns:a href="producturl.action">Our Products</strutsns:a>
                <strutsns:a href="abouturl.action">About</strutsns:a>
                <strutsns:a href="contacturl.action">Contact</strutsns:a>
                <strutsns:a href="viewcomplainurl.action">View Complain</strutsns:a>
                <strutsns:a href="viewfeedbackurl.action">View Feedback</strutsns:a>
                <strutsns:a href="viewrequesturl.action">View Request</strutsns:a>
                <strutsns:a href="logouturl.action">Logout</strutsns:a>
                <strutsns:a href="admin_pwd_setting">Setting</strutsns:a>

    </nav>
  </header>
       
   <section class="hero">
         
    <strutsns:div cssClass="formtheme">
                    
                    <table>
                        <tr>
             <td>
              
    <table align="center" cellspacing="6px" cellpadding="2px">
        <h1 align="center">VIEW REQUESTS</h1>
        <tr align='center'  bgcolor='yellow'width="100%"><br>
            <td>Request Id</td>
            <td>Customer Id</td>
            <td>Delivery Date</td>
            <td> Date of Order</td>
            <td> Request Type</td>
            <td>NO Of Items </td>
            <td> Location</td>
        </tr>
                       <%
                        for(Request record:data)
                        {
                        %>

        <tr align='center'>
            <td><%=record.getRequestId()%></td>
            <td><%=record.getcId()%></td>
            <td><%=record.getDeliveryDate()%></td>
            <td><%=record.getDateOfRequest()%></td>
            <td><%=record.getRequestType()%></td>
            <td><%=record.getNoOfItems()%></td>
            <td><%=record.getLocation()%></td>
        </tr>
                                
                        <%}%>


    </table>
</td>
                        </tr>
                        
                    </table>
                </strutsns:div>           
     
  </section>             
         
   
    
  <footer>
    <p>© 2025 Buddy Charger. All Rights Reserved.</p>
    <p>Email: support@buddycharger.com | Call: 1800-123-456</p>
  </footer>
         
 </body>
</html>
 

       