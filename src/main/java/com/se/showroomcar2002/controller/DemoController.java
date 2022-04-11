package com.se.showroomcar2002.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.se.showroomcar2002.entity.Brand;
import com.se.showroomcar2002.service.BrandService;

@Controller
public class DemoController {

	@Autowired
	private BrandService brandService;

	@GetMapping("/demo")
	public String showListBrand(Model theModel) {
		List<Brand> theCustomers = brandService.getListBrand();
		theModel.addAttribute("customers", theCustomers);
		return "list-brand";
	}

}
