<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách chủ đề từ vựng</title>
	<link href="Template/Frontend/css/bootstrap.css" rel="stylesheet">
    <link href="Template/Frontend/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="Template/Frontend/css/style.css" rel="stylesheet"> 
    
   
   	<!-- font -->
	<link rel="stylesheet" href="Template/Frontend/font/font-awesome.min.css" />
    
    <script src="Template/Frontend/js/jquery-1.js"></script>
    <script src="Template/Frontend/js/bootstrap.min.js"></script>
    
    <style type="text/css">
    
    	#para1
    	{
    		padding-top:70px;
    	}
    
    </style>
    
</head>
<body>
	<!--HEADER ROW-->
	  	<jsp:include page="Header.jsp"></jsp:include>
	 <!-- /HEADER ROW -->
	 
		<div class="container">
			  <!--PAGE TITLE-->
		
			<div class="row">
				<div class="span12">
						<div class="page-header">
							<h3>
								Danh sách chủ đề từ vựng
							</h3>
							
							
						</div>
						
				</div>
				
			</div>
		
		  <!-- /. PAGE TITLE-->
		  	
		  	<%
		  		if (request.getAttribute("msgdschudetuvung")!=null)
		  		{	  		
		  	%>
		  		<div class="row">	
					
						<div class="span6">			
								<div class="media">
									 <p style="color:red">${msgdschudetuvung}</p>
								</div>						
						</div>	
							
				</div>
		  	<%
		  		}
		  		else
		  		{
		  	%>
			<div class="row">	
					<c:forEach items="${danhsachhdtuvung}" var="list">
						<div class="span6">			
								<div class="media">
									 <a href="#" class="pull-left"><img src="Imageaudiohdtuvung/${list.vocabularyimage}" class="media-object" alt='' width="128px" height="128px"/></a>
									<div class="media-body">
										 
										<p>
											${list.vocabularyname}
										</p>
										
										<a href="Xemnoidungtuvung?vocabularyguidelineid=${list.vocabularyguidelineid}" class="btn" type="button">Xem nội dung chủ đề</a>
									</div>
								</div>						
						</div>	
					</c:forEach>				
			</div>
			<%
		  		}
			%>
			
			
			<!--Pagination-->
			<div class="row">
				<div class="span6">
					
					<div class="pagination">
						<ul>
							<c:if test="${numberpage == 1}">
							   <li class = "disabled"><a href = "#">Prev</a></li>
							  
							   <li><a href = "Hienthidshdtuvung?pageid=${numberpage+1}">Next</a></li>
						   </c:if>
						   <c:if test="${numberpage == maxpageid}">
							   <li><a href = "Hienthidshdtuvung?pageid=${numberpage-1}">Prev</a></li>
							  
							   <li class = "disabled"><a href ="#">Next</a></li>
						   </c:if>
						   
						   <c:if test="${numberpage > 1 && numberpage < maxpageid}">
							   <li><a href = "Hienthidshdtuvung?pageid=${numberpage-1}">Prev</a></li>
							   
							   <li><a href = "Hienthidshdtuvung?pageid=${numberpage+1}">Next</a></li>
						   </c:if>
					
						   
						</ul>
					</div>	
					
			 	</div>
			</div>
			<!--/.Pagination-->
			
		</div>
	 
	 <div id="para1">
	 	<jsp:include page="Footer.jsp"></jsp:include>
	 </div>
	 
</body>
</html>