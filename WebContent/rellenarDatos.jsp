<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>

<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%
	Hashtable pasosReserva = new Hashtable();
	pasosReserva.put(1, "SELECCIONE FECHAS");
	pasosReserva.put(2, "HABITACIONES Y TARIFAS");
	pasosReserva.put(3, "MEJORE SU ESTANCIA");
	pasosReserva.put(4, "DATOS DE LOS HUÉSPEDES");
	pasosReserva.put(5, "CONFIRME LA RESERVA");


	Hashtable pasosModifica = new Hashtable();
	pasosModifica.put(1, "SELECCIONE NUEVAS FECHAS");
	pasosModifica.put(4, "CONFIRME DATOS DE LOS HUÉSPEDES");

	int paso = 4;
	
	boolean cambiar = false;
	String nombre="";

	if (session.getAttribute("cambiar") != null) {
		cambiar = true;
		nombre=(String)session.getAttribute("nombre");
		
	}

%>

<%@ include file="header.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Teleco Hotel Group - Seleccion de habitacion</title>
</head>
<body>
	<div class="progress">
		<div class="progress-bar" role="progressbar" aria-valuenow="20"
			aria-valuemin="0" aria-valuemax="100"
			style="width: <%=20*paso%>%"
		><%=(cambiar ? pasosModifica.get(paso) : pasosReserva.get(paso))%>
		</div>
	</div>
	<div class="contenedorGrandeReservas">
		<%@include file="contenedorFecha.jsp"%>
		<div id="contenedor_habitaciones">
			<form action="confirmacion.jsp" id="formNombre" method="post" onsubmit="return envia_form_nombre();">

				Introduzca su nombre:
				<input type="text" id="nombre" name="nombre" autofocus 
				<%=(cambiar?("value=\""+nombre+"\""):"") %>/>
			</form>
			<br/><br/>

			<div class="compruebaDisp">
				<a href="#" onclick="envia_form_nombre()"> CONTINUAR </a>
			</div>
		</div>
	</div>
	<br />


</body>
<%@ include file="footer.html"%>
</html>