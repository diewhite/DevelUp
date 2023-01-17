package com.multi.ongo.deal;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class FileUpload_Service {
	//파일을 업로드한 후 이 정보를 DealFile_DTO로 변환해서 리턴
	//private int deal_number;
	public List<DealFile_DTO> uploadFiles(List<MultipartFile> multipartFiles, String path) throws IllegalStateException, IOException{
		List<DealFile_DTO> filedtolist = new ArrayList<DealFile_DTO>() ;
		
		//multipartFiles로 받은 것 하나씩 꺼내기
		for(MultipartFile multipartFile : multipartFiles) {
			if(!multipartFile.isEmpty()) {
				// 클라이언트가 업로드한 원래파일명
				String originalFilename = multipartFile.getOriginalFilename();
				System.out.println("originalFilename___체크 : " + originalFilename); //확인완료
						
				// 서버에서 식별할수 있도록 파일명을 변경 (uuid)
				String storeFilename = createStoreFileNmae(originalFilename);
				             
			    //서버(현재내pc)경로 + \(File.separator) + 파일명  
				//File객체를 실제경로에 저장 ( .transferTo(new File()사용)
				// transferTo(new File( ~~ )) : boundary 데이터를 파일로만들어줘~!
				multipartFile.transferTo(new File(path+File.separator+storeFilename));  //중복되지않도록 uuid로 만든 storeFilename으로 생성
				
				filedtolist.add(new DealFile_DTO(originalFilename, storeFilename)); //dto생성자 2개짜리 만들어야함
			}
		}
		return filedtolist;
	}
	
	
	// 클라이언트가 입력한 파일명을 중복되지 않고 식별할수 있도록 UUID사용 ( UUID란? 32자리 16진수로 표기 )
	private String createStoreFileNmae(String originalFilename) {
		//확장자명을 만들어주기위해추가
		int position = originalFilename.lastIndexOf(".");  // 확장자 . 위치   ex) dabc.jpeg
		String ext = originalFilename.substring(position+1);
		
		String uuid = UUID.randomUUID().toString();
		return uuid+"."+ext;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
