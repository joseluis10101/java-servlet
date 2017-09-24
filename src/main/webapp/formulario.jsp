<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
    </head>
    <body>

        <form action="" method="post"> 
            <h3>Formulario</h3>

            Fecha: <input id="fecha" type="date" name="txtFecha" value="2013-04-18"/>
            <br/>

            Importe total: <input id="importe" type="number" name="txtImporte" required autofocus/>
            <br/>

            Correo: <input id="email" type="email" name="txtCorreo" required placeholder="Ingrese el correo aqu&iacute;" />
            <br/>

            WebSite: <input id="website" type="url" name="txtWebsite" required /> <br/>
            Tel&eacute;fono: <input id="phone" type="tel" name="txtTelefono"                                    required/> <br/>

            Distrito: 
            <input type="text" list="distritos" name="txtDistrito" /> 

            <datalist id="distritos">
                <option value="Santa Anita"/> 
                <option value="San Mart&iacute;n"/>
                <option value="San Miguel"/>
            </datalist>

            <br/>

            Direcci&oacute;n:
            <input type="search" name="txtDireccion"/> <br/>


            Indique la versión de PHP que conoce: 
            <input id="version" type="number" value="3" min="3" max="5"/> <br/>


            <button id="botonEnviar" type="submit">Enviar</button>

            <p/>&nbsp;
            <small>
                Cualquier duda contactar a <a href="tel:+997391008">997391008</a>
            </small>
        </form> 
    </body>
</html>
