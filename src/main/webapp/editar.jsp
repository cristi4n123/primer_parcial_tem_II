<%@page import="com.emergentes.Persona"%>
<%
    Persona reg = (Persona) request.getAttribute("miobjper");
 %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>EDICION DEL REGISTRO DE CALIFICACIONES</h1>
          <p>primer parcial TEM - 742</p>
        <p>Nombre: Cristian Ariel Flores Flores</p>
          <p>Carnet:4788634 </p>
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type = "text" name="id" value="<%=reg.getId()%>" size="2" readonly></td>    
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td><input type = "text" name="nombre" id="nombre" value="<%=reg.getNombre()%>"></td>
                </tr>
                <tr>
                    <td>P1</td>
                    <td><input type = "text" name="p1" id="p1" value="<%=reg.getP1()%>"></td>
                </tr>
                <tr>
                    <td>P2</td>
                    <td><input type = "text" name="p2" id="p2" value="<%=reg.getP2()%>"></td>
                </tr>
                <tr>
                    <td>EF</td>
                    <td><input type = "text" name="EF" id = "EF" value="<%=reg.getEF()%>"></td>
                </tr>
                <tr>
                    <td>Nota</td>
                    <td><input type = "text" name="nota" id= "nota" value="<%=reg.getNota()%>"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
                <script>            
  function validarInput(input, max) {
        var valor = parseInt(input.value) || 0;
        if (valor > max) {
            input.value = max;
        }
        calcularNota(); // Llama a la función para recalcular la nota después de la validación
    }

    // Event listener para validar los campos de los parciales y el examen final mientras se escriben
    document.getElementById('p1').addEventListener('input', function () {
        validarInput(this, 30);
    });
    document.getElementById('p2').addEventListener('input', function () {
        validarInput(this, 30);
    });
    document.getElementById('EF').addEventListener('input', function () {
        validarInput(this, 40);
    });

  
document.getElementById('p1').addEventListener('input', function () {
        calcularNota();  
    });
document.getElementById('p2').addEventListener('input', function () {
        calcularNota();  
    });
document.getElementById('EF').addEventListener('input', function () {
        calcularNota();  
    });

    // Función para calcular la nota
    function calcularNota() {
        var p1 = parseInt(document.getElementById('p1').value) || 0;
        var p2 = parseInt(document.getElementById('p2').value) || 0;
        var ef = parseInt(document.getElementById('EF').value) || 0;

        // Calcular la nota
        var nota = p1 + p2 + ef;
        document.getElementById('nota').value = nota;
    }

    // Calcular la nota inicialmente
    calcularNota();
</script>
    </body>
</html>
