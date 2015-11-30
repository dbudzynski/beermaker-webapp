package com.beermakerbrewery.beermakerwebapp.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Service;

import com.beermakerbrewery.beermakerwebapp.entity.Recipe;
import com.beermakerbrewery.beermakerwebapp.entity.RecipeItem;
import com.beermakerbrewery.beermakerwebapp.repository.RecipeItemRepository;
import com.beermakerbrewery.beermakerwebapp.repository.RecipeRepository;

@Service
public class RecipeService {
	
	@Autowired
	private RecipeRepository recipeRepository;
	
	@Autowired
	private RecipeItemRepository recipeItemRepository;
	
	public List<Recipe> findAll() {
		Page<Recipe> page = recipeRepository.findAll(new PageRequest(0, 10, Direction.ASC, "name"));
		return page.getContent();
		
	}
	@Transactional
	public List<Recipe> findAllWithDetails() {
		List<Recipe> recipes =  findAll();
			for(Recipe recipe : recipes){
				List<RecipeItem> recipeItems = recipeItemRepository.findByRecipe(recipe);
				recipe.setRecipeItems(recipeItems);
			}			
		return recipes;
	}

	public Recipe findOne(int id) {
		return recipeRepository.findOne(id);
	}
	
	@Transactional
	public Recipe findOneWithDetails(int id) {
			Recipe recipe = findOne(id);
				List<RecipeItem> recipeItems = recipeItemRepository.findByRecipe(recipe);
				recipe.setRecipeItems(recipeItems);
		return recipe;
	}
}
