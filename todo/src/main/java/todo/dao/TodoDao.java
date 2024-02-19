package todo.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import todo.model.Todo;


@Repository
public class TodoDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	
	@Transactional
	public void createTodo(Todo todo) {
		this.hibernateTemplate.saveOrUpdate(todo);
	}
	
	public List<Todo> getAllTodo() {
		List<Todo> todo = this.hibernateTemplate.loadAll(Todo.class);
		return todo;
	}
	
	@Transactional
	public void deleteTodo(int id) {
		
		Todo todo = this.hibernateTemplate.load(Todo.class,id);
		
		this.hibernateTemplate.delete(todo);
	}
	
	public Todo getTodoById(int id) {
		return this.hibernateTemplate.get(Todo.class, id);
	}
}
