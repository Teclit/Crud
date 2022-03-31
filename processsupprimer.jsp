<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@page import="dao.StagaireManagmentDAO"%>
<%@page import="pojo.Stagaire"%>

<%

	int stagaireId = Integer.parseInt(request.getParameter("Id"));
	
	int status = StagaireManagmentDAO.deleteStagaire(stagaireId);
	if(status == 1)
	{
		response.sendRedirect("index.jsp"); 
	}
	else
	{
		response.sendRedirect("error.jsp"); 
	}

%>