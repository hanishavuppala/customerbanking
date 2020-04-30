package com.ucm.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ucm.beans.BankUser;
import com.ucm.service.BankingService;

@RequestMapping(value = "/")
@Controller
public class BankingController {
	@Autowired
	BankingService bankingService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String sayHello(@ModelAttribute("BankUser") BankUser bankUser, Model model) {
		return "welcome";
	}

	@RequestMapping(value = "/searchAccount", method = RequestMethod.POST)
	public String searchAccount(@Valid @ModelAttribute("BankUser") BankUser bankUser, BindingResult binding, Model model) {
		if (binding.hasErrors()) {
			return "welcome";
		} else {
			boolean isValidAccount = bankingService.isValidAccount(bankUser.getAccountNumber());
			if(isValidAccount) {
				BankUser userDetails = bankingService.searchAccount(bankUser);
				model.addAttribute("BankUser", userDetails);
				return "customerResult";
			}else {
				binding.rejectValue("accountNumber", "error.user", "Not a valid account number");
				return "welcome";
			}
		}
	}

	@RequestMapping(value = "/back", method = RequestMethod.GET)
	public String back(@ModelAttribute("BankUser") BankUser bankUser, Model model) {
		return "welcome";
	}

	@RequestMapping(value = "/makeDeposit", method = RequestMethod.GET)
	public String makeDeposit(@ModelAttribute("BankUser") BankUser bankUser, Model model,
			@RequestParam("id") String accountNumber) {
		model.addAttribute("accountNumber", accountNumber);
		return "deposit";
	}

	@RequestMapping(value = "/makeWithdraw", method = RequestMethod.GET)
	public String withdraw(@ModelAttribute("BankUser") BankUser bankUser, Model model,
			@RequestParam("id") String accountNumber) {
		model.addAttribute("accountNumber", accountNumber);
		return "withdraw";
	}

	@RequestMapping(value = "/doDeposit", method = RequestMethod.POST)
	public String doDeposit(@ModelAttribute("BankUser") BankUser bankUser, Model model,
			@RequestParam("accountNumber") String accountNumber) {
		boolean isDeposited = bankingService.doDeposit(accountNumber, bankUser.getDepositAmount());
		if (isDeposited) {
			bankUser.setAccountNumber(accountNumber);
			BankUser updatedBankUser = bankingService.searchAccount(bankUser);
			model.addAttribute("updatedBalance", "Deposit Successfull current balance in your account is "
					+ updatedBankUser.getAccountBalance() + " USD");
		} else {
			model.addAttribute("updatedBalance", "ERROR OCCURED WHILE DEPOSITING PLEASE TRY AGAIN");
		}
		model.addAttribute("accountNumber", accountNumber);
		return "depositSuccess";
	}

	@RequestMapping(value = "/doWithDraw", method = RequestMethod.POST)
	public String doWithDraw(@ModelAttribute("BankUser") BankUser bankUser, Model model,
			@RequestParam("accountNumber") String accountNumber) {
		bankUser.setAccountNumber(accountNumber);
		BankUser bankUser1 = bankingService.searchAccount(bankUser);

		if (bankUser1.getAccountBalance() > bankUser.getWithdrawAmount()) {
			boolean isWithdrawn = bankingService.doWithdraw(accountNumber, bankUser.getWithdrawAmount(),
					bankUser1.getAccountBalance());
			if (isWithdrawn) {
				BankUser withdrawnBalance = bankingService.searchAccount(bankUser);
				model.addAttribute("withdrawn", "Withdrawal successfull current balance in account is "
						+ withdrawnBalance.getAccountBalance() + " USD");
			} else {
				model.addAttribute("withdrawn", "ERROR OCCURED WHILE WITHDRAWAL PLEASE TRY AGAIN");
			}
		} else {
			model.addAttribute("withdrawn", "INSUFFICIENT FUNDS IN YOUR ACCOUNT");
		}
		model.addAttribute("accountNumber", accountNumber);
		return "withdrawSuccess";
	}
}
