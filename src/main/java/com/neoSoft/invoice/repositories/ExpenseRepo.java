package com.neoSoft.invoice.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.neoSoft.invoice.models.Expense;


@Repository
public interface ExpenseRepo extends JpaRepository<Expense, Integer>{

	
	
}
