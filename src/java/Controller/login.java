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
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        
        String username = request.getParameter("name");
        String password = request.getParameter("psw");
        
        try{
            Connection con = DB.getConnection();
            
            System.out.println("Connected Login");
            
            String sql = "select * from gocheeta_2.users where username=? and password=?";
            
            PreparedStatement ps = con.prepareStatement(sql);
            
            ps.setString(1, username);
            ps.setString(2, password);
            
            String unameDB = "";
            String passDB = "";
            
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()) {
                unameDB = rs.getString("username");
                passDB = rs.getString("password");
                
                System.out.println("Database username :: "+unameDB);
                System.out.println("Database username :: "+passDB);
            }
            
            if(username.equals(unameDB) && password.equals(passDB)) {
                System.out.println("Login Succeed");
                
                HttpSession session = request.getSession();
                
                session.setAttribute("username", username);
                
                RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
                rd.forward(request, response);
            }else{
                System.out.println("Login Failed");
                
                RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
                rd.forward(request, response);
            }
            
        }catch(SQLException e){
            System.out.println("Error From LOGIN PART :: "+e.getMessage());
        }
    }


}
