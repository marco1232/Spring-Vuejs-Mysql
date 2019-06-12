<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta charset="utf-8">
        <title>Clientes Vue.js</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

        <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
        <script src="https://unpkg.com/vuex@3.1.1/dist/vuex.js"></script>

    </head>

    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">


                    <a class="btn btn-light" href="agregar.htm">  New Register</a>

                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <td>DNI</td>
                                <td>NOMBRE</td>
                                <td>ACCIONES</td>                                
                            </tr>            
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td>${dato.Id}</td>
                                    <td>${dato.DNI}</td>
                                    <td>${dato.Nombres}</td>
                                    <td>
                                        <a class="btn btn-warning">Editar</a>
                                        <a class="btn btn-danger">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach>



                        </tbody>



                    </table>



                </div>
                <div id="app">

                    <h3>{{titulo}}</h3>

                    <ul>
                        <li v-for="fruta of frutas">
                            {{fruta.cantidad}} - {{fruta.nombre}}
                            <span v-if="fruta.cantidad === 0"> - Sin Stock</span>
                        </li>
                    </ul>

                </div>

                <!-- development version, includes helpful console warnings -->

                <script >
                    const app = new Vue({
                        el: '#app',
                        data: {
                            titulo: 'Hola mundo con Vue',
                            frutas: [
                                {nombre: 'Pera', cantidad: 10},
                                {nombre: 'Manzana', cantidad: 0},
                                {nombre: 'Platano', cantidad: 11}
                            ]
                        }
                    });

                </script>


            </div>


        </div>


    </body>


</html>
