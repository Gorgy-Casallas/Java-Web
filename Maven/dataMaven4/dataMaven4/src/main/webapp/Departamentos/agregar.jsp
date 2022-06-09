<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 class="">Agregar Departamento</h1>
        <div class="container">
       <form class="form-group" action="ServletDepartamentosController?action=agregar" method="post" >
     <label>Codigo departamento</label>
     <input class="form-control" type="text" name="departamento_codigo"/>
         <label>Nombre Departamento</label>
         <input class="form-control" type="text" name="nombre_departamento"/> 
         <input class="btn btn-primary" type="submit" name="accion" value="Agregar"/> 
         <a class="btn btn-danger" href="ServletDepartamentosController?action=regresar">Regresar a lista</a>
         <a class="btn btn-danger" href="index.jsp">Regresar a index</a>
         </form>
         </div>
</body>
</html>