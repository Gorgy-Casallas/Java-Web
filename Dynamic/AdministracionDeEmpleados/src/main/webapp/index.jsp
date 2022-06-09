<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %> 
   <%@ page import="Modelo.Empleado" %>
   <%@ page import="java.util.Iterator" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<div class="container">
<label class="table-white">
<form action="ServletEmpleadoController">
<div>
<lable>ID</lable>
<input type="number" name="id">
</div>
<div>
<lable>Tipo De Documento</lable>
<select class="form-select" aria-label="Default select example" name="tipodedocumento">
  <option Selected>RC</option>
  <option Selected>TI</option>
  <option Selected>CC</option>
  <option Selected>CE</option>
  <option selected>Tipo De Documento</option>
</select>
</div>
<div>
<lable>Numero De Documeto</lable>
<Input type="number" name="numerodedocumento">
</div>
<div>
<lable>Nombre</lable>
<input type="text" name="nombre">
</div>
<div>
<lable>Apellido</lable>
<input type="text" name="apellido">
</div>
<div>
<lable>Departamento</lable>
<input >
</div>
<div>
<lable>Direcion</lable>
<input type="text" name="direcion">
</div>
<div>
<lable>Correo</lable>
<input type="text" name="correo">
</div>
<div>
<lable>Telefono</lable>
<input type="number" name="telefono">
</div>
<div>
<lable>Fecha De Creacion</lable>
<input type="date" name="fechadecreacion">
</div>
<div>
<lable>Fecha De Actualizacion</lable>
<input type="date" name="fechadeactualizacion">
</div>
<div>
<input class="btn btn-dark" type="submit" value="Enviar">
</div>
</from>
</label>
</div>

<%! List<Empleado> listaEmpleado; %>
<%
try{
listaEmpleado=(List<Empleado>) request.getAttribute("lista");
Iterator<Empleado> item= listaEmpleado.iterator();
%>
<table class="table">
<thead  class="table table-striped">
<th>ID</th>
<th>Tipo De Documento</th>
<th>Numero De Documeto</th>
<th>Nombre</th>
<th>Apellido</th>
<th>Direcion</th>
<th>Correo</th>
<th>Telefono</th>
<th>Fecha De Creacion</th>
<th>Fecha De Actualizacion</th>
</thead>
<tbody>
<% while(item.hasNext()){
	Empleado empleado=item.next();
%>
<tr>
<td><%= empleado.getId() %></td>
<td><%= empleado.getTipodedocumento() %></td>
<td><%= empleado.getNumerodedocumento() %></td>
<td><%= empleado.getNombre() %></td>
<td><%= empleado.getApellido() %></td>
<td><%= empleado.getDirecion() %></td>
<td><%= empleado.getCorreo() %></td>
<td><%= empleado.getTelefono() %></td>
<td><%= empleado.getFechadecreacion() %></td>
<td><%= empleado.getFechadeactualizacion() %></td>
<td><a class="btn btn-success" href=#>Editar</a></td>
<td><a class="btn btn-danger" href="eliminar">Eliminar</a></td>
</tr>
<%} 
}catch(Exception e){}
%>
</body>
</html>