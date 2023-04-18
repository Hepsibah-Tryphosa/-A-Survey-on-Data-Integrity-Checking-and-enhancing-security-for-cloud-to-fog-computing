<%-- 
    Document   : talog1
    Created on : May 20, 2017, 1:16:14 PM
    Author     : java3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

    String name = request.getParameter("name");
    String pass = request.getParameter("pass");
    try {
        if (name.equalsIgnoreCase("tpa") && pass.equalsIgnoreCase("tpa")) {
            response.sendRedirect("tpahome.jsp");
        } else {
            response.sendRedirect("tpa.jsp");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }



%>