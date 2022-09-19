
<%@page import="java.sql.Statement"%>
<%@page import="DB.DB"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Delete Booking</h1>
        
        <a href="home.jsp">Back</a>
        
        <%
            String id = request.getParameter("id").trim();
            try {
            Connection con = DB.getConnection();
        
        
        Statement st = con.createStatement();
        
        String sql = "delete from gocheeta_2.bookings where id="+id;
        st.execute(sql);
        out.print("Booking is Canceled...");
        con.close();
            } catch(Exception e){
            out.println(e);
            }
        
        %>
    </body>
</html>
