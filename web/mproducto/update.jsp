<%-- 
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
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
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
        String id=request.getParameter("id");
        ps=con.prepareStatement("select id_prod,nombre_prod,precio from producto where id_prod="+id);
        rs=ps.executeQuery();
        while(rs.next()){  
        %>
        <div class="container">
         
            <hr>
           <form action="" method="post" class="form-control" style="width: 600px; height: 600px">
                Id
                <input type="text" name="txtId" readonly="" class="form-control" value="<%=rs.getInt("id_prod")%>"/><br>
                Nombre
                <input type="text" name="txtNombre" class="form-control" value="<%=rs.getString("nombre_prod")%>"/><br>
               Sexo
                <input type="text" name="txtPrecio"  class="form-control" value="<%=rs.getInt("precio")%>"/><br>
                <input type="submit" value="Guardar" class="btn btn-primary btn-lg"/>&nbsp;<a href="../sistemamm.jsp" type="button" value="Regresar" class="btn btn-primary btn-lg"/>Regresar</a><br>
 
            </form>
             
        </div>      
             <%}%>
             
    </body>
</html>
<%
    String nombre;
   String precio;
       nombre=request.getParameter("txtNombre");
       precio=request.getParameter("txtPrecio");
       
       if(nombre!=null && precio!=null){
           ps=con.prepareStatement("update producto set nombre_prod='"+nombre+"', precio='"+precio+"' where id_prod="+id);
                  
           ps.executeUpdate();
           response.sendRedirect("../sistemamm.jsp");
       }
       
       
%>