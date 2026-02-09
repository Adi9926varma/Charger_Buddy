<%@taglib prefix="strutsns" uri="/struts-tags" %>

<%@taglib prefix="strutsns_dojo" uri="/struts-dojo-tags" %>

<!--AJAX: Asynchronous java script & XML : dynamic components-->
<strutsns_dojo:head debug="true"/>

 <html>
    
    <style>
        a{
            text-decoration: none;
            color:white;
            
        }
        body{
        background-image: url('IMAGES/comB_1.jpg');
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
             
             .divtheme{
                 background-size: 100%;
                  margin-top: 35px;
                 
             }

             h1{
                 color:black;
                 text-align: center;
                 font-family: arial;
                 font-size: 50px;
                 margin-bottom: 50px;
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
             
             footer {
                background-color: #222;
                color: #fff;
                padding: 20px;
                text-align: center;
             }
             .hero {
                background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.6)), url('images/natu.jpg') no-repeat center center/cover;
                height: 85vh;
                display: flex;
                align-items: center;
                justify-content: center;
                color: white;
                text-align: center;
                padding: 20px;
                background-repeat: none;
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
                   background-color:rgba(255,255,255,0.6);
                   box-shadow: 5px 5px 5px black;
                   font-size:12px;
                   margin-left:150px;
                   border-radius: 30px;
                   margin-bottom: 50px;
                    }
        
                .buttontheme{
                    width:150px;
                    background-color:black;
                    color:white;
                    font-size:16px;
                    text-align: center;
                    }
               .texttheme{
                    width:300px;
                    height: 30px;
                    }

   


             
             
        
    </style>
 <body>
         <header>
    <div class="logo"> Buddy Charger</div>
    <nav>
      <!--                    define all the actions here-->
                <strutsns:a href="producturl.action">Products</strutsns:a>
                <strutsns:a href="abouturl.action">About</strutsns:a>
                <strutsns:a href="contacturl.action">Contact</strutsns:a>
                <strutsns:a href="complainurl.action">Complain</strutsns:a>
                <strutsns:a href="feedbackurl.action">Feedback</strutsns:a>
                <strutsns:a href="requesturl.action">Request</strutsns:a>
                <strutsns:a href="logouturl.action">Logout</strutsns:a>
                <strutsns:a href="customer_pwd_setting">Setting</strutsns:a>
                 <a href="mailto:">query</a>

    </nav>
  </header>
       
    <section class="hero">
    <strutsns:div cssClass="formtheme">
                    
                    <table>
                        <tr>
                            <td><img src="IMAGES/complainW.jpg" width="300px" height="450px"></td>
             <td>
                                
                 <strutsns:form  action="complaindb.action" method="post">
    <table align="center" cellspacing="3px" cellpadding="2px">
        <h1> Complain Here</h1>
        <tr><td><strutsns:textfield label="Customer Id"  name="cId" cssClass="texttheme"/></td></tr>
    <tr><td><strutsns:textfield label="Full name"  name="fullName" cssClass="texttheme"/></td></tr>
    <tr><td><strutsns:textfield label="Contact"  name="contact" cssClass="texttheme"/></td></tr>
    <tr><td><strutsns:textfield label="Complain"  name="complain" cssClass="texttheme"/> </td></tr>
    <tr align="center"><td colspan="2">
            <strutsns:submit value="submit" theme="simple" cssClass="buttontheme"/><br>
            </td></tr>
    </table>
</strutsns:form>
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
 

       