/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * 
 * ESTAS FUNCIONES SE HACEN PARA EL REGISTRO QUE CONECTA CON LA BASE DE DATOS
 */
$(function () {
    $('#frm-registro').validate({

        rules: {
            username: {
                required: true,

            },

            password: {

                required: true,
                minlength: 8,
                maxlength: 20

            },

            password2: {

                required: true,
                equalTo: "#password"

            },

            email: {
                required: true,
                email: true

            }

//            acepto: {
//               required: true, 
//            },


        },
        messages: {

            username: {

                required: "El campo del usuario es obligatorio"
            },

            password: {

                required: "El campo de la contraseña es obligatorio",
                minlength: "La contraseña debe tener como minimo 8 caracteres",
                maxlength: "La contraseña no puede exceder los 20 caracteres"

            },
            password2: {
                required: "El campo de la contraseña es obligatorio",
                equalTo: "Las contraseñas tienen que ser iguales"

            },

            email: {
                required: "El campo de correo es obligatorio",
                email: "No es un correo valido"

            }

//            acepto: {
//                required: "Por favor acepte terminos y condiciones" 
//            }
//                 

        },

        submitHandler: function (form) {
            //FUNCION CON AJAX PARA CREAR EL USUARIO
            //form.submit();
            var data = $("#frm-registro").serialize();

            $.post("registrar", data, function (res, est, jqXHR) {


                if (res == '1') {
                    $("#username").val("");
                    $("#password").val("");
                    $("#password2").val("");
                    $("#email").val("");
                    $("#acepto").val("");
                    alert("Registro correcto, haga click  en aceptar para ser redireccionado al login");
                    setTimeout(function () {

                        window.location = "login.jsp";

                    }, 100);
                } else {

                    alert("Error al registrarse, intente nuevamente");
                }

            });


        }




    });

    $("#frm-login").validate({
        rules: {
            username: {
                required: true
            },
            password: {

                required: true

            }
        },

        messages: {
            username: {

                required: "El campo del usuario es obligatorio"
            },
            password: {

                required: "El campo de la contraseña es obligatorio"


            }


        },
        submitHandler: function (form) {


            var data = $("#frm-login").serialize();
            $.post("login", data, function (res, est, jqXHR) {

                if (res == '1') {

                    alert("Bienvenido, presione aceptar para ser redireccionado al panel principal");

                    setTimeout(function () {

                        window.location = "panel.jsp";

                    }, 100);

                } else {

                    alert("Credenciales incorrectas");
                }



            });

        }

    });




});



