<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
response.setHeader("Cache-control","no-cache,no-store,must-revalidate");
%>
	<form Action="LoginRegistration" method="post">
		<table
			style="background-color: DarkSalmon; margin-left: 50px; margin-top: 50px">
			<tr>
				<td></td>
			</tr>
			<tr>
				<td><h3 style="color: rebeccapurple;">Hi
						Welcome,Successfully Logged In</h3></td>
			</tr>

		
			<tr>
				<td><a href="usersList.jsp">
						<button type="button" name="Submit">Show Table</button>
				</a></td>
			</tr>

			<tr>
		<td><a href="loginMain.jsp"><input type="submit" name="Submit"
				value="Logout"></a></td>
	</tr>
		</table>
	</form>
</body>
</html>