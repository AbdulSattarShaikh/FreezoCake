package com.neoSoft.invoice.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.neoSoft.invoice.models.Income;

@Repository
public interface IncomeRepo extends JpaRepository<Income, Integer> {	
	
}
