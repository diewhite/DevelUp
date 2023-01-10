package com.multi.ongo.auction;

import java.util.List;

public interface AuctionBoard_DAO {
	
	
	//�߰�ŷ����
	public int writeProd(AuctionBoard_DTO dto);
	 
	//�߰�ŷ� ��ü��ȸ
	public List<AuctionBoard_DTO> boardlist();
	
	//�߰�ŷ� �Խñ��б�
	public AuctionBoard_DTO dealRead(int deal_number);

	
	//�߰�ŷ� �Խñ� ������Ʈ(����)
	int update(AuctionBoard_DTO dto);
	
	
	//�߰�ŷ� �Խñ� ����
	int dealDelete(String member_id);
	
	//�ϴܰ˻�
		List<DealBoard_DTO> searchData(String tag, String searchData);
		
	//�߰�ŷ� �ŷ����м���
	public List<DealBoard_DTO> dealType_list(String dealType);	
