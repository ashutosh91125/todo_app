package todo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

import todo.dao.TodoDao;
import todo.model.Todo;

@Controller
public class MainController {
	
	@Autowired
	private TodoDao todoDao;

	@RequestMapping("/")
	public String home(Model m) {
		
		List<Todo> todo = todoDao.getAllTodo();
		
		m.addAttribute("todo", todo);
		
		return "index";
	}
	
	@RequestMapping("/create")
	public String createButton() {
		return "create";
	}
	
	
	@PostMapping("/createTodo")
	public RedirectView createTodo(@ModelAttribute("todo") Todo todo, Model m, HttpServletRequest request) {
		
		RedirectView redirectView = new RedirectView();
         
		this.todoDao.createTodo(todo);
		redirectView.setUrl(request.getContextPath()+"/");
		return redirectView;
	}
	
	
	@RequestMapping("/deleteTodo/{id}")
	public RedirectView deleteTodo(@PathVariable("id") int id, HttpServletRequest request) {
		
		this.todoDao.deleteTodo(id);
		
		RedirectView redirectView = new RedirectView();
		
		redirectView.setUrl(request.getContextPath()+"/");
		
		return redirectView;
		
	}
	
	@RequestMapping("/updateTodo/{id}")
	public String updateTodo(Model m,@PathVariable("id") int id) {
		
		Todo todo = this.todoDao.getTodoById(id);
		
		m.addAttribute("todo", todo);
		
		return "updatetodo";
	}
	
	
	
}
