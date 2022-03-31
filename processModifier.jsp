<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="dao.StagaireManagmentDAO"%>
<%@page import="pojo.Stagaire"%> 


<%
 
	int    Id     = Integer.parseInt(request.getParameter("id"));
	String nom    = request.getParameter("nom");
	String prenom = request.getParameter("prenom");
	String email  = request.getParameter("email");
	
	Stagaire stagaire = new Stagaire(Id, nom, prenom, email);
	
	int status = StagaireManagmentDAO.UpdateStagaire(stagaire);
	if(status == 1)
	{
		response.sendRedirect("index.jsp"); 
	}
	else
	{
		response.sendRedirect("error.jsp"); 
	}

%>