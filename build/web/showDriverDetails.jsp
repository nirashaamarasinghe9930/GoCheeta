<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-image: url(./imgFolder/LX2690B88C2A80CE838A77C97029A78882E0CE5553AEA24B09.jpg);
                background-size: cover;
            }
        </style>
    </head>
    <body align="center">
        <h1 style="background-color: rebeccapurple; border-radius: 15px; padding: 8px 12px; color: white;">Driver Details</h1>
        <%
        String id, uN, vT, mN, branch, image;
        id = request.getParameter("id");
        uN = request.getParameter("drivername");
        vT = request.getParameter("vehicleType");
        mN = request.getParameter("mobileNumber");
        branch = request.getParameter("branch");
        image = request.getParameter("image");
        
        %>
        <img src="images/<%=image%>" height="300" width="400" align="center"><br>
        <span style="font-size: 22px; color:orange; font-weight: bold;">Driver Name:- <%=uN%><br>
        Vehicle Type:- <%=vT%><br>
        Mobile Number:- <%=mN%><br>
        Branch:- <%=branch%><br></span>
        <br>
        <a style="color: white;" href="deletedriver.jsp?id=<%=id%>">DELETE</a> 
        <div style="text-align: center;">
            <br>
        <a style="color: white;" href="adminHome.jsp">ADMIN HOME</a>
        </div>
        
    </body>
</html>
