<%-- 
    Document   : journeyDone
    Created on : Aug 18, 2022, 11:25:58 PM
    Author     : ashfa
--%>

<%@page import="java.sql.Statement"%>
<%@page import="DB.DB"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Booking Page</title>
    </head>
    <body>
        <h1>Manage Booking</h1>
        
        <a href="driverHome.jsp">Back</a>
        
        <%
            String id = request.getParameter("id").trim();
            try {
            Connection con = DB.getConnection();
        
        
        Statement st = con.createStatement();
        
        String sql = "delete from gocheeta_2.bookings where id="+id;
        st.execute(sql);
        out.print("Journey Completed...");
        con.close();
            } catch(Exception e){
            out.println(e);
            }
        %>
    </body>
</html>
