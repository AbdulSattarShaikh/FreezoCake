package com.neoSoft.invoice.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Expense {

	@Id
	@GeneratedValue
	private Integer id;

	private Double expense_amount;
	
	private String reason;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Double getExpense_amount() {
		return expense_amount;
	}

	public void setExpense_amount(Double expense_amount) {
		this.expense_amount = expense_amount;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}
	
}
