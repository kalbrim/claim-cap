package com.cap.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.cap.entity.Hole;
import com.cap.entity.Player;
import com.cap.service.BBBService;

// notice the annotation, I have missed these before
// the method names do not seem to matter
// better understanding of model. methods
@Controller
public class GameController {
	
	// add autowired for serivce class
	@Autowired
	BBBService bbbservice;
	
	@GetMapping("/")
	public String welcome(Model model) {
		return "index";
	}
	
//	@GetMapping("/play")
//	public String showPlay(Model model) {
//		model.addAttribute("player", "player");
//		return "play";
//	}
	
	@GetMapping("/play")
	public ModelAndView showPlay(Model model) {
		return new ModelAndView("play", "hole", new Hole());
		
	}
	
	// need annotation
	@PostMapping("/play")
	public String completeHole(Model model, @ModelAttribute("hole") Hole hole, HttpSession session) {
		for (Player temp : bbbservice.getPlayerArrayList()) {
			if(temp.getName().toLowerCase().equals(hole.getFirstOnTheGreen().toLowerCase())) {
				temp.addBingo();
			}
			if(temp.getName().toLowerCase().equals(hole.getClosestToThePin().toLowerCase())) {
				temp.addBango();
			}
			if(temp.getName().toLowerCase().equals(hole.getFirstInTheHole().toLowerCase())) {
				temp.addBongo();
			}
		}
		return "play";
		
	}
	
	// post mapping when hoolllleee is complete
	// will be able to check thin in console
	// then add standings page
	// then try mysql spring mvc crud example java t point
	
	// below string since no real mess around
	
	@GetMapping("/player-options")
	public String showPlayerOptions(Model model) {
		return "player-options";
	}
	
	@GetMapping("/add-player")
	public ModelAndView showAddPlayer(Model model) {
		return new ModelAndView("add-player", "player", new Player());
	}
	
	@PostMapping("/add-player")
	public String addPlayer(Model model, @ModelAttribute("player") Player player, HttpSession session) {
		bbbservice.addPlayer(player);
		System.out.println(player);
		System.out.println(bbbservice.getPlayerArrayList().size());
		return "index";
		
		
	}
	
	@GetMapping("/delete-player")
	public ModelAndView showDeletePlayer(Model model) {
		return new ModelAndView("delete-player", "deadPlayer", new Player());
	}
	
	// maybe change player in model
	@PostMapping("/delete-player")
	public String deletePlayer(Model model, @ModelAttribute("deadPlayer") Player player, HttpSession session) {
		System.out.println(player);
//		bbbservice.deletePlayer(player);
		
		// string to pass to service
		String nameToDelete = player.getName();
		
		System.out.println(nameToDelete);
		
		bbbservice.deletePlayer(nameToDelete);
		System.out.println();
		System.out.println("# after delete:");
		System.out.println(bbbservice.getPlayerArrayList().size());
		return "index";
	}
	
	@GetMapping("/scores")
	public String showScores(Model model) {
		model.addAttribute("playersArrayList", bbbservice.getPlayerArrayList());
		return "scores";
		}
	
	
	

}
