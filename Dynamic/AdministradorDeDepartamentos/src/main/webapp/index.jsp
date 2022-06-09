<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %> 
   <%@ page import="modelo.Departamentos" %>
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
<form action="ServletDepartamentosController">
<div>
<label>Codigo De Departamento</label>
<select class="form-select" name="codigo">
  <option selected>05</option>
  <option selected>08</option>
  <option selected>09</option>
  <option selected>11</option>
  <option selected>13</option>
  <option selected>14</option>
  <option selected>15</option>
  <option selected>17</option>
  <option selected>18</option>
  <option selected>19</option>
  <option selected>20</option>
  <option selected>23</option>
  <option selected>25</option>
  <option selected>27</option>
  <option selected>41</option>
  <option selected>44</option>
  <option selected>47</option>
  <option selected>48</option>
  <option selected>50</option>
  <option selected>52</option>
  <option selected>54</option>
  <option selected>63</option>
  <option selected>66</option>
  <option selected>68</option>
  <option selected>70</option>
  <option selected>73</option>
  <option selected>76</option>
  <option selected>81</option>
  <option selected>85</option>
  <option selected>86</option>
  <option selected>88</option>
  <option selected>91</option>
  <option selected>94</option>
  <option selected>95</option>
  <option selected=>97</option>
  <option selected=>99</option>
  <option selected>Codigo</option>
</select>
</div>
<div>
<label>Nombre del Departamento</label>
<select class="form-select" name="departamento">
  <option selected>Antioquia</option>
  <option selected>Atlántico</option>
  <option selected>Barranquilla D.E</option>
  <option selected>Santa Fe de Bogotá D.C.</option>
  <option selected>Bolívar</option>
  <option selected>Cartagena D.E.</option>
  <option selected>Boyaca</option>
  <option selected>Caldas</option>
  <option selected>Caquetá</option>
  <option selected>Cauca</option>
  <option selected>Cesar</option>
  <option selected>Córdova</option>
  <option selected>Cundinamarca</option>
  <option selected>Chocó</option>
  <option selected>Huila</option>
  <option selected>La Guajira</option>
  <option selected>Magdalena</option>
  <option selected>Santamarta D.E</option>
  <option selected>Meta</option>
  <option selected>Nariño</option>
  <option selected>Norte de Santander</option>
  <option selected>Quindio</option>
  <option selected>Risaralda</option>
  <option selected>Santander</option>
  <option selected>Sucre</option>
  <option selected>Tolima</option>
  <option selected>Valle</option>
  <option selected>Arauca</option>
  <option selected>Casanare</option>
  <option selected>Putumayo</option>
  <option selected>San Andrés</option>
  <option selected>Amazonas</option>
  <option selected>Guainía</option>
  <option selected>Guaviare</option>
  <option selected>Vaupés</option>
  <option selected>Vichada</option>
  <option selected>Departamento</option>
</select>
</div>
<div>
<label>Fecha de creacion</label>
<input type="date" name="fechac">
</div>
<div>
<label>Fecha de actualizacion</label>
<input type="date" name="fecham">
</div>
<div>
<input class="btn btn-dark" type="submit" value="Enviar" >
</div>
</form>
</label>
</div>


<%! List<Departamentos> listaDepartamentos; %>
<%
try{
listaDepartamentos=(List<Departamentos>) request.getAttribute("lista");
Iterator<Departamentos> item= listaDepartamentos.iterator();
%>
<table class="table">
<thead  class="table table-striped">
<th>CODIGO</th>
<th>DEPARTAMENTO</th>
<th>FECHA DE CRACION</th>
<th>FECHA DE ACTUALIZACION</th>
</thead>
<tbody>
<% while(item.hasNext()){
	Departamentos departamentos=item.next();
%>
<tr>
<td><%= departamentos.getCodigo() %></td>
<td><%= departamentos.getDepartamento() %></td>
<td><%= departamentos.getFechac() %></td>
<td><%= departamentos.getFecham() %></td>
<td><a class="btn btn-success" href=#>Editar</a></td>
<td><a class="btn btn-danger" href=#>Eliminar</a></td>
</tr>
<%} 
}catch(Exception e){}
%>
</body>

</body>
</html>