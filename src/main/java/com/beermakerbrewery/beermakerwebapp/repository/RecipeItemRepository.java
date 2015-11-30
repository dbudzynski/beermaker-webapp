package com.beermakerbrewery.beermakerwebapp.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.beermakerbrewery.beermakerwebapp.entity.Recipe;
import com.beermakerbrewery.beermakerwebapp.entity.RecipeItem;

public interface RecipeItemRepository extends JpaRepository<RecipeItem, Integer> {

	List<RecipeItem> findByRecipe(Recipe recipe);

}
