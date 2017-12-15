<%-- 
    Document   : panel
    Created on : 19-nov-2017, 15:27:44
    Author     : Camilo, aldo y fabio ca
--%>

<%@page import="Include.Usuario"%>
<%@page import="Controlador.ControladorUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%
    HttpSession sesion = request.getSession(true);
    Object username = sesion.getAttribute("username") == null ? null : sesion.getAttribute("username");

%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

          <link rel="stylesheet" href="resources/css/panel.css"/>
 
        <title>Panel de usuario</title>
    </head>
    <body>
        
        
        <%            if (username != null) {

                ControladorUsuario cu = new ControladorUsuario();
                Usuario user = new Usuario(username.toString());
        %>

        <%= cu.getViewUser(user)%>

        <%
            } else {
                response.getWriter().print("Por favor inicie sesion");
                response.getWriter().print("<a href='login.jsp'> Iniciar sesion</a>");
            }


        %>



    </body>
</html>
