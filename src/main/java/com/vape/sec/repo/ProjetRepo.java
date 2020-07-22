package com.vape.sec.repo;

import java.util.Collection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

 import com.vape.sec.model.Projet;
import org.springframework.data.jpa.repository.Query;

public interface   ProjetRepo extends JpaRepository<Projet,Long> {
	Collection<Projet> findByidUser(long id);

	List<Projet> findByEtat(String e);
	//List<Projet> findByIngenieur(String e);
	Projet findByIdProjet(long id);
	List<Projet> findByType(String e);

	@Query("select u from Projet u where  u.ingenieur= ?1 and  u.etat=?2  ")
	List<Projet> getPojectEnAttente(Long ing , String etat);

}
