
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cmeta.jspf" %>
        <%@include file="WEB-INF/jspf/cstyles.jspf" %>
    </head>
    <body>
        <div class="container-fluid">
             <%@include file="WEB-INF/jspf/head.jspf" %>
            <%@ include file="WEB-INF/jspf/navusuario.jspf"%>
                 <section  >
                     <div class="btn-group" role="group" aria-label="Basic example" style="margin-top: 50px">
              <button type="button" class="btn btn-secondary" onclick="mis()">Mision</button>
  <button type="button" class="btn btn-secondary" onclick="vis()">Vision</button>
  <button type="button" class="btn btn-secondary" onclick="de()">Developers</button>
</div>
                     <article class="izquierda" style="margin-top: 200px">    
            <h2 style="font-family: arial black; font-size:50px;" id="nom">Image-Line company profile</h2>    
            <p style="font-family: arial; font-size:18px;" id="1">
                Image-Line is a Belgian software company, founded in 1994 and best known for our music software FL Studio and related audio plugins.


Growing rapidly over the last 25 years, our talented team or software developers has created some of the industry's leading products.


Our mission is to develop faster, better, stronger music production tools that are the fastest way from your brain to your speakers.


We also believe in Lifetime Free Updates. Our customers get the software they purchased, updated free, for the life of the product. That means people who purchased Fruityloops 1 in 1998 were able to update to FL Studio 20 in 2018, including all the versions in between, free.
            </p>
            <p style="font-family: arial; font-size:18px; color:orangered;" id="3">
            </p>
            <p style="font-family: arial; font-size:18px;" id="4">
            </p>
                </article>
                     <article class="i" >
                  <img id="2" src="RESOURCES/imgs/fl/Image_LineLogo_white.png" alt width="300" height="204">
            </article>
        </section>
                 <div style="margin-top: 600px;background:black">
            <%@include file="WEB-INF/jspf/cfooter.jspf"%>
                 </div>
                
        </div>
                 <script>
                     function mis(){
            document.getElementById("nom").innerHTML="Image-Line company profile";
            document.getElementById("1").innerHTML="Image-Line is a Belgian software company, founded in 1994 and best known for our music software FL Studio and related audio plugins.Growing rapidly over the last 25 years, our talented team or software developers has created some of the industry's leading products.Our mission is to develop faster, better, stronger music production tools that are the fastest way from your brain to your speakers.We also believe in Lifetime Free Updates. Our customers get the software they purchased, updated free, for the life of the product. That means people who purchased Fruityloops 1 in 1998 were able to update to FL Studio 20 in 2018, including all the versions in between, free.";
            document.getElementById("2").src="RESOURCES/imgs/fl/Image_LineLogo_white.png";
            document.getElementById("5").src="";
            document.getElementById("2").style.width="300px";
            document.getElementById("2").style.height="204px";
             document.getElementById("3").innerHTML="";
                      document.getElementById("4").innerHTML="";
                     }
                     function vis(){
                         document.getElementById("nom").innerHTML="Image-Line Mision";
                         document.getElementById("1").innerHTML="Our mission is to develop faster, better, stronger music production tools that are the fastest way from your brain to your speakers.We also believe in Lifetime Free Updates. Our customers get the software they purchased, updated free, for the life of the product. That means people who purchased Fruityloops 1 in 1998 were able to update to FL Studio 20 in 2018, including all the versions in between, free.";
                        document.getElementById("2").src="RESOURCES/imgs/fl/Image_LineLogo_white.png";
                        document.getElementById("5").src="";
            document.getElementById("2").style.width="300px";
            document.getElementById("2").style.height="204px";
             document.getElementById("3").innerHTML="";
                      document.getElementById("4").innerHTML="";
                     }
                     function de(){
                      document.getElementById("nom").innerHTML="Welcome plugin developers."; 
                      document.getElementById("1").innerHTML="Get the FL Studio SDK&nbspThe FL Studio SDK provides you the API libraries and developer tools necessary to build, test, and debug plugins for FL Studio.Download FL Studio SDK";
                      document.getElementById("3").innerHTML="Questions?";
                      document.getElementById("4").innerHTML="For questions and issues, please visit our Developer Arena Forum.";
                  document.getElementById("2").src="RESOURCES/imgs/logo_blue_sdk.png";
            document.getElementById("2").style.width="300px";
            document.getElementById("2").style.height="350px";
                     }
                 </script>
     <%@include file="WEB-INF/jspf/cjs.jspf" %>
    </body>
</html>
