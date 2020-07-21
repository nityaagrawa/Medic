/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Nitya
 */
@WebServlet(urlPatterns = {"/log"})
public class log extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String s1=request.getParameter("username");
        String s2=request.getParameter("password");
        PrintWriter out = response.getWriter();
        try{
Class.forName("com.mysql.jdbc.Driver"); //1
Connection con;
// JDBC URL main protocol:sub protocol:db info

con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hci","root","1999");
Statement st = con.createStatement(); //3
ResultSet rs;int f=0;
rs = st.executeQuery("select * from customer");
System.out.println("2");
while(rs.next()){

System.out.println("1");
    String st1=rs.getString("u_name");
String st2=rs.getString("u_password");
        if(s1.equals(st1)&&(s2.equals(st2)))
        {
            
System.out.println("3");
            System.out.println(st1);
            System.out.println(st2);
            RequestDispatcher rd=request.getRequestDispatcher("index.html");
            rd.forward(request,response);
            }
            else{
            System.out.println("4");
            RequestDispatcher rd=request.getRequestDispatcher("wronguser.html");
            rd.forward(request,response);

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
