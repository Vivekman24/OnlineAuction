<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1" import="samplePackage.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%
	
	if (session.getAttribute("user") == null) {
    response.sendRedirect("Login.jsp");
    return;
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Verify Update Item</title>
</head>
<body>
 
 	 <%
		
 		ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();	
		
		Statement stmt = con.createStatement();
					
		try {
		
			String catID = request.getParameter("catID");
			String subID = request.getParameter("subID");
			String itemID = request.getParameter("itemID");
			String name = request.getParameter("name");
			String type = request.getParameter("type");
			String year = request.getParameter("year");
			String desc1 = request.getParameter("desc1");
			String desc2 = request.getParameter("desc2");
			String desc3 = request.getParameter("desc3");
			
			ResultSet rs = stmt.executeQuery("SELECT * FROM Item where addedBySellerInfo='" + session.getAttribute("user").toString()+ "' and catID='" + catID + "' and subID='" + subID+ "' and itemID='" + itemID+ "'");
			if(!rs.next()){
				out.println("Item not found. Enter correct Item IDs! <a href='UpdateItem.jsp'>Go back.</a>");
				return; 
			}

			
			String str = "UPDATE Item SET itemID=?, shortDescription=?, middleDescription=?, longDescription=?, name=?, type=?, year=?, catID=?, subID=?";
			PreparedStatement ps = con.prepareStatement(str);
			ps.setString(1, itemID);
			ps.setString(2, desc1);
			ps.setString(3, desc2);
			ps.setString(4, desc3);
			ps.setString(5, name);
			ps.setString(6, type);
			ps.setString(7, year);
			ps.setString(8, catID);
			ps.setString(9, subID);
			ps.executeUpdate();
			
			out.println("Item updated successfully! <a href='Items.jsp'>Go back to Items page.</a>");
			
		} catch (SQLException e) {
			out.println("Error while adding. Please try again. <a href='DeleteItem.jsp'>Try again.</a>");
		}
		finally {
			if (con != null) try { con.close(); } catch (SQLException ignore) {}
		}
	%>
        
</body>
</html>
