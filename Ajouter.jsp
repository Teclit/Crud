<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@page import="java.util.*"%>

<jsp:include page="navigation/header.jsp"></jsp:include>


	<div class="container">  
		<div class="row justify-content-center m-5">
				<h4 class="text-center mb-3 "> Ajouter Un Nouveau Stagaire</h4>
				<form class="col-md-6" action="processAjouter.jsp" method="post">
				
				  <div class="mb-3">
				    <label for="nom" class="form-label">Nom :</label>
				    <input type="text" class="form-control" id="nom" name="nom">
				  </div>
				  <div class="mb-3">
				    <label for="prenom" class="form-label">Prénom :</label>
				    <input type="text" class="form-control" id="prenom" name="prenom">
				  </div>
				  <div class="mb-3">
				    <label for="email" class="form-label">Email :</label>
				    <input type="email" class="form-control" id="email"  name="email">
				  </div>
				  
				  
				  <button type="submit" class="btn btn-warning btn-lg d-flex align-self-centerr mx-auto px-5">Ajouter</button>
				</form>
		</div>
	
	
	</div>
<!-- AFOUTER FOOTER -->
<jsp:include page="navigation/footer.jsp"></jsp:include>