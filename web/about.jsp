<%@taglib prefix="strutsns"  uri="/struts-tags"%>

 <html>
    
    <style>
        a{
            text-decoration: none;
            color:white;
            
        }
        body{
        background-image: url('IMAGES/AboutW.jpg');
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
                background: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.6)), url('images/natu.jpg') no-repeat center center/cover;
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

   


             
             
        
    </style>
 <body>
     <!--<div  class="divtheme"
     <table width="100%" class="tabtheme" align="center">
         <tr>
             <td class ="dox"><a href="home.jsp">home</a></td>
             <td class ="dox"><a href="about.jsp"> about</a></td>
             <td class ="dox"><a href="contact.jsp"> contact</a></td>
             <td class ="dox"><a href="login.jsp"> login</a></td>
             <td class ="dox"><a href="signup.jsp">signup</a></td>
         </tr>
     <!--</table>-->
         <header>
    <div class="logo"> Buddy Charger</div>
    <nav>
      <!--<a href="#">Home
      <a href="#">Products</a>
      <a href="#">Services</a>
      <a href="#">About</a>
      <a href="#">Contact</a>
      <a href="#">Login</a>
      <a href="#">Register</a>-->
      <!--                    define all the actions here-->
                <strutsns:a href="homeurl.action">Home</strutsns:a>
                <strutsns:a href="producturl.action">Products</strutsns:a>
                <strutsns:a href="servicesurl.action">Services</strutsns:a>
                <strutsns:a href="abouturl.action">About</strutsns:a>
                <strutsns:a href="contacturl.action">Contact</strutsns:a>
                <strutsns:a href="loginurl.action">Login</strutsns:a>
                <strutsns:a href="registerurl.action">Register</strutsns:a>
                <strutsns:a href="agenturl.action">Agent</strutsns:a>

    </nav>
  </header>
    <section class="hero">
    <div class="hero-text">
      <h1>Charge Anytime, Anywhere!</h1>
      <p>Portable Chargers | Smart Batteries | Instant Charging Services</p>
    </div>
  </section>
     
     <section class="services">
    <h2>Our Key Services</h2>
    <div class="service-boxes">
      <div class="box">
        <h3> Instant Charging</h3>
        <p>Fast & secure mobile/laptop charging services at your location.</p>
      </div>
      <div class="box">
        <h3> Power Banks</h3>
        <p>High-capacity and fast-charging power banks for all needs.</p>
      </div>
      <div class="box">
        <h3> Accessories</h3>
        <p>Cables, adapters, car chargers, and much more at best prices.</p>
      </div>
    </div>
  </section>
         
        <section class="about">
    <h2>Why Buddy Charger?</h2>
    <p>We provide smart and portable energy solutions to keep you powered up wherever you are. Trusted by 50,000+ users nationwide.</p>
  </section>
   
   <section class="products">
    <h2>Our Products</h2>
    <div class="product-grid">
      <div class="product-card">
          <img src="IMAGES/powernbank.jpg" alt="Powerbank">
        <h3>Ultra Fast Powerbank</h3>
      </div>
      <div class="product-card">
          <img src="IMAGES/charger.jpg" alt="Wall Charger">
        <h3>Smart Wall Charger</h3>
      </div>
      <div class="product-card">
          <img src="IMAGES/cable.jpg" alt="USB Cable">
        <h3>3-in-1 USB Cable</h3>
      </div>
    </div>
  </section>
  
    
  <footer>
    <p>© 2025 Buddy Charger. All Rights Reserved.</p>
    <p>Email: support@buddycharger.com | Call: 1800-123-456</p>
  </footer>
         
 </body>
</html>
 

       