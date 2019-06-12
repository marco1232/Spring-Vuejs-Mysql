<%-- 
    Document   : agregar
    Created on : 17-abr-2019, 23:23:16
    Author     : Ralex
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Clientes Vue.js</title>
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    </head>
    <body>
        <div class="container mt-5 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Agregar Nuevo Registro</h4>
                    
                    
                    
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label> Dni</label>
                        <input type="text" name="dni" class="form-control">
                        <label> Nombres</label>
                        <input type="text" name="nom" class="form-control mb-3">
                        <input type="submit" value="Agregar" class="btn btn-success">
                        <a href="index.htm" class="btn btn-light ml-2">Regresar</a>
                        
                    </form>
                    
                </div>
                
                
            </div>
            
            
        </div>
    </body>
</html>
