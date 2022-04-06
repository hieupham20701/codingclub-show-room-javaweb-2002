package com.se.showroomcar2002.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.se.showroomcar2002.dao.BrandDAO;
import com.se.showroomcar2002.entity.Brand;

@Service
public class BrandServiceImpl implements BrandService {

	@Autowired
	private BrandDAO brandDAO;

	@Override
	public List<Brand> getListBrand() {

		return brandDAO.getListBrand();
	}

}
