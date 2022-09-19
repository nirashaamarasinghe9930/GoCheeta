/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ManageDrivers;

import DB.DB;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "registerDriver")
@MultipartConfig
public class registerDriver extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet registerDriver</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet registerDriver at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        
        String fullname = request.getParameter("fname");
        String username = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("psw");
        String vehicleType = request.getParameter("vehicleType");
        String mobile = request.getParameter("mobileNumber");
        String branch = request.getParameter("branch");
        int result = 0;
        Part part = request.getPart("image");
        String imageName = part.getSubmittedFileName();
      
        if(imageName != null) {
            try {
                String uploadPath = "D:/Working/Company Projects/Advanced Programming/Web Application Netbeans/GoCheeta/web/images/"+imageName;
                   
                try (FileOutputStream fos = new FileOutputStream(uploadPath)) {
                    InputStream is = part.getInputStream();
                    
                    byte[] data = new byte[is.available()];
                    is.read(data);
                    fos.write(data);
                } catch (Exception e) {
                }
                
                Connection con = DB.getConnection();
                String sql = "insert into gocheeta_2.driver (fullname, username, email, password, vehicleType, mobileNumber, branch, image) values(?,?,?,?,?,?,?,?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, fullname);
                ps.setString(2, username);
                ps.setString(3, email);
                ps.setString(4, password);
                ps.setString(5, vehicleType);
                ps.setString(6, mobile);
                ps.setString(7, branch);
                ps.setString(8, imageName);
                
                result = ps.executeUpdate();
                
                if(result > 0) {
                    response.sendRedirect("viewDrivers.jsp");
                } else {
                    response.sendRedirect("driverRegister.jsp?message=Some+Error+Occured");
                }
                
            }catch(SQLException e) {
                out.println(e);
            }
        }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
