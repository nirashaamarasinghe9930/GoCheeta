
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            ul{
                background-color: red;
            }
            ul li{
                list-style-type: none;
                font-size: 20px;
            }
            ul li a{
                color: white;
            }
        </style>
    </head>
    <body>
        <%
            String Name = (String) session.getAttribute("adminName");
            
            if(Name != null) {
        %>
        <center><h1>WELCOME <%out.println(Name);%></h1><br></center>
        <center><ul>
            <li><a href="viewDrivers.jsp">Manage Drivers</a></li>
            <li><a href="driverRegister.jsp">Add Drivers</a></li>
            <li><a href="bookingAdmin.jsp">View Bookings</a></li>
            <li><a href="logout.jsp">LOGOUT</a></li>
        </ul></center>
        
        <%}else if(Name != null){%>
        <%}%>
    </body>
</html>
