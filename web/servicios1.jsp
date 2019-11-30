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
             <%@include file="WEB-INF/jspf/head.jspf" %>
            <%@ include file="WEB-INF/jspf/navusuario.jspf"%>
            <section>
                        <center> 
                <div class="ted">
<table class="navigation">
<tbody><tr>
<td>
<iframe src="" name="leftFrame" id="leftFrame" class="ifr_bh" scrolling="auto" style="display:none"></iframe>
</td>
<td>
<br><br><br><br>
<img src="RESOURCES/imgs/fl/Image_LineLogo_white.png" style="width:300px;margin: 0px auto;display: block; margin-top: -50px">
<table align="center" style="width:500;height:100%; ">
<tbody><tr><td>
            <ul class="ser">
<li><a href="title_splash.htm">WHAT CAN FL STUDIO DO?</a>
</li><li><a class="extLink" href="https://www.image-line.com/help/index.html?id=flstudio">What's new in FL Studio 20?</a>
</li><li><a class="extLink" href="app_wiz1.htm">Setup Wizard</a>
</li><li><a class="extLink" href="basics_workflow.htm">Using FL Studio - overview</a>
</li><li><a class="extLink" href="http://flstudio.image-line.com" target="_blank">FL website - Support, User groups, etc</a>
</li><li><a class="extLink" href="basics_registration.htm">Purchasing Information, FL Studio &amp; Plugins</a>
</li><li><a class="extLink" href="FD/web/documents/productinfo.html">FL Studio Fruity, Producer, Signature &amp; All Plugins Bundles compared</a>
</li></ul>
</td></tr>
</tbody></table>
</td>
</tr>
</tbody></table>
                </div>
            </center>
            </section>
               <div style="background:black">
            <%@include file="WEB-INF/jspf/cfooter.jspf" %>
               </div>
        </div>
     <%@include file="WEB-INF/jspf/cjs.jspf" %>
    </body>
</html>
