<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h3>Fill in the Form</h3>
	<form action="/loginAA.do" method="POST">
			<table>

				<tr>
					<td>Full Name:</td> 
					<td><input type="text" name="name" /></td>
				</tr>

				<tr>
					<td>Phone Number:</td>
					<td><input type="text" name="phone" /></td>
				</tr>
				<tr>
					<td>Gender:</td>
					<td><input type="radio" name="gender" value="male" />Male <input
						type="radio" name="gender" value="female" />Female</td>
				</tr>
				<tr>
					<td>Select Programming Languages to learn:</td>
					<td><input type="checkbox" name="language" value="java" />Java
						<input type="checkbox" name="language" value="python" />Python <input
						type="checkbox" name="language" value="sql" />SQL <input
						type="checkbox" name="language" value="php" />PHP</td>
				</tr>
				<tr>
					<td>Select Course duration:</td>
					<td><select name="duration">
							<option value="3months">3 Months</option>
							<option value="6months">6 Months</option>
							<option value="9months">9 Months</option>
					</select></td>
				</tr>
				<tr>
					<td>Anything else you want to share:</td>
					<td><textarea rows="5" cols="40" name="comment"></textarea></td>
				</tr>

			</table>

			<input type="submit" value="Submit Details">

		</form>
</body>
</html>