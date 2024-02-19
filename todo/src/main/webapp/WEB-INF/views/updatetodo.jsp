<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@include file="./base.jsp"%>

<title>Update Todo</title>
</head>
<body>
	<div class="container mt-5">

		<h3 class="text-center">Update Todo</h3>
		<div>

			<a href="${pageContext.request.contextPath }/"><i
				class="fa-solid fa-circle-chevron-left icon fa-xl"
				style="color: #63E6BE;"></i></a> <br>
		</div>

		<form mt-5 action="${pageContext.request.contextPath }/createTodo"
			method="post">
			<div class="form-group">
				<label for="id">ID</label> <input type="text" id="id" readonly
					value="${todo.id }" name="id" placeholder="id" class="form-control">
			</div>
			<div class="form-group">
				<label for="task">Task</label>
				<textarea class="form-control" name="task" id="task" rows="3">${todo.task }</textarea>
			</div>
			<div class="form-group">
				<label for="date">Date</label> <input type="date" id="date"
					value="${todo.taskdate }" name="taskdate"
					placeholder="Enter Task Date" class="form-control">
			</div>

			<div class="form-group">
				<label for="from">From</label> <input type="time" id="from"
					value="${todo.time }" name="time" class="form-control">
			</div>

			<div class="form-group">
				<label for="To">To</label> <input type="time" id="to" name="totime"
					value="${todo.totime }" class="form-control">
			</div>
			<div class="form-group">
				<label for="status">Status</label> <select class="form-control"
					id="status" name="status">
					<option value="">--Select--</option>
					<option value="To-Do" ${todo.status == 'To-Do' ? 'selected' : ''}>To-Do</option>
					<option value="In-Progress"
						${todo.status == 'In-Progress' ? 'selected' : ''}>In-Progress</option>
					<option value="Done" ${todo.status == 'Done' ? 'selected' : ''}>Done</option>
				</select>
			</div>
	</div>
	<div class="text-center">

		<button type="submit" class="btn btn-primary mb-2">Update</button>
	</div>
	</form>

	</div>
</body>
</html>