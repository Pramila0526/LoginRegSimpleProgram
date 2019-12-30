<%@page import="java.sql.*"%>
<%
	String connectionUrl ="jdbc:mysql://localhost:3306/employee";
	String userId = "root";
	String password = "root";
	String driver = "com.mysql.jdbc.Driver";

	try {
		Class.forName(driver);
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}

	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>
	<tr>
		<td><h3 style="color: rebeccapurple;">Hi Welcome,Successfully Logged In</h3></td>
	</tr>
	
	<h2 align="center">
		<font><strong>Details of Users</strong></font>
	</h2>
	<table align="center" cellpadding="5" cellspacing="5" border="1">
		<tr>
	
		</tr>
		<tr bgcolor=slategray>
	
			<td><b>username</b></td>
			<td><b>Name</b></td>
	
		</tr>
		<%
			try {
				connection = DriverManager.getConnection(connectionUrl, userId, password);
				statement = connection.createStatement();
				String sql = "SELECT * FROM customer";
	
				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
		%>
		<tr bgcolor=salmon>
			<td><%=resultSet.getString("username")%></td>
			<td><%=resultSet.getString("name")%></td>
		</tr>
		<%
			}
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>
	
	
	<tr>
	<%
response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
%>
		<td><a href="loginMain.jsp"><input type="submit" name="Submit"
				value="Logout"></a></td>
	</tr>
	
