package com.skilldistillery.computers.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.computers.data.ComputerDAO;
import com.skilldistillery.computers.entities.Computer;

@Controller
public class ComputerController {
	
	@Autowired
	private ComputerDAO dao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String index(Model model) {
		model.addAttribute("computer", dao.findById(1));
		return "index";
	}
	
	@RequestMapping(path = "results.do",
					params="id")
	public String results(int id, Model model) {
		List<Computer> compList = new ArrayList<>();
		compList.add(dao.findById(id));
		model.addAttribute("computers", compList);
		return "results";
	}
	
	@RequestMapping(path="listAll.do")
	public String results(Model model) {
		List<Computer> compList = dao.findAll();
		model.addAttribute("computers", compList);
		return "results";
	}
	
	
	//create jsp for success or failure to delete
	@RequestMapping(path="deleteComputer.do",
					params="id")
	public String deleteResults(int id, RedirectAttributes redir) {
		boolean delete = dao.destroy(id);
		boolean deletedFlag = true;
		redir.addFlashAttribute("deletedFlag", deletedFlag);
		redir.addFlashAttribute("computerDeleted", delete);
		return "redirect:modified.do";
	}
	
	//create jsp form for updating
	@RequestMapping(path="editComputer.do")
	public String update(int id, Model model) {
		Computer updateComputer = dao.findById(id);
		System.out.println(updateComputer + "----------------------FIRST TEST----------------------");
		model.addAttribute("computer", updateComputer);
		return "update";
	}
	
	@RequestMapping(path="editedComputer.do",
					method=RequestMethod.POST)
	public String editedComputer(RedirectAttributes redir, Computer computer) {
		boolean editedFlag = true;
		boolean computerEdited = true;
		System.out.println(computer + "-----------TEST------------");
		dao.update(computer);
		redir.addFlashAttribute("editedFlag", editedFlag);
		redir.addFlashAttribute("computerEdited", computerEdited);
		return "redirect:modified.do";
		
	}
	
	@RequestMapping(path="create.do") 
	public String create() {
		return "create";
		
	}
	
	@RequestMapping(path="createComputer.do",
					method=RequestMethod.POST)
	public String created(RedirectAttributes redir, Computer computer) {
		Computer comp = dao.create(computer);
		boolean computerCreated = comp.getId() > 0 ? true : false;
		boolean createdFlag = true;
		redir.addFlashAttribute("computerCreated", computerCreated);
		redir.addFlashAttribute("createdFlag", createdFlag);
		return "redirect:modified.do";
	}
	
	@RequestMapping(path="modified.do")
	public String modified() {
		return "modified";
	}

}
