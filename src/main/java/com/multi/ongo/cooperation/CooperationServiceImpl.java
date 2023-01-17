package com.multi.ongo.cooperation;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CooperationServiceImpl implements CooperationService {
	CooperationDAO dao;

	@Autowired
	public CooperationServiceImpl(CooperationDAO dao) {
		super();
		this.dao = dao;
	}

	@Override
	public List<CooperationDTO> cooperList() {
		return dao.cooperList();
	}
	
	
}
