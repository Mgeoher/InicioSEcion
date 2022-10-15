<%-- 
    Document   : home
    Created on : 14/10/2022, 10:07:12 AM
    Author     : mgeoh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bienvenido</title>
    </head>
    <% 
        response.setHeader("Cache-Control", "nocache, no-store, must-revalidate");
        if(session.getAttribute("user")==null){
            response.sendRedirect("/index.jsp");
        }
    %>
    <body>
        <h1>Bienvenido</h1>
        
        <a href="Logout">Cerrar Sesion</a>
            <div class="alert alert-danger" id="error">
                <%request.getSession().getAttribute("user");%>
            </div>
    </body>
</html>
