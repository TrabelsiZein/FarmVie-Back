package com.vape.sec.repo;

import com.vape.sec.model.Actualite;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ActualiteRep extends JpaRepository<Actualite,Long> {

    List<Actualite> findByProjectIdAndIngId(Long projectId, Long ingId);
}
