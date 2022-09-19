/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package BookController;

import DB.DB;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class bookDriver extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet bookDriver</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet bookDriver at " + request.getContextPath() + "</h1>");
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
     
        String customer = request.getParameter("customer");
        String driver = request.getParameter("driverName");
        String vehicleType = request.getParameter("vehicleType");
        String mobileNumber = request.getParameter("mobileNumber");
        String branch = request.getParameter("branch");
        
        try{
            Connection con = DB.getConnection();

            System.out.println("Connected");
            
            String sql = "insert into gocheeta_2.bookings (customer, driver, vehicleType, mobileNumber, branch) values(?,?,?,?,?)";
            
            PreparedStatement pa = con.prepareStatement(sql);
            
            pa.setString(1, customer);
            pa.setString(2, driver);
            pa.setString(3, vehicleType);
            pa.setString(4, mobileNumber);
            pa.setString(5, branch);
            
            pa.executeUpdate();
            
            RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
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
