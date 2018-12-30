<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
   String name = request.getParameter( "uname" );
   session.setAttribute( "theName", name );
   String password = request.getParameter( "psw" );
   session.setAttribute( "thePassWord", password);
%>
<HTML>
<BODY>
<A HREF="editpage.jsp">Continue</A>
</BODY>
</HTML>