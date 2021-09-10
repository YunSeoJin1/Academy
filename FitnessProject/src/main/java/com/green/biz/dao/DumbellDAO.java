package com.green.biz.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.green.biz.dto.DumbellVO;
import com.green.biz.util.Criteria;

@Repository
public class DumbellDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<DumbellVO> getDumbellList(String dex_name){
		
		return mybatis.selectList("DumbellDAO.listdumbellexercise",dex_name);
	}
	
	public List<DumbellVO> getListWithPaging(Criteria criteria, String key) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("criteria", criteria);
		map.put("key", key);
		
		return mybatis.selectList("ProductDAO.listWithPaging", map);
	}
}
