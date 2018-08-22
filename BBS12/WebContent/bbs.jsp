<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    <%@ page import="java.io.PrintWriter" %>
    <%@ page import="bbs.BbsDAO" %>
    <%@ page import="bbs.Bbs" %>
    <%@ page import="java.util.ArrayList" %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width-device-width",initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>Insert title here</title>
</head>
<body>
<%
String userID=null; 
if(session.getAttribute("userID") != null) { 
	userID = (String) session.getAttribute("userID"); 
	
}
int pageNumber =1; 
if(request.getParameter("pageNumber") !=null) { 
	pageNumber=Integer.parseInt(request.getParameter("pageNumber"));
}

%>


<nav class="navbar navbar-defalut">
	<div class="navbar-header">
	 <button type="button" class="navbar-toggle collapsed"
	 data-toggle="collapse" data-target="abs-example-navbar-collapse" 
	 aria-expanded="false"> 
	 <span class="icon-bar"></span>
	 <span class="icon-bar"></span>
	 <span class="icon-bar"></span>
	 
	 </button>
	  
	  <a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트 </a>
	 
	</div>
	<div class="collapse navbar-collapse" id="bs=example-navbar-collapse-1"> 
	<ul class="nav navbar-nav"> 
	
	<li><a href="main.jsp">메인</a>
	<li class="active"><a href="bbs.jsp">게시판</a></li>
	
	</ul>
	<%
	if(userID ==null) { 

	%>
	
	<ul class="nav navbar-nav navbar-right">
	     <li calss="dropdown">  
	      <a href="#" class="dropdown-toggle" 
	       data-toggle="dropdown" role="button" aria-haspoppup="true"
	       aria-expanded="false">접속하기 <span class="caret"></span></a>
	       <ul class="dropdown-menu"> 
	       <li> <a href="login.jsp">로그인 </a></li> 
	       <li> <a href="join.jsp">회원가입 </a></li> 
	       
	      
	</ul>
			
	}
	<% 
	
	}else { 
	
	%>
		
	<ul class="nav navbar-nav navbar-right">
	     <li calss="dropdown">  
	      <a href="#" class="dropdown-toggle" 
	       data-toggle="dropdown" role="button" aria-haspoppup="true"
	       aria-expanded="false">회원관리 <span class="caret"></span></a>
	       <ul class="dropdown-menu"> 
	       <li> <a href="logoutAction.jsp">로그아웃 </a></li> 

	       
	      
	<%
	
	
	}
	%>
	
	
	
	
	</li>
	</ul>
	
	</div>
</nav>
<div class="container"> 
<div class="row">
<table class="table table-striped" style="text-align:center; border : 1px solid #dddddd">
<thead> 
   <tr> 
   		<th style="background-color:#eeeeee; text-align:center;">번호</th>
   		<th style="background-color:#eeeeee; text-align:center;">제목</th>
   		<th style="background-color:#eeeeee; text-align:center;">작성자</th>
   		<th style="background-color:#eeeeee; text-align:center;">작성일</th>
   	
   		
   		
   		</tr>
   		</thead>
   		<tbody> 
   		<% 
   		BbsDAO bbsDAO=new BbsDAO();
   		ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
   		for(int i=0; i<list.size(); i++) {
   		System.out.print("상");
   		%>
   			<tr> 
   		<td><%= list.get(i).getBbsID() %> </td>
   		<td><a href="view.jsp?bbsID=<%=list.get(i).getBbsID() %>"><%=list.get(i).getBbsTitle() %></a></td>
    	<td><%= list.get(i).getUserID() %> </td> 
   		<td><%= list.get(i).getBbsDate().substring(0,11)+list.get(i).getBbsDate().substring(11,13) +"시" + list.get(i).getBbsDate().substring(14,16) +"분" %> </td>   		
        		
   		</tr>

        <%   		
   		}
   		%>
   		
   		


   		
   			
   <!-- 			<td> 1 </td>
   			<td> 게시판 </td>
   			<td> 상우 </td> 
   			<td> 2018-8-15 </td>
   			
    -->			
   			
   		
   		
   </tbody>
   		
</table>

<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>


</div>

</div>




<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>