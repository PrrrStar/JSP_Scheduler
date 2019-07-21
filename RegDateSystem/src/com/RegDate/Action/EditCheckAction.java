package com.RegDate.Action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.RegDate.Model.UploadDAO;
import com.RegDate.Model.UploadVO;


public class EditCheckAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request,HttpServletResponse response) throws IOException {

		

		int upload_no = Integer.parseInt(request.getParameter("upload_no"));
		String upload_pwd = request.getParameter("upload_pwd").trim();
		String db_pwd = request.getParameter("db_pwd").trim();

		System.out.println(request.getParameter("upload_pwd")==request.getParameter("db_pwd"));

		UploadDAO dao = new UploadDAO();
		UploadVO vo = dao.more(upload_no);

		PrintWriter out = response.getWriter();
		
		if(!upload_pwd.equals(db_pwd)) {  // 비밀번호가 일치하지 않는 경우
			out.println("<script>");
			out.println("alert('비밀번호가 틀립니다. 확인 요망')");
			out.println("history.back()");
			out.println("</script>");
		}else {  // 비밀번호가 일치하는 경우
			out.println("<script>");
			out.println("alert('수정폼으로 이동')");
			out.println("location.href='edit.do?no="+upload_no+"'");
			out.println("</script>");
		}
		


		request.setAttribute("VO", vo);


		
	}
	
	
}