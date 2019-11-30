<%-- 
    Document   : index
    Created on : 16/09/2019, 02:10:52 PM
    Author     : c19255
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cmeta.jspf" %>
        <%@include file="WEB-INF/jspf/cstyles.jspf" %>
    <link rel="stylesheet" type="text/css" href="assets/css/styles.css">
 
    </head>
    <style>
        .etiqueta {
  display: inline-block;
  white-space: nowrap
}

.wrap {
  overflow-wrap: break-word;
  white-space: normal !important
}
     </style>   
    <body>
        <%
       //CONECTANOD A LA BASE DE DATOS:
       Connection con;
       String URL="jdbc:sqlserver://flstudiodb.database.windows.net:1433;databaseName=Fl";
       String Driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";
       String user="saFlstudio";
       String clave="alumnoFl1";
       
       
       
       
       
       
       Class.forName(Driver);
       con=DriverManager.getConnection(URL,user,clave);
       //Emnpezamos Listando los Datos de la Tabla Usuario pero de la fila seleccionada
       PreparedStatement ps;
       ResultSet rs;
       int id=Integer.parseInt(request.getParameter("id"));
       ps=con.prepareStatement("select * from producto where id_prod="+id);
       rs=ps.executeQuery();
       while(rs.next()){
                         %>
                            
        <div class="container-fluid">
            <%@include file="WEB-INF/jspf/cheader.jspf" %>
            <%@include file="WEB-INF/jspf/cnav.jspf" %>
            <section>
                <table class="table table-hover col-lg-8">
                    <tr>
                        <td>Codigo</td> 
                        <td>Nombre</td> 
                        <td>Precio</td>  
                        <td>Cantidad</td>
                        <td>Total</td>
                        <td>Imagen</td>
                        <td>Eliminar</td>
                    </tr>
    
                  <tr>
                        <td><%= rs.getInt("id_prod")%></td> 
                        <td><%= rs.getString("nombre_prod")%></td> 
                        <td >$.<%=rs.getInt("precio")%>.00</td>  
                        <td style="width: 200px;"><input type="tel" class="form-control col-lg-4" value="1" id="cant" onchange="total()"></td>
                        <td><span id="tot">$.<%=rs.getInt("precio")%>.00</span></td>
                        <td><img width="50px" height="80px" src="RESOURCES/imgs/carro/<%= rs.getString("nombre_prod")%>.jpg"></td>
                        <td><a class="btn" href="delete.jsp?id=<%= rs.getInt("Id_prod")%>" ><img src="https://img.icons8.com/android/24/000000/cancel-2.png"></a></td>
                    </tr>  
             </table>
                    <a href="prod1.jsp" class="btn btn-danger">Regresar</a>
                   <button type="button" id="btn-one" class="btn btn-primary"href="#" onclick="click1()" type="button" data-toggle="modal" data-target="#exampleModal">Comprar</button>
    
    <!-- Button trigger modal -->
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="width: 40rem;display:block;margin:auto">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Validacion de Datos</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        <div class="modal-body">
         <div class="container-fluid">

        <div class="creditCardForm">
            <div class="heading">
                <h1>Confirmar Datos</h1>
            </div>
            <div class="payment">
                <form>
                    <div class="form-group owner">
                        <label for="owner">Nombre y Apellidos</label>
                        <input type="text" class="form-control" id="owner">
                    </div>
                    <div class="form-group CVV">
                        <label for="cvv">CVV</label>
                        <input type="text" class="form-control" id="cvv">
                    </div>
                    <div class="form-group" id="card-number-field">
                        <label for="cardNumber">Numero de tarjeta</label>
                        <input type="text" class="form-control" id="cardNumber">
                    </div>
                    <div class="form-group" id="expiration-date">
                        <label>Fecha de vencimiento</label>
                        <select>
                            <option value="01">Febrero</option>
                            <option value="02">Enero</option>
                            <option value="03">Marzo</option>
                            <option value="04">Abril</option>
                            <option value="05">Mayo</option>
                            <option value="06">Junio</option>
                            <option value="07">Julio</option>
                            <option value="08">Agostot</option>
                            <option value="09">Setiembre</option>
                            <option value="10">Octubre</option>
                            <option value="11">Noviembre</option>
                            <option value="12">Diciembre</option>
                        </select>
                        <select>
                            <option value="16"> 2016</option>
                            <option value="17"> 2017</option>
                            <option value="18"> 2018</option>
                            <option value="19"> 2019</option>
                            <option value="20"> 2020</option>
                            <option value="21"> 2021</option>
                        </select>
                    </div>
                    <div class="form-group" id="credit_cards">
                        <img src="assets/images/visa.jpg" id="visa">
                        <img src="assets/images/mastercard.jpg" id="mastercard">
                        <img src="assets/images/amex.jpg" id="amex">
                    </div>
                    <div class="form-group" id="pay-now">
                        <a href="https://support.image-line.com/redirect/flstudio20_win_installer?_ga=2.244289414.2048963962.1572809035-615853735.1545323444" class="btn btn-default">Confirmar</a>
                         <a class="btn btn-primary" type="button" class="btn btn-primary" id="cerrar" data-dismiss="modal" style="color: white;    ">Cancelar</a>
                    </div>
                </form>
            </div>
        </div>

        <p class="examples-note" style="color: #fff;">Tus Datos no seran Revelados:</p>

        <div class="examples">
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Type</th>
                            <th>Card Number</th>
                            <th>Security Code</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Visa</td>
                            <td>4716108999716531</td>
                            <td>257</td>
                        </tr>
                        <tr>
                            <td>Master Card</td>
                            <td>5281037048916168</td>
                            <td>043</td>
                        </tr>
                        <tr>
                            <td>American Express</td>
                            <td>342498818630298</td>
                            <td>3156</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
   
      </div>

         
    
    </div>
  </div>
</div>
            </section>
                    
        </div>
    <script>
        function total(){
             var cant=document.getElementById("cant").value;
             document.getElementById("tot").innerHTML="$"+(<%=rs.getInt("precio")%>*cant+".00");
        }
       
        
    </script>
 
             <%}%>
             <script src="assets/js/jquery.payform.min.js" type="text/javascript"></script>
             <script src="assets/js/script.js" type="text/javascript"></script>
     <%@include file="WEB-INF/jspf/cjs.jspf" %>
    </body>
</html>




















