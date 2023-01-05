<%-- 
    Document   : adminname
    Created on : 2 Mar, 2021, 7:11:07 PM
    Author     : Parth savaliya
--%>

<%

String email=request.getParameter("email");
String password=request.getParameter("password");

if( (email.equals("psavaliya885@rku.ac.in") &&password.equals("Parth@2265")) ||(email.equals("sgajera681@rku.ac.in") &&password.equals("Shani@1993")) )
{

response.sendRedirect("allUser.jsp");

}
else
{
response.sendRedirect("index.jsp");

}

%>