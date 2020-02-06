package com.neoSoft.invoice.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neoSoft.invoice.models.Expense;
import com.neoSoft.invoice.models.Income;
import com.neoSoft.invoice.models.Income_type;
import com.neoSoft.invoice.models.MaterialMaster;
import com.neoSoft.invoice.repositories.ExpenseRepo;
import com.neoSoft.invoice.repositories.IncomeRepo;
import com.neoSoft.invoice.repositories.MaterialRepo;

@Controller
@RequestMapping("/")
public class CakeController {

	@Autowired
	private IncomeRepo incomeRepo;

	@Autowired
	private ExpenseRepo expenseRepo;

	@Autowired
	private MaterialRepo materialRepo;

	@RequestMapping("home")
	public String home(Model model) {
		
		List<Income> incomeList = incomeRepo.findAll();
		
		
		Double cashSum = incomeList.stream().filter(x->x.getIncomeType().equals(Income_type.CASH)).mapToDouble(m -> m.getAmount()).sum();
		Double totalIncome = incomeList.stream().mapToDouble(m -> m.getAmount()).sum();			
		Double onlineSum = totalIncome - cashSum;	
		
		model.addAttribute("incomeList", incomeList);
		model.addAttribute("cashSum", cashSum);
		model.addAttribute("onlineSum", onlineSum);
		model.addAttribute("totalIncome", totalIncome);	
		
		List<Expense> expenseList = expenseRepo.findAll();
		
		Double totalExpense = expenseList.stream().mapToDouble(m -> m.getExpense_amount()).sum();
		model.addAttribute("totalExpense", totalExpense);

		return "home.jsp";
	}

	@RequestMapping("/income")
	public String saveIncome(Income income, Model model) {

		incomeRepo.save(income);

		List<Income> incomeList = incomeRepo.findAll();
		
		Double cashSum = incomeList.stream().filter(x->x.getIncomeType().equals(Income_type.CASH)).mapToDouble(m -> m.getAmount()).sum();
		Double totalIncome = incomeList.stream().mapToDouble(m -> m.getAmount()).sum();			
		Double onlineSum = totalIncome - cashSum;		

		model.addAttribute("incomeList", incomeList);
		model.addAttribute("cashSum", cashSum);
		model.addAttribute("onlineSum", onlineSum);
		model.addAttribute("totalIncome", totalIncome);		
		
		
		return "income.jsp";
	}

	@RequestMapping("/expense")
	public String saveExpense(Expense expense, Model model) {
		expenseRepo.save(expense);
		List<Expense> expenseList = expenseRepo.findAll();
		Double totalExpense = expenseList.stream().mapToDouble(m -> m.getExpense_amount()).sum();
		
		model.addAttribute("expenseList", expenseList);
		model.addAttribute("totalExpense", totalExpense);
		return "expense.jsp";
	}

	@RequestMapping("/material")
	public String saveMaterial(MaterialMaster material, Model model) {

		material.setAmount(material.getPrice() * material.getQuantity());
		materialRepo.save(material);
		List<MaterialMaster> materialList = materialRepo.findAll();
		model.addAttribute("materialList", materialList);

		return "material.jsp";
	}

}
