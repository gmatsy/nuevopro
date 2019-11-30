
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
       String URL="jdbc:sqlserver://flstudiodb.database.windows.net:1433;database=FlstudioProyect;user=saFlstudio@flstudiodb;password={alumnoFl1};encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;";
       String Driver="com.microsoft.sqlserver.jdbc.SQLServerDriver";
       String user="saFlstudio";
       String clave="alumnoFl1";
       Class.forName(Driver);
       con=DriverManager.getConnection(URL,user,clave);
       //Emnpezamos Listando los Datos de la Tabla Usuario pero de la fila seleccionada
       PreparedStatement ps;       
       int id=Integer.parseInt(request.getParameter("id"));
       ps=con.prepareStatement("delete from producto where id_prod="+id);
       ps.executeUpdate();
       response.sendRedirect("carro.jsp");
       
       %>
    </body>
</html>
