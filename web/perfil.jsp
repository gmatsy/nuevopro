<%-- 
    Document   : perfil
    Created on : 04/11/2019, 10:55:19 AM
    Author     : LAB-USR-AQ660-308
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%
        Connection con;
       String URL="jdbc:sqlserver://flstudiodb.database.windows.net:1433;databaseName=Fl";
       String DRIVER="com.microsoft.sqlserver.jdbc.SQLServerDriver";
       String USER="saFlstudio";
       String PASS="alumnoFl1";
        Class.forName(DRIVER);
        con=DriverManager.getConnection(URL,USER,PASS);
        PreparedStatement ps;
        ResultSet rs;
        String correo=request.getParameter("correo");
        ps=con.prepareStatement("select id,nombre,apellido,correo,clave,color,sexo from usuario where correo="+correo);
        rs=ps.executeQuery();
        while(rs.next()){  
        %>
        <div class="container">
            <%
            String sexo=rs.getString("sexo");
            String foto;
            if(sexo.equals("masculino")){
                foto="RESOURCES/imgs/avatar";
            }else{
                foto="RESOURCES/imgs/mujer";
            }
            %>
            <div class="container-fluid"><h1 style="text-decoration: underline; margin-top: 30px">Mi Perfil</h1></div>
            <img style="margin-left: 150px; margin-top: -60px" src="<%=foto%>.jpg" width="100px" height="100px">
            <hr>
           <form action="" method="post" class="form-control" style="width: 600px; height: 600px">
                Id
                <input type="text" name="txtId" readonly="" class="form-control" value="<%=rs.getInt("id")%>"/><br>
                Nombre
                <input type="text" name="txtNombre" class="form-control" value="<%=rs.getString("nombre")%>"/><br>
               apellido
               <input type="text" name="txtApellido" class="form-control" value="<%=rs.getString("apellido")%>"/><br>
               correo
               <input type="text" name="txtCorreo" class="form-control" value="<%=rs.getString("correo")%>"/><br>
               contraseña
               <input type="text" name="txtPassword" class="form-control" value="<%=rs.getString("clave")%>"/><br>
               color
               <input type="text" name="txtColor" class="form-control" value="<%=rs.getString("color")%>"/><br>
               Sexo
                <input type="text" name="txtId" readonly="" class="form-control" value="<%=rs.getString("sexo")%>"/><br>
               <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/><br>
                <div class="rvps1" style="font-size: 18px;
    color: #4f5862;
    line-height: 140%;
    font-weight: 300;"><a href="index1.jsp" class="btn sec-h__button" style="    padding: 0;
    line-height: 75px;
    font-size: 32px;
    border: 2px solid #90ba00;
    color: #90ba00;
    width: 322px;
    text-align: center;
    border-radius: 10px;
    margin: 25px auto 25px;
    display: block; outline: none; text-decoration: none;">RETURN PAGE</a></div>
            </form>
            
        </div>      
             <%}%>
             
    </body>
</html>
<%
    String nombre;
    String apellido;
    String clave;
    String color;
       nombre=request.getParameter("txtNombre");
       apellido=request.getParameter("txtApellido");
       clave=request.getParameter("txtPassword");
       color=request.getParameter("txtColor");
       
       if(nombre!=null && apellido!=null && clave!=null && color!=null){
           ps=con.prepareStatement("update usuario set nombre='"+nombre+"', apellido='"+apellido+"' ,clave='"+clave+"',color='"+color+"' where correo="+correo);
                  
           ps.executeUpdate();
           response.sendRedirect("index1.jsp");
       }
       
       
%>