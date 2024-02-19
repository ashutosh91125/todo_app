<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.green-row {
	background-color: #12F377 !important; /* Bootstrap's success color */
}

.yellow-row {
	background-color: #EEEB3E !important; /* Bootstrap's success color */
}
</style>
</head>
<body>

	<div class="container mt-5 cnt">

		<h3 class="text-center">Todo App</h3>

		<div>

			<table border="1" class="table">
				<thead class="thead-dark">
				<tr class="table-primary">
					<th scope="col">ID</th>
					<th scope="col">Task Date</th>
					<th scope="col">From</th>
					<th scope="col">To</th>
					<th scope="col">Task</th>
					<th scope="col">Status</th>
					<th scope="col">Action</th>
				</tr>
				
				</thead>
				<tbody>
				<c:forEach var="todo" items="${todo}">
					<tr>
						<th scope="row"><c:out value="${todo.id}" /></th>
						<td><c:out value="${todo.taskdate}" /></td>
						<td><c:out value="${todo.time}" /></td>
						<td><c:out value="${todo.totime}" /></td>
						<td><c:out value="${todo.task}" /></td>
						<td class="text-center"><c:out value="${todo.status}" /></td>
						<td class="text-center"><a href="deleteTodo/${todo.id}"><i
								class="fas fa-trash text-danger icon" style="color: #74C0FC;"></i></a>
							&nbsp;&nbsp;<a href="updateTodo/${todo.id}"><i
								class="fas fa-pen-nib text-primary fa-lg icon" style="color: #74C0FC;"></i></a>
						</td>
					</tr>
				</c:forEach>
				
				</tbody>
			</table>
			<script>
				// Function to change row color based on the status
				function changeRowColor() {
					var rows = document.querySelectorAll("tbody tr");
					rows.forEach(function(row) {
						var statusCell = row.cells[row.cells.length - 2]; // Get the cell containing the status
						var statusValue = statusCell.textContent.trim(); // Get the status value
						if (statusValue === "Done") {
							row.classList.add("green-row"); // Add the green-row class to the row
						}
						
						else if(statusValue==="In-Progress"){
							row.classList.add("yellow-row");
						}
					});
				}

				// Call the function when the page loads
				window.onload = function() {
					changeRowColor();
				};
			</script>
		</div>




		<div class="text-center">
			<a class="btn btn-outline-success" href="create">Create Todo</a>
		</div>

	</div>




</body>
</html>