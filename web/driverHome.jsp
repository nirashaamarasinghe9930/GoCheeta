
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-image: url(./imgFolder/7047494015_e84ab688ea_b.jpg);
                background-size: cover;
            }
            ul{
                margin-top: 2%;
                list-style-type: none;
            }
            ul li{
                font-size: 22px;
            }
        </style>
    </head>
    <body>
        <%
            String Name = (String) session.getAttribute("username");
            
            if(Name != null) {
        %>
        <center><h1 style="font-weight: bold;">WELCOME DRIVER, <%out.println(Name);%></h1><br></center>
        <center><ul>
            <li><a href="viewBookingsToDriver.jsp" style="color: #FAF0E6">Manage Bookings</a></li>
            <br>
            <li><a href="logout.jsp" style="color: #FAF0E6">LOGOUT</a></li>
        </ul></center>
        
        <%}else if(Name != null){%>
        <%}%>
    </body>
</html>
