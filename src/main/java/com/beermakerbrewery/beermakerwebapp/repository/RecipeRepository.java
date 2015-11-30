package com.beermakerbrewery.beermakerwebapp.repository;



import org.springframework.data.jpa.repository.JpaRepository;

import com.beermakerbrewery.beermakerwebapp.entity.Recipe;

public interface RecipeRepository extends JpaRepository<Recipe, Integer>{
	

}
