<%-- 
    Document   : prueba
    Created on : 20-nov-2017, 8:15:26
    Author     : Camilo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Styled Maps - Night Mode</title>
        <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
        <meta charset="utf-8">



        <link rel="stylesheet" href="resources/css/estilos.css"/>
        <link rel="stylesheet" href="resources/css/normalize.css"/>
        <link rel="stylesheet" href="https://file.myfontastic.com/cXCEhVVpRPcszceRNFnnQW/icons.css" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"/>
        <style>
            /* Always set the map height explicitly to define the size of the div
             * element that contains the map. */
            #map {
                height: 100%;
                width: 100%;
                margin-top: 20px;

            }
            /* Optional: Makes the sample page fill the window. */
            html, body {
                height: 90%;
                margin: 0;
                padding: 0;
            }
        </style>
    </head>
    <body>
           <div  class="principal">

            <header>
                <div class="inicio">
                    <nav class="inicio-dos">


                        <li type="button" class="btn btn-success boton"><a href="../login.jsp">Mi cuenta</a></li>

                    </nav>
                </div>
            </header>
               <header class="cabecera">

                <div class="container_dos clearfix">
                    <div   class="logo">

                        <img src="resources/img/huawei.png" />
                    </div>

                    <nav class="menu">

                        <ul>
                            <li class="active"> <a href="#">Cobertura</a></li>
                            <li> <a href="vistas/index.xhtml">Inicio</a></li>
                            <li> <a href="vistas/celulares.xhtml">Hogares</a></li>
                          
                        </ul>

                    </nav>
                </div>

            </header>

           </div>

        <div id="map"></div>
        <script>
            function initMap() {
                // Styles a map in night mode.
                var map = new google.maps.Map(document.getElementById('map'), {
                    center: {lat: 4.696103, lng: -74.056493},
                    zoom: 9,
                    styles: [
                        {elementType: 'geometry', stylers: [{color: '#242f3e'}]},
                        {elementType: 'labels.text.stroke', stylers: [{color: '#242f3e'}]},
                        {elementType: 'labels.text.fill', stylers: [{color: '#746855'}]},
                        {
                            featureType: 'administrative.locality',
                            elementType: 'labels.text.fill',
                            stylers: [{color: '#d59563'}]
                        },
                        {
                            featureType: 'poi',
                            elementType: 'labels.text.fill',
                            stylers: [{color: '#d59563'}]
                        },
                        {
                            featureType: 'poi.park',
                            elementType: 'geometry',
                            stylers: [{color: '#263c3f'}]
                        },
                        {
                            featureType: 'poi.park',
                            elementType: 'labels.text.fill',
                            stylers: [{color: '#6b9a76'}]
                        },
                        {
                            featureType: 'road',
                            elementType: 'geometry',
                            stylers: [{color: '#38414e'}]
                        },
                        {
                            featureType: 'road',
                            elementType: 'geometry.stroke',
                            stylers: [{color: '#212a37'}]
                        },
                        {
                            featureType: 'road',
                            elementType: 'labels.text.fill',
                            stylers: [{color: '#9ca5b3'}]
                        },
                        {
                            featureType: 'road.highway',
                            elementType: 'geometry',
                            stylers: [{color: '#746855'}]
                        },
                        {
                            featureType: 'road.highway',
                            elementType: 'geometry.stroke',
                            stylers: [{color: '#1f2835'}]
                        },
                        {
                            featureType: 'road.highway',
                            elementType: 'labels.text.fill',
                            stylers: [{color: '#f3d19c'}]
                        },
                        {
                            featureType: 'transit',
                            elementType: 'geometry',
                            stylers: [{color: '#2f3948'}]
                        },
                        {
                            featureType: 'transit.station',
                            elementType: 'labels.text.fill',
                            stylers: [{color: '#d59563'}]
                        },
                        {
                            featureType: 'water',
                            elementType: 'geometry',
                            stylers: [{color: '#17263c'}]
                        },
                        {
                            featureType: 'water',
                            elementType: 'labels.text.fill',
                            stylers: [{color: '#515c6d'}]
                        },
                        {
                            featureType: 'water',
                            elementType: 'labels.text.stroke',
                            stylers: [{color: '#17263c'}]
                        }
                    ]
                });
            }
        </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRHmeycVdwSiPVI6k6JZbHXJe75JyAp3o&amp;callback=initMap"
        async defer></script>
    </body>
</html>