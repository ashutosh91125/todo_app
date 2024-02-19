<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%@include file="./base.jsp"%>

<title>Create Todo</title>
</head>
<body>
	<div class="container mt-5">
		<h3 class="text-center">Create Todo</h3>
		<div>
			<br> <a href="${pageContext.request.contextPath }/"><i
				class="fa-solid fa-circle-chevron-left fa-xl"
				style="color: #63E6BE;"></i></a> <br>
		</div>
		<form mt-5 action="createTodo" method="post">
			<div class="form-group">
				<label for="exampleFormControlTextarea1">Task</label>
				<textarea class="form-control" name="task"
					id="exampleFormControlTextarea1" rows="3"></textarea>
			</div>
			<div class="form-group">
				<label for="date">Date</label> <input type="date" id="date"
					name="taskdate" placeholder="Enter Task Date" class="form-control">
			</div>

			<div class="form-group">
				<label for="from">From</label> <input type="time" id="from"
					name="time" class="form-control">
			</div>

			<div class="form-group">
				<label for="To">To</label> <input type="time" id="to" name="totime"
					class="form-control">
			</div>
			<div class="form-group">
				<label for="status">Status</label> <select class="form-control"
					id="status" name="status">
					<option>--Select--</option>
					<option value="To-Do">To-Do</option>
					<option value="In-Progress">In-Progress</option>
					<option value="Done">Done</option>
				</select>
			</div>
			<div class="text-center">
				<button type="reset" class="btn btn-warning mb-2">Reset</button>
				<button type="submit" class="btn btn-primary mb-2">Save</button>
			</div>
		</form>

	</div>
</body>
</html>