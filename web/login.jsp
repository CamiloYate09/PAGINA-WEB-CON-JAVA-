<%-- 
    Document   : login
    Created on : 19-nov-2017, 14:12:40
    Author     : Camilo, aldo y fabio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

        <link rel="stylesheet" href="resources/css/registro_dos.css"/>
        <link rel="stylesheet" href="resources/css/registro.css"/>

        <link rel="stylesheet" href="https://file.myfontastic.com/cXCEhVVpRPcszceRNFnnQW/icons.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"/>
        <link rel="stylesheet" href="resources/css/normalize.css"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto"/>
        <script type="text/javascript" src="resources/js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="resources/js/jquery.validate.min.js"></script>
        <script type="text/javascript" src="resources/js/main.js"></script>
        <title>Login Huawei</title>
    </head>
    <body>
        <div  class="principal">

            <header>
                <div class="inicio">
                    <nav class="inicio-dos">



                    </nav>
                </div>
            </header>

            <header class="cabecera">

                <div class="container_dos clearfix">
                    <div   class="logo">

                        <img class="login" src="/Huawei_Telecomunicaciones_JS/faces/javax.faces.resource/huawei.png?ln=img"></img>
                    </div>

                    <nav class="menu">

                        <ul>
                            <li class=""> <a href="vistas/index.xhtml">Inicio</a></li>

                        </ul>

                    </nav>
                </div>

            </header>
            <div>
                <form action="login" method="POST" id="frm-login" class="pure-form">

                    <h2>
                        Bienvenido a Huawei 
                    </h2>

                    <input type="text" placeholder="&#128272; Usuario" name="username"  id="username" required="Ingrese"></input>

                    <br>

                    <input type="password" placeholder="&#128272; Contraseña" name="password" id="password" required="Ingrese"></input>
                    <br>
                    <input type="submit" value="login" id="btn-login"></input>
                    <br></br>
                    <center><p>¿No tienes una cuenta Huawei ID? <a href="registro.jsp"> Regístrate</a></p></center>
                </form>


            </div>
        </div>
    </body>
</html>
