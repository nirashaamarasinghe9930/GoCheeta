<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Driver Page</title>
        <style>
            *{
                padding: 0;
                margin: 0;
            }
            body {
                background-color: skyblue;
            }
        </style>
    </head>
    <body align="center">
        <h1 style="color: red; font-size: 28px; font-family: sans-serif;">Driver Details</h1>
        <%
        String id, uN, vT, mN, branch, image;
        id = request.getParameter("id");
        uN = request.getParameter("drivername");
        vT = request.getParameter("vehicleType");
        mN = request.getParameter("mobileNumber");
        branch = request.getParameter("branch");
        image = request.getParameter("image");
        
        String Name = (String) session.getAttribute("username");
        %>
        <img src="images/<%=image%>" height="300" width="400" align="center"><br>
        <span style="font-size: 20px;">Driver Name:- <%=uN%></span><br>
        <span style="font-size: 20px;">Vehicle Type:- <%=vT%></span><br>
        <span style="font-size: 20px;">Mobile Number:- <%=mN%></span><br>
        <span style="font-size: 20px;">Branch:- <%=branch%></span><br>
        <form method="post" action="bookDriver">
            <input hidden type="text" value="<%=Name%>" name="customer">
            <input hidden type="text" value="<%=uN%>" name="driverName">
            <input hidden type="text" value="<%=vT%>" name="vehicleType">
            <input hidden type="text" value="<%=mN%>" name="mobileNumber">
            <input hidden type="text" value="<%=branch%>" name="branch">
            <input style="color: white; width: 200px; background-color: red" type="submit" value="BOOK DRIVER">
        </form>
        <div style="text-align: center;">
            <br>
        <a href="home.jsp">HOME</a>
        </div>
        
    </body>
</html>
