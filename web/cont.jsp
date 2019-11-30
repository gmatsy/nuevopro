<%-- 
    Document   : index
    Created on : 16/09/2019, 02:10:52 PM
    Author     : c19255
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cmeta.jspf" %>
        <%@include file="WEB-INF/jspf/cstyles.jspf" %>
    </head>
    <body>
        <div class="container-fluid">
            <%@include file="WEB-INF/jspf/cheader.jspf" %>
            <%@include file="WEB-INF/jspf/cnav.jspf" %>
            <section>
                           <article>
                 <h2 style="color: greenyellow;text-align: center;font-family: arial;line-height:  2.0em;margin-bottom: 0.2em;">Contact information</h2>
                 <h2 style="color: greenyellow;text-align: center;font-family: arial;line-height:  2.0em;margin-bottom: 0.2em;">Image line Software nv</h2>
                 <h3 style="color: greenyellow;text-align: center;font-family: arial;line-height:  2.0em;margin-bottom: 0.2em;">headquearters</h3>
                 <p class="conc">
                     Franklin Rooseveltlaan 348 D
                 </p>
                 <p class="conc">  
                            B-9000 Gent
                 </p>       
                 <p class="conc">
                                Belgium          
                 </p>
                 <center>
                 <img src="RESOURCES/imgs/fl/OpenStreetMap.jpg" class="cont">
                 </center>
                 <h2 style="color: greenyellow;text-align: center;font-family: arial;line-height:  2.0em;margin-bottom: 0.2em;">Commercial Office</h2>
                 <p class="conc">
                     Pontweg 40 - D
                 </p>
                 <p class="conc">
                    B-9310 Herdersem
                 </p>  
                    <p class="conc">   
                    Belgium
                    </p>
                    <p class="conc">
                    Telephone (headquarter):+32 9 281 15 33
                    </p>
                    <p class="conc">
            Fax (headquarter):          +32 9 281 15 01
                    </p>
                    <p class="conc">
            Fax (commercial):           +32 9 261 22 55
                 </p>
                 <center>
                     <a href="senf.jsp" class="conc" style="color:greenyellow;text-decoration: overline underline ">Contactanos aqui</a>
                 </center>
            </article>
            </section>
               <div style="background:black">
            <%@include file="WEB-INF/jspf/cfooter.jspf" %>
               </div>
        </div>
     <%@include file="WEB-INF/jspf/cjs.jspf" %>
    </body>
</html>
