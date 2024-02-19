package todo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Todo {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	private String taskdate;
    private String time;
	private String totime;
	private String task;
	private String status;
	
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getTask() {
		return task;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setTask(String task) {
		this.task = task;
	}
	public String getTaskdate() {
		return taskdate;
	}
	public void setTaskdate(String taskdate) {
		this.taskdate = taskdate;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}

	
	public String getTotime() {
		return totime;
	}
	public void setTotime(String totime) {
		this.totime = totime;
	}

	@Override
	public String toString() {
		return "Todo [id=" + id + ", taskdate=" + taskdate + ", time=" + time + ", totime=" + totime + ", task=" + task
				+ ", status=" + status + "]";
	}
	
	
	
	
	
	
	
	
}
