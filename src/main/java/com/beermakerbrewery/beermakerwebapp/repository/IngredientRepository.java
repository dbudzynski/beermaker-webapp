package com.beermakerbrewery.beermakerwebapp.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.beermakerbrewery.beermakerwebapp.entity.Ingredient;
import com.beermakerbrewery.beermakerwebapp.entity.RecipeItem;

public interface IngredientRepository extends JpaRepository<Ingredient, Integer>{
	
	List<Ingredient> findByRecipeItems(RecipeItem recipeItem);
	

}
