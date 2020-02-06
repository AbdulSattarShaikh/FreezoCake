package com.neoSoft.invoice.models;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Income {

	@Id
	@GeneratedValue
	private Integer id;

	@Enumerated(EnumType.STRING)
	private Income_type incomeType;

	private double amount;

	private String product;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Income_type getIncomeType() {
		return incomeType;
	}

	public void setIncomeType(Income_type incomeType) {
		this.incomeType = incomeType;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

}
