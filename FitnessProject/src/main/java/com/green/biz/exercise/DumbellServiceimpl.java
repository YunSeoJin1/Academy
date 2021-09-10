package com.green.biz.exercise;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.green.biz.dao.DumbellDAO;
import com.green.biz.dto.DumbellVO;
import com.green.biz.util.Criteria;

public class DumbellServiceimpl implements DumbellService {
	
	@Autowired
	private DumbellDAO dDao;
	
	@Override
	public List<DumbellVO> getDumbellList(String dex_name) {
		
		return dDao.getDumbellList(dex_name);
	}

	
	@Override
	public int countexerciseList(String name) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public List<DumbellVO> getListWithPaging(Criteria criteria, String key) {
		// TODO Auto-generated method stub
		return null;
	}



	
}
