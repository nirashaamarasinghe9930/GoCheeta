<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DB"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

        <style>
            body{
                background-image: url(./imgFolder/R3.jpg);
                background-size: cover;
            }
            .container {
                width: 100%;
                height: 80px;
                background: #00bfff;
            }
            
            li{
                float: right;
                list-style: none;
                padding: 10px 10px 10px 10px;
            }
            
            li a {
                font-size: 20px;
                color: white;
                text-decoration: none; 
            }
            table tr td{
                color: white;
                font-size: 18px;
            }
        </style>
    </head>
    <body>
        <%
            String Name = (String) session.getAttribute("username");
            
            if(Name == null) {
        %>
        <div class="container">
        <nav>
            <ul>
                <li><a href="login.jsp" style="color: black; font-weight: bold;">LOGIN</a></li>
                <li><a href="register.jsp" style="color: black; font-weight: bold;">REGISTER</a></li>
            </ul>
        </nav>
        </div>
        
        <%}else if(Name != null){%>
        
        <div class="container">
        <nav>
            <ul>
                <li><a href="logout.jsp"style="color: black; font-weight: bold;">LOGOUT</a></li>
                <li><a href="bookings.jsp"style="color: black; font-weight: bold;">BOOKINGS</a></li>
                <li style="float: left; color: black;font-size: 20px; font-weight: bold;">WELCOME <%out.println(Name);%></li>
            </ul>
        </nav>
        </div>
        
        <%}%>
        
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
                    
                    <td><a href="aboutDriver.jsp?id=<%=id%>&drivername=<%=uN%>&vehicleType=<%=vT%>&mobileNumber=<%=mN%>&branch=<%=branch%>&image=<%=image%>"><img src="images/<%=image%>" height="100" width="180"> </a><br>
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
    </body>
</html>
