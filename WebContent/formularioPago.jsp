<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment Form</title>


<link rel='stylesheet prefetch'
	href='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css'>

<link rel="stylesheet" href="style/formularioPago.css">


</head>

<body>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300'
		rel='stylesheet' type='text/css'>
	<link rel="stylesheet"
		href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

	<div class="container">
		<div id="Checkout" class="inline">
			<h1>
				<%if(session.getAttribute("cambiar")==null)
      {
      %>
				El codigo de su reserva es: <b> <% 
      
      if(request.getParameter("codigo1").length()!=0)
      {		out.print(request.getParameter("codigo1"));
      		if(request.getParameter("codigo2").length()!=0)
      		{
      			out.print("</b> y <b>"+request.getParameter("codigo2"));
      		}
      		
      }
      else if(request.getParameter("codigo2").length()!=0)
      {
    	  out.print(request.getParameter("codigo2"));
      }
    	  %>
				</b>
				<%} else {%>
				Pague la modificacion de la reserva con codigo:<b> <% 
      
      if(request.getParameter("codigo1").length()!=0)
      {		
    	  out.print(request.getParameter("codigo1"));
      }
      else if(request.getParameter("codigo2").length()!=0)
      {
    	  out.print(request.getParameter("codigo2"));
      }
    	  %> <%} %>
			</h1>
			<div class="card-row">
				<span class="visa"></span> <span class="mastercard"></span> <span
					class="amex"></span> <span class="discover"></span>
			</div>
			<form action="finalizar.jsp" method="post">
				<input type="hidden" name="codigo1" value="${param.codigo1 }" /> <input
					type="hidden" name="codigo2" value="${param.codigo2 }" />

				<div class="form-group">
					<label or="NameOnCard">Nombre de la tarjeta</label> <input
						id="NameOnCard" class="form-control" type="text" maxlength="255"></input>
				</div>
				<div class="form-group">
					<label for="CreditCardNumber">Numero de tarjeta</label> <input
						id="CreditCardNumber" class="null card-image form-control"
						type="text"></input>
				</div>
				<div class="expiry-date-group form-group">
					<label for="ExpiryDate">Fecha de expiracion</label> <input
						id="ExpiryDate" class="form-control" type="text"
						placeholder="MM / YY" maxlength="7"></input>
				</div>
				<div class="security-code-group form-group">
					<label for="SecurityCode">Codigo de seguridad</label>
					<div class="input-container">
						<input id="SecurityCode" class="form-control" type="text"></input>
						<i id="cvc" class="fa fa-question-circle"></i>
					</div>
					<div class="cvc-preview-container two-card hide">
						<div class="amex-cvc-preview"></div>
						<div class="visa-mc-dis-cvc-preview"></div>
					</div>
				</div>
				<div class="zip-code-group form-group">
					<label for="ZIPCode">Codigo Postal</label>
					<div class="input-container">
						<input id="ZIPCode" class="form-control" type="text"
							maxlength="10"></input> <a tabindex="0" role="button"
							data-toggle="popover" data-trigger="focus" data-placement="left"
							data-content="Enter the ZIP/Postal code for your credit card billing address.">
							<i class="fa fa-question-circle"></i>
						</a>
					</div>
				</div>
				<button id="PayButton"
					class="btn btn-block btn-success submit-button" type="submit">
					<span class="submit-button-lock"></span> <span class="align-middle">Pagar</span>
				</button>
			</form>
		</div>
	</div>
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	<script
		src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>

	<script src="scripts/formularioPago.js"></script>

</body>
</html>
