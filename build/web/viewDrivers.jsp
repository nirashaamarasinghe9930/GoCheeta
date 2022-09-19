<%@page import="DB.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show Drivers Page</title>
        <style>
            body{
                background-image: url(./imgFolder/435.jpg);
                background-size: cover;
            }
            h1{
                font-family: sans-serif;
                font-size: 30px;
                font-weight: bold;
                background-color: rebeccapurple; 
                border-radius: 15px; 
                padding: 8px 12px; 
                color: white;
            }
            table tr td{
                font-size: 22px;
                color: white;
            }
            table tr td a{
                color: red;
            }
        </style>

    </head>
    <body>
        <center><h1>Drivers</h1></center>
        <table align="center" border="3px" cellspacing="7px" cellpadding="10px">
            <tr>
            <%
                try{
                    Connection con = DB.getConnection();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from gocheeta_2.driver");
                    int cnt = 0;
                    while(rs.next()) {
                    String id, uN, vT, mN, branch, image;
                    id = rs.getString("id").trim();
                    uN = rs.getString("username").trim();
                    vT = rs.getString("vehicleType").trim();
                    mN = rs.getString("mobileNumber").trim();
                    branch = rs.getString("branch").trim();
                    image = rs.getString("image").trim();
                    cnt++;
                    if(cnt==3) {
                    out.print("</tr><tr>");
                    cnt=0;
                }
                    %>
                    
                    <td><a href="showDriverDetails.jsp?id=<%=id%>&drivername=<%=uN%>&vehicleType=<%=vT%>&mobileNumber=<%=mN%>&branch=<%=branch%>&image=<%=image%>"><img src="images/<%=image%>" height="100" width="180"> </a><br>
                        Driver Name: <%=uN%><br>
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
        <a href="adminHome.jsp">ADMIN HOME</a>
        </div>
    </body>
</html>
