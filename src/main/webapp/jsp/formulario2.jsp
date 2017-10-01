<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="" method="post" onsubmit="validar()" name="f1">

            <h3>Formulario</h3>

            Usuario: <input id="txtUsuario" type="text" name="txtUsuario" /> <br/>
            Clave: <input id="txtClave" type="text" name="txtClave" />

            <br/>
            <input type="submit" value="Enviar"/> 
        </form>
        <script>
            function validar() {
                var n = document.f1.txtUsuario.value;
                if (n == "") {
                    alert('Ingrese Usuario');
                    return false;
                }
                return true;
            }
        </script>
    </body>
</html>
