 <%  if(request.getParameter("cname").equals("admin") && request.getParameter("cpass").equals("admin@2020"))
{
    response.sendRedirect("AdminHome.jsp?msg=success");
}
else{
    response.sendRedirect("adminlogin.jsp?msg=failed");
}
%>