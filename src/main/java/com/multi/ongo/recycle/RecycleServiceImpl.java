package com.multi.ongo.recycle;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecycleServiceImpl implements RecycleService {
	RecycleDAO dao;

	@Autowired
	public RecycleServiceImpl(RecycleDAO dao) {
		super();
		this.dao = dao;
	}

	@Override
	public int write(RecycleDTO dto) {
		return dao.write(dto);
	}

	@Override
	public List<RecycleDTO> list(String receive_id) {
		return dao.list(receive_id);
	}

	@Override
	public RecycleDTO read(String no) {
		return dao.read(no);
	}
	
	
}
