   <%-- 
    Document   : addOrderToDB
    Created on : 1 Mar, 2021, 8:19:17 AM
    Author     : dmala
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
 String deliveryBoy = "0";
 String deliveryBoyWork = "0";
    
String driver5 = "com.mysql.jdbc.Driver";
String connectionUrl5 = "jdbc:mysql://localhost:3306/";
String database5 = "groceryshop";
String userid5 = "root";
String password5 = "";
try {
Class.forName(driver5);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection5 = null;
Statement statement5 = null;
ResultSet resultSet5 = null;

try{
    
connection5 = DriverManager.getConnection(connectionUrl5+database5, userid5, password5);
statement5=connection5.createStatement();
String sql5 ="select * from deliveryboydetails";
resultSet5 = statement5.executeQuery(sql5);
while(resultSet5.next())
{
    String work1 = resultSet5.getString("task1");
   if(work1.equals("no"))
    {
       deliveryBoy  = resultSet5.getString("dBoyID");
       deliveryBoyWork  = "1";
       break;
    } 
}
            if(deliveryBoy.equals("0"))
            {
                while(resultSet5.next())
                {
                    String work2 = resultSet5.getString("task2");
                    if(work2.equals("no"))
                    {
                         deliveryBoy  = resultSet5.getString("dBoyID");
                         deliveryBoyWork  = "2";
                         break;
                     } 
                }
            }
            
           
if(deliveryBoy.equals("0"))
{
   // response.sendRedirect("contact.jsp");
    out.println("contact");
    
}
else
{
    if(deliveryBoyWork.equals("1"))
    {
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","");
        Statement st= con.createStatement();
        String update = "UPDATE deliveryboydetails SET  task1 = '"+session.getValue("username")+"' WHERE dBoyID = "+deliveryBoy;
        st.executeUpdate(update);
    }
    else if(deliveryBoyWork.equals("2"))
    {
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","");
        Statement st= con.createStatement();
        String update = "UPDATE deliveryboydetails SET  task2 = '"+session.getValue("username")+"' WHERE dBoyID = "+deliveryBoy;
        st.executeUpdate(update);
    }
    
        
}
connection5.close();
} catch (Exception e)
{
out.println("An exception occurred: " + e.getMessage());
}

%>


<%
String oID="0";

    
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "groceryshop";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

try{
    
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from deliveryadd";
resultSet = statement.executeQuery(sql);
while(resultSet.next())
{
    if(resultSet.getString("userEmail").equals(session.getValue("username")))
    {
        oID = resultSet.getString("oID");
    }
}
connection.close();
} catch (Exception e)
{
out.println("An exception occurred: " + e.getMessage());
}

%>

    

<%




try
{    
        Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","");
        Statement st= con.createStatement();
        String sqlDelete = "DELETE FROM deliveryadd WHERE oID ="+oID;
        st.executeUpdate(sqlDelete);    
    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop", "root", "");
    Statement st1=conn1.createStatement();
    int i=st1.executeUpdate("insert into deliveryadd(fname,lname,phone,addressEmail,userEmail,street,city,pincode,deliveryBoy,deliveryBoyWork)values('"+request.getParameter("fName")+"','"+request.getParameter("lName")+"','"+request.getParameter("pNumber")+"','"+request.getParameter("email")+"','"+session.getValue("username")+"','"+request.getParameter("street")+"','"+request.getParameter("city")+"','"+request.getParameter("pincode")+"','"+deliveryBoy+"','"+deliveryBoyWork+"')");

}
catch(Exception e)
{
  out.println(e.getMessage());
}



%>


<%


    
String driver2 = "com.mysql.jdbc.Driver";
String connectionUrl2 = "jdbc:mysql://localhost:3306/";
String database2 = "groceryshop";
String userid2 = "root";
String password2 = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection2 = null;
Statement statement2 = null;
ResultSet resultSet2 = null;

try{
    
connection2 = DriverManager.getConnection(connectionUrl2+database2, userid2, password2);
statement2=connection2.createStatement();
String sql1 ="select * from cartdetails";
resultSet = statement2.executeQuery(sql1);
while(resultSet.next())
{
    if(resultSet.getString("userEmail").equals(session.getValue("username")))
    {
       String pName = resultSet.getString("productName");
       String pPrice = resultSet.getString("productPrice"); 
       String shopEmail = resultSet.getString("shopEmail");
       String shopName = resultSet.getString("shopName");
       String shopAddress = resultSet.getString("shopAddress");
       String quantity = resultSet.getString("quantity");
       String pImage = resultSet.getString("productImage");
       
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop", "root", "");
        Statement st1=conn1.createStatement();
        int i=st1.executeUpdate("insert into ordersdetails(productName,productPrice,quantity,userEmail,shopEmail,shopName,shopAddress,status,productImage)values('"+pName+"','"+pPrice+"','"+quantity+"','"+session.getValue("username")+"','"+shopEmail+"','"+shopName+"','"+shopAddress+"','Shipped','"+pImage+"')");

        
                                                
                                                try {
                                                Class.forName(driver);
                                                } catch (ClassNotFoundException e) {
                                                e.printStackTrace();
                                                }
                                                Connection connection6 = null;
                                                Statement statement6 = null;
                                                ResultSet resultSet6 = null;

                                                try{

                                                connection6 = DriverManager.getConnection(connectionUrl+database, userid, password);
                                                statement6=connection6.createStatement();
                                                String sql6 ="select * from productsdetails";
                                                resultSet6 = statement6.executeQuery(sql6);
                                                while(resultSet6.next())
                                                {
                                                    if(resultSet6.getString("shopEmail").equals(shopEmail))
                                                    {
                                                        if(resultSet6.getString("productName").equals(pName))
                                                        {
                                                             if(resultSet6.getString("productPrice").equals(pPrice))
                                                                {
                                                                    String qua = resultSet6.getString("stock");
                                                                    int editQuantity = Integer.parseInt(qua) - Integer.parseInt(quantity);
                                                                    
                                                                    String pID = resultSet6.getString("productID");
                                                                    
                                                                     Class.forName("com.mysql.jdbc.Driver");
                                                                        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","");
                                                                        Statement st= con.createStatement();
                                                                        String update = "UPDATE productsdetails SET  stock = '"+editQuantity+"' WHERE productID = "+pID;
                                                                        st.executeUpdate(update);
                                                                }
                                                        }
                                                    }
                                                }
                                                connection.close();
                                                } catch (Exception e)
                                                {
                                                out.println("An exception occurred: " + e.getMessage());
                                                }
        
       
        
        String sqlDelete = "DELETE FROM cartdetails WHERE productID ="+resultSet.getString("productID");
        st1.executeUpdate(sqlDelete);  
    }
}
response.sendRedirect("pages.jsp");
connection.close();
} catch (Exception e)
{
out.println("An exception occurred: " + e.getMessage());
}

%>

