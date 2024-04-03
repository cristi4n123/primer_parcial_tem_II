<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.Persona"%>
<%
    if (session.getAttribute("listaper")== null){
      ArrayList<Persona> lisaux= new ArrayList<Persona>();
      session.setAttribute("listaper", lisaux);
    }
    ArrayList<Persona> lista=(ArrayList<Persona>)session.getAttribute("listaper");
 %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>REGISTRO DE CALIFICACIONES</h1>
        <p>primer parcial TEM - 742</p>
        <p>Nombre: Cristian Ariel Flores Flores</p>
          <p>Carnet:4788634 </p>
        <a href="MainServlet?op=nuevo">Nuevo registro</a>
        <table border=1>
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>P1(30)</th>
                <th>P2(30)</th>
                <th>EF(40)</th>
                <th>Nota</th>
                <th></th>
                <th></th>
            </tr>
            <%
             if (lista != null){
                 for(Persona item: lista){
             %>
            <tr>
                <td><%=item.getId()%></td>
                <td><%=item.getNombre()%></td>
                <td><%=item.getP1()%></td>
                <td><%=item.getP2()%></td>
                <td><%=item.getEF()%></td>
                <td><%=item.getNota()%></td>
                <td>
                <a href="MainServlet?op=editar&id=<%=item.getId()%>">Editar</a>
                </td>
                <td>
                <a href="MainServlet?op=eliminar&id=<%=item.getId()%>"
                   onclick="return(confirm('Esta seguro de eliminar?'))"
                   >Eliminar</a>
                </td>
            </tr>
            <%
                   }
             } 
            %>
        </table>
    </body>
</html>
