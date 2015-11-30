package com.beermakerbrewery.beermakerwebapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.beermakerbrewery.beermakerwebapp.entity.Role;

public interface RoleRepository extends JpaRepository<Role, Integer>{

}
