<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@page import="dao.StagaireManagmentDAO"%>
<%@page import="pojo.Stagaire"%>
<%@page import="java.util.*"%>


<jsp:include page="navigation/header.jsp"></jsp:include>


<div class="container">
	<!-- Start col total commande-->
	<div class="row justify-content-around  mx-4 p-5 gy-3 ">
	
		<div class="col-md-3 bg-warning text-center border border-secondary">
			<h5 class="py-1"><a href="Ajouter.jsp"> Ajouter Stagaire </a></h5>
		</div>
		
	</div>
	<!-- End of col total commande-->
	<div class="row mb-5">
		<table class="table table-hover table-bordered mx-auto mb-5">
		<thead>
			<tr>
				<th>N°</th>
				<th>Nom</th>
				<th>Prenom</th>
				<th>Email</th>
				<th colspan="2">Actions</th>
			</tr> 
		</thead>
		
		<%
			List<Stagaire> stagaireList = StagaireManagmentDAO.getAllStagaires();
			for (Stagaire s : stagaireList) {
		%>
		
		<tr>
			<td><%=s.getId()%></td>
			<td><%=s.getNom()%></td>
			<td><%=s.getPrenom()%></td>
			<td><%=s.getEmail() %></td>
			<td><button class="btn btn-success btn-sm" onclick="location.href = 'Modifier.jsp?Id=<%=s.getId()%>';">Modifier</button></td>
			<td><button class="btn btn-danger btn-sm" onclick="location.href = 'processsupprimer.jsp?Id=<%= s.getId()%>';">Supprimer</button></td>
		</tr>

		<% } %>
		</table>
	</div>
	
	</div>
	<!-- AFOUTER FOOTER -->
	<jsp:include page="navigation/footer.jsp"></jsp:include>