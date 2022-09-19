<%-- 
    Document   : bookingAdmin
    Created on : Aug 18, 2022, 11:32:17 PM
    Author     : ashfa
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DB.DB"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-color: skyblue;
                background-image: url(./imgFolder/bugatti-veyron-top.jpg);
                background-size: cover;
            }
            td{
                color: white;
                font-family: serif;
                font-size: 20px;
                font-weight: bold;
            }
        </style>
    </head>
    <body>
        <center><h1 style="font-family: sans-serif; font-weight: bold; font-size: 50px;">Bookings</h1></center>
        <table align="center" border="3px" cellspacing="7px" cellpadding="10px">
            <tr>
            <%
                try{
                String Name = (String) session.getAttribute("username");
                    Connection con = DB.getConnection();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from gocheeta_2.bookings");
                    int cnt = 0;
                    while(rs.next()) {
                    String id, driver, customer, vT, mN, branch;
                    id = rs.getString("id").trim();
                    driver = rs.getString("driver").trim();
                    customer = rs.getString("customer").trim();
                    vT = rs.getString("vehicleType").trim();
                    mN = rs.getString("mobileNumber").trim();
                    branch = rs.getString("branch").trim();
                    cnt++;
                    if(cnt==1) {
                    out.print("</tr><tr>");
                    cnt=0;
                }
                    %>
                    
                    <td>
                        Id: <%=id%><br>
                        Driver Name: <%=driver%><br>
                        Customer Name: <%=customer%><br>
                        Vehicle Type: <%=vT%><br>
                        Mobile Number: <%=mN%><br>
                        Branch: <%=branch%><br>
                    </td>
                    
                    <%
                }
                } catch(Exception ex) {
                out.println(ex);
                }
            %>
        </table>
        <div style="text-align: center;">
            <br>
        <a href="adminHome.jsp" style="color: yellow;">ADMIN-HOME</a>
        </div>
    </body>
</html>