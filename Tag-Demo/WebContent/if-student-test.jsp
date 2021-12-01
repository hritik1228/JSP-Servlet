<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import ="java.util.*,com.hr.jsp.tagdemo.Student" %>

<%

	// just create some ssample data... normally provided by MVC

	List<Student> data =new ArrayList<>();
	
	data.add(new Student("Hritik","Kumar",true));
	data.add(new Student("Rahul","Kumar",false));
	data.add(new Student("Priya","Angel",true));
	
	pageContext.setAttribute("myStudents", data);

%>

<html>

<body>
		
	<table border="1">
	
	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gold Customer</th>
		<th>Gold Customer/False</th>
		<th>Gold Customer/True</th>
	</tr>
	
	<c:forEach var="tempStudent" items="${myStudents }">
		<tr>
			<td>${tempStudent.firstName }</td>
			<td>${tempStudent.lastName }</td>
			<td>${tempStudent.goldCustomer }</td>
			<td>
				<c:if test="${not tempStudent.goldCustomer }">
					Special Discount
				</c:if>
			</td>
			
			<td>
				<c:if test="${tempStudent.goldCustomer }">
					Special Discount
				</c:if>
			</td>
			
		</tr>
		
	</c:forEach>
	</table>	

</body>

</html>