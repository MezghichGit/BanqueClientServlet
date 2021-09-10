<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Banque ISIKA</title>
</head>
<body>

	<h1>Pour Lister les comptes, cliquer ici </h1> <a href="<%=request.getContextPath()+"/CompteServlet"%>">Lien</a>
	<h1>Pour créer un compte remplir le champs solde!</h1>

	<form action="BanqueServlet" method="POST">
	Taper un solde initial : <input type="text" name="solde"/>
	<input type="submit" value="Créer"/>
	
	</form>
</body>
</html>