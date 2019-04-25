package kr.co.sist.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Component;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.sist.dao.JdbcDAO;
import kr.co.sist.vo.MemberVO;

@Component
public class JdbcService {

	@Autowired(required=false)
	private JdbcDAO jdao;
	
	public boolean fileUploadProcess(HttpServletRequest request) throws IOException{
		boolean flag = false;
			
		MultipartRequest mr = new MultipartRequest(request, "C:/dev/workspace/spring_jdbc/WebContent/upload",
				1024*1024*10, "UTF-8", new DefaultFileRenamePolicy());
		System.out.println(mr.getFilesystemName("upfile")+" / "+mr.getOriginalFileName("upfile"));
		
		MemberVO mv = new MemberVO(mr.getParameter("name"), mr.getFilesystemName("upfile"),
				mr.getParameter("loc"), mr.getParameter("highschool"));
		
		try {
			jdao.insertMember(mv);
			request.setAttribute("inputData", mv);
			flag = true;
		} catch (DataAccessException das) {
			das.printStackTrace();
		} // end catch
		
		return flag;
	} // fileUploadProcess
	
} // class
