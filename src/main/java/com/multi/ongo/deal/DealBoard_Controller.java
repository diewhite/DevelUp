package com.multi.ongo.deal;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

@Controller
public class DealBoard_Controller {

	DealBoard_Service service;
	FileUpload_Service fileUploadService; 
	
	@Autowired
	public DealBoard_Controller(DealBoard_Service service, FileUpload_Service fileUploadService) {
		super();
		this.service = service;
		this.fileUploadService=fileUploadService;
	}
	//중고거래 등록페이지 config-view처리  
	
	
	
	
	
	
	
	//첨부파일 다운로드  ( @PathVariable ; path에서 변수로 쓰겠다)
	@RequestMapping("dealDownload/{member_id}/{deal_number}/{dealFile_number}")
	public ResponseEntity<UrlResource> downloadFile(@PathVariable String member_id, @PathVariable int deal_number, @PathVariable int dealFile_number, HttpSession session) throws MalformedURLException, FileNotFoundException, UnsupportedEncodingException {
//		ResponseEntity<UrlResource> 란?  HttpEntity / ResponseEntity 상속받고있음
//		HttpEntity란? Http의 요청과 응답을 관리하는 객체(요청헤더,바디,응답헤더,바디)
//		ResponseEntity란? 응답데이터를 관리하는 객체 (Http헤더, Http바디, Http상태정보)
//		UrlResource란? 첨부파일 다운로드되는파일객체를 다루기 위해 스프링내부에서 사용하는 객체	
//					  사용자가 링크를 클릭할때 이것은 일반html열기가 아니라 파일을 다운로드 하는것이고,
//                    결국 스프링에있는 File os를 통해서 꺼내게 되는데, 그 File os를 관리하는게 urlResource  
		
		//System.out.println("첨부파일 다운로드 파라미터 체크 : member_id" + member_id +",  " + deal_number+",  " + dealFile_number );
		
		//전달받은 파라미터(글번호,파일번호) 이용해서 파일조회 후, 가져오기
		DealFile_DTO selectFile = service.getFile(deal_number, dealFile_number);
		//System.out.println("첨부파일 다운로드 체크: "+ service.getFile(deal_number, dealFile_number));
		
		//파일명을 이용해서 다운로드할 파일을 객체로 생성하기
		//UrlResource resource = new UrlResource("file:" + 파일의 전체경로)  +@ 업로드될 서버의 경로(Path가 필요) 
		UrlResource resource = new UrlResource("file:" + WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/dealUpload/"+selectFile.getStoreFilename()));
		
		//파일명에 한글이 있는경우 오류 발생치 않도록 처리
		//String encodeFilename = UriUtils.encode(파일이름, "UTF-8");
		String encodeedFilename = UriUtils.encode(selectFile.getOriginalFilename(), "UTF-8");
		String mycontenttype = "attachment; filename=\"" + encodeedFilename + "\""; // \" = "넣기위해
		
		return ResponseEntity.ok() //.ok는 BodyBuilder 사용하며, 정상적으로 200번으로 실행됬을때를말함
				.header(HttpHeaders.CONTENT_DISPOSITION, mycontenttype) //.header(헤더명,헤더value)  // 헤더명 : HttpHeaders.CONTENT_DISPOSITION는 실제 response body의 타입이 뭔지 알려줌(즉 헤더에서, 이건 다운로드야 알려줌)
				.body(resource);  //바디에 실제 다운로드될 resource 넣어줌 
	}
	
	
	
	
	
	
	
	
	
	// 중고거래 게시글등록(+첨부파일)
	@RequestMapping("deal_Write.do")
	public String dealWrite(DealBoard_DTO dto, HttpSession session) throws IllegalStateException, IOException {
		//System.out.println("등록) dto__체크 : " + dto);
		
		// ① List<MultipartFile>정보를 추출하기
		List<MultipartFile> files = dto.getDealFiles(); 
		//System.out.println("List<MultipartFile> files___체크 : "+  files);
		
		// ② 업로드될 서버의 경로 ( 경로 추출을 위해 HttpSession필요)
		String path = WebUtils.getRealPath(session.getServletContext(), "/WEB-INF/dealUpload");
		//spring이 제공하는 WebUtils 클래스. getRealPath메서드( ServletContext, Path )
		//ServletContext객체란? 프로젝트의 context정보(path 등)를 가지고 있는 객체. Path(지정)
		System.out.println("path __________체크 : " + path);
		
		// ③ FileUpload_Service 클래스를 호출해서 실제 서버에 등록되도록 작업
		List<DealFile_DTO> filedtolist =  fileUploadService.uploadFiles(files, path);
		
		//다중첨부시 파일번호주기
		int count =1;
		for(DealFile_DTO filedto : filedtolist) {
			filedto.setDealFile_number(count);
			count++;
		}
		// ④ 게시글 등록에 대한 글 + 첨부되파일의 정보를 DB에 저장
		service.insertFile(dto,filedtolist);
		return "redirect:/deal_listAll2.do?dealType=all";  //리스트페이지로
	}
	
	
	
	
	// 중고거래 게시글등록(글만등록 원본)
//	@RequestMapping("deal_Write.do")
//	public String dealWrite(DealBoard_DTO dto) {
//		service.writeProd(dto);
//		return "redirect:/deal_listAll2.do?dealType=all";
//	}
	
	
	//중고거래게시글 타입별조회(카테고리)
	@RequestMapping("deal_listAll2.do")
	public ModelAndView dealType_list(String dealType) {
		ModelAndView mav = new ModelAndView("deallistAll2");
		List<DealBoard_DTO> listall = service.dealType_list(dealType);
		mav.addObject("dealType",dealType);
		mav.addObject("listall",listall);
		return mav;
	}
	
	
	//중고거래게시글 전체리스트
//	@RequestMapping("deal_listAll.do")
//	public ModelAndView listall() {
//		ModelAndView mav = new ModelAndView("deallistAll");
//		List<DealBoard_DTO> listall = service.boardlist();
//		//System.out.println("listall 찍기체크1 : " + listall);
//		mav.addObject("listall",listall);
//		//System.out.println("listall 찍기체크2 : " + listall);
//		return mav;
//	}
	
	
	
	
	//중고거래게시글 읽기
	@RequestMapping("dealRead.do")
	public ModelAndView dealRead(int deal_number, String state) {
		
		//첨부파일목록 불러오기 위하여작성
		List<DealFile_DTO> filedtolist = service.getFileList(deal_number);
		 
		DealBoard_DTO dealRead = service.dealRead(deal_number);
		String view = "";
		if(state.equals("READ")) {	
			//System.out.println("조회수 처리전 : "+dealRead.getHits()+ "/______/매개변수확인" + deal_number);
			service.hits_update(deal_number);//조회
			//System.out.println("조회수 처리후 : "+dealRead.getHits()  + "/______/매개변수확인" + deal_number);
			view ="dealBoardRead";
		}else {
			System.out.println("컨트롤 업데이트 진입 : " + deal_number); //넘어감
			view ="dealBoardUpdate";
		}
		ModelAndView mav = new ModelAndView(view);
		mav.addObject("dealRead",dealRead);
		mav.addObject("filedtolist",filedtolist); //파일첨부 결과 공유
		//System.out.println("컨트롤 공유 dealread 체크:" + dealRead);
		//System.out.println("찍먹state:" + state);
		return mav;
	}
	
	//중고거래 게시글 수정
	@RequestMapping("dealUpdate.do")
	public String update(DealBoard_DTO dto) {
		//System.out.println("넘어오는가?찍먹1: " + dto);
		//System.out.println("getDeal_number넘어오는가?찍먹1: " + dto.getDeal_number());
		service.update(dto);
		//System.out.println("넘어오는가?찍먹2: " + dto);
		return "redirect:/deal_listAll2.do?dealType=all";
	}
	
	
	
	//중고거래 게시글 삭제
	@RequestMapping("dealDelete.do")
	public String dealDelete(int deal_number) {
		service.dealDelete(deal_number);
		return "redirect:/deal_listAll2.do?dealType=all";
	}
	
	//하단검색
	@RequestMapping("serarchData.do")
	public ModelAndView dataSearch(String tag, String searchData) {
		//System.out.println("tag : " + tag + ",   searchData값 : " +  searchData);
		ModelAndView mav = new ModelAndView("deallistAll");
		List<DealBoard_DTO> listall = service.searchData(tag, searchData);
		mav.addObject("listall", listall);
		return mav;
	}

	
	//중고거래시글 타입-메인 [ajax]
	@RequestMapping(value = "/dealType_main.do", produces = "application/json;charset=utf-8")
	@ResponseBody
	public List<DealBoard_DTO> dealType_main(String dealType){
		//System.out.println("ajax인입 매개변수 체크 : " + dealType);
		List<DealBoard_DTO> ajaxlist = service.dealType_main(dealType);
		//System.out.println("ajax 통신 체크 : " + ajaxlist);
		return ajaxlist;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}



