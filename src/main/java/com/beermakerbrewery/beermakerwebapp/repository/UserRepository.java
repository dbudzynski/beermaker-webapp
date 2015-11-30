package com.beermakerbrewery.beermakerwebapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.beermakerbrewery.beermakerwebapp.entity.User;

public interface UserRepository extends JpaRepository<User, Integer>{

}
