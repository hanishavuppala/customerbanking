package com.ucm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ucm.beans.BankUser;
import com.ucm.service.BankingService;

@Controller
public class BankingController
{
	@Autowired
	BankingService bankingService;
	
    @RequestMapping(value="/", method = RequestMethod.GET)
    public String sayHello(@ModelAttribute("BankUser") BankUser bankUser,Model model) {
        return "welcome";
    }
 
    @RequestMapping(value="/searchAccount", method = RequestMethod.POST)
    public String searchAccount(@ModelAttribute("BankUser") BankUser bankUser,Model model) {
        BankUser userDetails = bankingService.searchAccount(bankUser);
        model.addAttribute("BankUser", userDetails);
        return "customerResult";
    }
}
