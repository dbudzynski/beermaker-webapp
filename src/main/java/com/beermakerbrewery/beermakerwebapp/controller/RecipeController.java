package com.beermakerbrewery.beermakerwebapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beermakerbrewery.beermakerwebapp.service.RecipeService;

@Controller
public class RecipeController {
	@Autowired
	private RecipeService recipeService;
	
	@RequestMapping("/recipes")
	public String recipes(Model model) {
		model.addAttribute("recipes", recipeService.findAll());
		return "recipes";
	}
	
	@RequestMapping("/recipes/{id}")
	public String recipeDetails(Model model, @PathVariable int id) {
		model.addAttribute("recipeDetails", recipeService.findOneWithDetails(id));
		return "recipe-details";
	}
	
	
	
}
