<%-- 
    Document   : Delete
    Created on : 02/02/2018, 03:34:00 PM
    Author     : Joel
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       //CONECTANOD A LA BASE DE DATOS:
      Connection con;
       String URL="jdbc:sqlserver://flstudiodb.database.windows.net:1433;databaseName=Fl";
       String DRIVER="com.microsoft.sqlserver.jdbc.SQLServerDriver";
     String USER="saFlstudio";
     String PASS="alumnoFl1";
       Class.forName(DRIVER);
       con=DriverManager.getConnection(URL,USER,PASS);
       //Emnpezamos Listando los Datos de la Tabla Usuario pero de la fila seleccionada
       PreparedStatement ps;       
       String id=request.getParameter("id");
       ps=con.prepareStatement("delete from usuario where id="+id);
       ps.executeUpdate();
       response.sendRedirect("../sistemamm.jsp");
       
       %>
    </body>
</html>
