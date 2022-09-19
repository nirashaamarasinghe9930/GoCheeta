/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import DB.DB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class register extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet register at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        
        //JDBC connector
        String fullname = request.getParameter("fname");
        String username = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("psw");
        
        try{
            Connection con = DB.getConnection();
            
            System.out.println("Connected");
            
            String sql = "insert into gocheeta_2.users (fullname, username, password, email) values(?,?,?,?)";
            
            PreparedStatement pa = con.prepareStatement(sql);
            pa.setString(1, fullname);
            pa.setString(2, username);
            pa.setString(3, password);
            pa.setString(4, email);
            
            pa.executeUpdate();
            
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.forward(request, response);
        }
        catch(SQLException e){
                System.out.println("ERROR :: "+e.getMessage());
                }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
