package com.neoSoft.invoice.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.neoSoft.invoice.models.MaterialMaster;

@Repository
public interface MaterialRepo extends JpaRepository<MaterialMaster, Integer> {

}
