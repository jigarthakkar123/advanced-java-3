<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="js/validation.js">
</script>
<link href="css/style.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<h1 style="color: blue;">Student Registration System</h1>
<b style="color: red;">
<%
	if(request.getAttribute("msg")!=null)
	{
		out.println(request.getAttribute("msg"));
	}
%>
</b>
<form name="frm" method="post" action="StudentController">
	<table>
		<tr>
			<td>First Name</td>
			<td><input type="text" name="fname" onblur="checkFname();"></td>
			<td><span id="fname"></span></td>
		</tr>
		<tr>
			<td>Last Name</td>
			<td><input type="text" name="lname"></td>
		</tr>
		<tr>
			<td>Email</td>
			<td><input type="text" name="email" onblur="checkEmail();"></td>
			<td><span id="email"></span></td>
		</tr>
		<tr>
			<td>Mobile</td>
			<td><input type="text" name="mobile" onblur="checkMobile();"></td>
			<td><span id="mobile"></span></td>
		</tr>
		<tr>
			<td>Address</td>
			<td><input type="text" name="address"></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="text" name="password" onblur="checkPassword();"></td>
			<td><span id="password"></span></td>
		</tr>
		<tr>
			<td>Confirm Password</td>
			<td><input type="text" name="cpassword" onblur="checkCPassword();"></td>
			<td><span id="cpassword"></span></td>
		</tr>
		<tr>
			<td colspan="2" align="Center">
				<input type="submit" name="action" value="INSERT" class="a1">
			</td>
		</tr>
	</table>
</form>
<a href="show.jsp">Show All Student</a>
</body>
</html>