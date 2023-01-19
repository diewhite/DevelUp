package com.multi.ongo.recycle;

import java.util.List;

public interface RecycleDAO {
	//글 쓰기
	public int write(RecycleDTO dto);
	//글 리스트
	public List<RecycleDTO> list(String receive_id);
	//글 읽기
	public RecycleDTO read(String no);
}
