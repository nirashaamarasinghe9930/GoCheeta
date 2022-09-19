
<%@page import="DB.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Page</title>
    </head>
    <body>
        <h1>Driver Delete</h1>
        
        <a href="viewDrivers.jsp">Back</a>
        
        <%
            String id = request.getParameter("id").trim();
            try {
            Connection con = DB.getConnection();
        
        
        Statement st = con.createStatement();
        
        String sql = "delete from gocheeta_2.driver where id="+id;
        st.execute(sql);
        out.print("Driver is deleted...");
        con.close();
            } catch(Exception e){
            out.println(e);
            }
        
        %>
    </body>
</html>
