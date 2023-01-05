/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author Parth savaliya
 */
@WebServlet(urlPatterns = {"/addProductToDB"})
@MultipartConfig
public class addProductToDB extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            HttpSession session = request.getSession(false);
            String shopEmail = (String) session.getValue("shopEmail");
            String shopName = (String) session.getValue("shopName");
            String shopAddress = (String) session.getValue("shopAddress");

            String pName = request.getParameter("pName");
            String pDescription = request.getParameter("pDescription");
            String pPrice = request.getParameter("pPrice");
            String pCategory = request.getParameter("category");
            String stock = request.getParameter("stock");

           
              Part pImage =request.getPart("pImage");
              
            String path=request.getRealPath("ap-shop")+File.separator+"img"+File.separator+pImage.getSubmittedFileName();
           System.out.println(path);
           
               try {
                   
                    FileOutputStream fos=new FileOutputStream(path);
                    InputStream is=pImage.getInputStream();

                    //reading data

                    byte [] data = new byte[is.available()];
                    is.read(data);

                    //writing the data
                    fos.write(data);
                    
                    //close the FileoutputStream
                    fos.close();
               }
            catch (Exception e)
            {
                
            }
            try {

                Class.forName("com.mysql.jdbc.Driver");
                Connection conn1 = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop", "root", "");
                String sql = "INSERT INTO productsdetails (shopName, shopAddress, shopEmail, productName, productDescription, productPrice, productCategory, productImage, stock) values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
                PreparedStatement statement = conn1.prepareStatement(sql);
                statement.setString(1, shopName);
                statement.setString(2, shopAddress);
                statement.setString(3, shopEmail);
                statement.setString(4, pName);
                statement.setString(5, pDescription);
                statement.setString(6, pPrice);
                statement.setString(7, pCategory);
                statement.setString(8, pImage.getSubmittedFileName());
                statement.setString(9, stock);
            
               
                response.sendRedirect("adminproduct.jsp");
            } catch (Exception e) {
                out.println("An exception occurred: " + e.getMessage());

            }
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
