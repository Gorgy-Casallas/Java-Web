<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
        <h1>Editar Departamento</h1>
        <div class="container">
        <c:set var="departamento" value="${departamento}"/>
        <form class="form-group" action="DepartamentoServletController?action=actualizar" method="post">
            <div><label>Id</label>
                <input class="form-control" type="text" name="id" readonly="readonly"  value=<c:out value="${departamento.id}" /> />
            </div>
            <div><label>Codigo Departamento</label>
                <input class="form-control" type="text" name="departamento_codigo" value=<c:out value="${departamento.departamento_codigo}" /> />
            </div>
            <div><label>Nombre Departamento</label>
                <input class="form-control" type="text" name="nombre_departamento" value=<c:out value="${departamento.nombre_departamento}" /> />
            </div>
            
            <div>
            <input type="submit" value="Guardar Cambios" class="btn btn-primary">   
         <a class="btn btn-danger" href="DepartamentoServletController?action=regresar">Regresar a lista</a>
        </div>     
        </form>
        </div>
        </div>
</body>
</html>