<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="dao.StagaireManagmentDAO"%>
<%@page import="pojo.Stagaire"%> 
<%@page import="java.util.*"%>

<jsp:include page="navigation/header.jsp"></jsp:include>
	
	<%
	    int    stagaireId  = Integer.parseInt(request.getParameter("Id"));
		Stagaire stagaire  = StagaireManagmentDAO.getStagaireById(stagaireId);
		
	%>


	<div class="container">  
		<div class="row justify-content-center m-5">
				<h4 class="text-center mb-3 "> Ajouter Un Nouveau Stagaire</h4>
				<form class="col-md-6" action="processModifier.jsp" method="post">
				
					<input id="id" name="id" type="hidden" value="<%=stagaire.getId()%>">
					
				  <div class="mb-3">
				    <label for="nom" class="form-label">Nom :</label>
				    <input type="text" class="form-control" id="nom" name="nom" value="<%=stagaire.getNom()%>">
				  </div>
				  <div class="mb-3">
				    <label for="prenom" class="form-label">Prénom :</label>
				    <input type="text" class="form-control" id="prenom" name="prenom" value="<%=stagaire.getPrenom()%>">
				  </div>
				  <div class="mb-3">
				    <label for="email" class="form-label">Email :</label>
				    <input type="email" class="form-control" id="email"  name="email" value="<%=stagaire.getEmail()%>">
				  </div>
				  
				  
				  <button type="submit" class="btn btn-warning btn-lg d-flex align-self-centerr mx-auto px-5">Modifier</button>
				</form>
		</div>
	
	
	</div>
<!-- AFOUTER FOOTER -->
<jsp:include page="navigation/footer.jsp"></jsp:include>