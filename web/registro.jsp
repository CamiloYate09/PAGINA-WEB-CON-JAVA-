<%-- 
    Document   : registro
    Created on : 19-nov-2017, 7:27:22
    Author     : Camilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html
    >
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
        
         <title>Reistro de Usuarios nuevos</title>

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
                <form action="registrar" method="POST" id="frm-registro">

                    <h2>
                        Registra tu cuenta Huawei ID
                    </h2>
                    <input type="text" placeholder="&#128587;  Nombre y Apellido" name="username" class="estilo" id="username"></input>
                    <br></br>
                    <input type="password" placeholder="&#128272; Contraseña" name="password" id="password"  class="estilo"></input>
                    <br></br>
                    <input type="password" placeholder="&#128272; Repita Contraseña" name="password2" id="password2"  class="estilo"></input>

                    <br></br>
                    <input type="email" placeholder="&#128140;  Correo" name="email" id="email"  class="estilo"></input>
                    <br/>

                    <fieldset>

                        <input type="radio" class="radio" name="acepto" id="acepto" ></input>  
                        <center>  Acepto los<a href="#"> términos y condiciones</a>  </center> 


                    </fieldset>
                    <br/>
                    <input type="submit" value="Registrarme" id="btn-registro" ></input>
                    <!--  <input type="reset" value="Restaurar" class="btn btn-success"></input> -->




                </form>


            </div>
        </div>



    </body>
</html>
