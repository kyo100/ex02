package com.example.web;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.domain.AddressVO;
import com.example.domain.MemberVO;
import com.example.persistence.AddressDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/**/*.xml" })

public class DBTest2 {
	@Inject
	private AddressDAO dao;
	
	@Test
	public void list(){
		dao.list();	
	}
	@Test
	public void insert(){
		AddressVO vo=new AddressVO();
		vo.setName("춘향이");
		vo.setTel("010-0123-1234");
		vo.setAddress("인천 부평구");
		dao.insert(vo);
	}
	@Test
	public void delete(){
		dao.delete(4);
	}
	@Test
	public void read(){
		dao.read(3);
	}
	
	@Test
	public void update(){
		AddressVO vo=new AddressVO();
		vo.setId(5);
		vo.setName("춘향2");
		vo.setTel("010-1234-0121");
		vo.setAddress("서울 용산");
		dao.update(vo);	
	}
}
