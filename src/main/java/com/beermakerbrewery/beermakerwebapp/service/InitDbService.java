package com.beermakerbrewery.beermakerwebapp.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.beermakerbrewery.beermakerwebapp.entity.Ingredient;
//import com.beermakerbrewery.beermakerwebapp.entity.Blog;
//import com.beermakerbrewery.beermakerwebapp.entity.Item;
import com.beermakerbrewery.beermakerwebapp.entity.Recipe;
import com.beermakerbrewery.beermakerwebapp.entity.RecipeItem;
import com.beermakerbrewery.beermakerwebapp.entity.Role;
import com.beermakerbrewery.beermakerwebapp.entity.User;
//import com.beermakerbrewery.beermakerwebapp.repository.BlogRepository;
//import com.beermakerbrewery.beermakerwebapp.repository.ItemRepository;
import com.beermakerbrewery.beermakerwebapp.repository.IngredientRepository;
import com.beermakerbrewery.beermakerwebapp.repository.RecipeItemRepository;
import com.beermakerbrewery.beermakerwebapp.repository.RecipeRepository;
import com.beermakerbrewery.beermakerwebapp.repository.RoleRepository;
import com.beermakerbrewery.beermakerwebapp.repository.UserRepository;

@Transactional
@Service
public class InitDbService {
	
	@Autowired
	private RoleRepository roleRepository;
	
	@Autowired
	private UserRepository userRepository;

	@Autowired
	private RecipeRepository recipeRepository;
	
	@Autowired
	private IngredientRepository ingredientRepository;
	
	@Autowired
	private RecipeItemRepository recipeItemRepository;
	
	@PostConstruct
	public void init(){
		Role roleUser = new Role();
		roleUser.setName("ROLE_USER");
		roleRepository.save(roleUser);
		
		Role roleAdmin = new Role();
		roleAdmin.setName("ROLE_ADMIN");
		roleRepository.save(roleAdmin);
		
		User userAdmin = new User();
		userAdmin.setName("admin");
		List<Role> roles = new ArrayList<Role>();
		roles.add(roleAdmin);
		roles.add(roleUser);
		userAdmin.setRoles(roles);
		userRepository.save(userAdmin);
		
		User userTest = new User();
		userTest.setName("testuser");
		List<Role> roles1 = new ArrayList<Role>();
		roles1.add(roleUser);
		userTest.setRoles(roles1);
		userRepository.save(userTest);
		
/*		Blog blogJavavids = new Blog();
		blogJavavids.setName("JavaVids");
		blogJavavids.setUrl("http://feeds.feedburner.com/javavids?format=xml");
		blogJavavids.setUser(userAdmin);
		blogRepository.save(blogJavavids);
		
		Item item1 = new Item();
		item1.setBlog(blogJavavids);
		item1.setTitle("first");
		item1.setLink("http://www.javavids.com");
		item1.setPublishedDate(new Date());
		itemRepository.save(item1);
		
		Item item2 = new Item();
		item2.setBlog(blogJavavids);
		item2.setTitle("second");
		item2.setLink("http://www.javavids.com");
		item2.setPublishedDate(new Date());
		itemRepository.save(item2);
*/		

		
		Ingredient ingredient = new Ingredient();
		ingredient.setName("S³od Jêczmienny");
		ingredientRepository.save(ingredient);
		
		Ingredient ingredient1 = new Ingredient();
		ingredient1.setName("S³od Karmelowy");
		ingredientRepository.save(ingredient1);
		
		Ingredient ingredient2 = new Ingredient();
		ingredient2.setName("Chmiel Marynka");
		ingredientRepository.save(ingredient2);
		
		Ingredient ingredient3 = new Ingredient();
		ingredient3.setName("Chmiel Citra");
		ingredientRepository.save(ingredient3);
		
		Recipe recipe = new Recipe();
		recipe.setName("¯ywiec APA");
		recipe.setDescription("Swój aromat i smak zawdziêcza zastosowaniu piêciu odmian chmielu oraz warzeniu w otwartych kadziach. Piwo to smakuje najlepiej, podawane w temperaturze 9-11 stopni Celsjusza.");
		recipe.setStyle("American Pale Ale");
		recipe.setImageName("image1");
		recipe.setImageExtension("png");
		RecipeItem recipeItem = new RecipeItem();
		recipeItem.setIngredient(ingredient);
		recipeItem.setQuantity(10.00);
		
		RecipeItem recipeItem1 = new RecipeItem();
		recipeItem1.setIngredient(ingredient2);
		recipeItem1.setQuantity(15.00);
		
//		List<RecipeItem> recipeItems = new ArrayList<RecipeItem>();
//		recipeItems.add(recipeItem);
//		recipeItems.add(recipeItem1);
//		recipe.setRecipeItems(recipeItems);
		
		
		Recipe recipe1 = new Recipe();
		recipe1.setName("Jakiœ KoŸlak");
		recipe1.setDescription("KoŸlak (niem. Bock) znany jest od XVI w. Swój rodowód wywodzi z dolnosaksoñskiego miasta Einbeck, gdzie od XIII w. warzono mocne piwo Starkbier. By³o ono wówczas piwem górnej fermentacji eksportowanym do wielu pañstw.");
		recipe1.setStyle("Bock");
		recipe1.setImageName("image2");
		recipe1.setImageExtension("png");
		
		RecipeItem recipeItem2 = new RecipeItem();
		recipeItem2.setIngredient(ingredient1);
		recipeItem2.setQuantity(20.00);
		
		

		
		RecipeItem recipeItem3 = new RecipeItem();
		recipeItem3.setIngredient(ingredient3);
		recipeItem3.setQuantity(25.00);
		
		
//		List<RecipeItem> recipeItems1 = new ArrayList<RecipeItem>();
//		recipeItems1.add(recipeItem2);
//		recipeItems1.add(recipeItem3);
//		recipe1.setRecipeItems(recipeItems1);

		recipeRepository.save(recipe);
		recipeRepository.save(recipe1);
		recipeItem.setRecipe(recipe);
		recipeItem1.setRecipe(recipe);
		recipeItem2.setRecipe(recipe1);
		recipeItem3.setRecipe(recipe1);
		recipeItemRepository.save(recipeItem);
		recipeItemRepository.save(recipeItem1);
		recipeItemRepository.save(recipeItem2);
		recipeItemRepository.save(recipeItem3);
		
		
		
	}
	

}
