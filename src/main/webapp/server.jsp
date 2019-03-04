<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String u = request.getParameter("u");
    if (u.equals("admin")){
    	out.print(1);
    } else {
    	out.print(0);
    }
%>
