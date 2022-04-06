package com.se.showroomcar2002.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.se.showroomcar2002.entity.Brand;

@Repository
public class BrandDAOImpl implements BrandDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public List<Brand> getListBrand() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String query = "select * from brands order by name";
		List<Brand> brands = session.createNativeQuery(query, Brand.class).getResultList();

		return brands;
	}

}
