package com.RegDate.Action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.RegDate.Model.UploadDAO;

public class CancelOkAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String upload_pwd = request.getParameter("upload_pwd").trim();
		
		// 삭제 폼 페이지에서 히든으로 넘어온 데이터도 처리하자.
		int upload_no = Integer.parseInt(request.getParameter("upload_no"));
		int ryear = Integer.parseInt(request.getParameter("ryear"));
		int rmonth = Integer.parseInt(request.getParameter("rmonth"));
		int rday = Integer.parseInt(request.getParameter("rday"));
	
		String db_pwd = request.getParameter("db_pwd").trim();
		
		UploadDAO dao = new UploadDAO();
		PrintWriter out = response.getWriter();
		
		if(!upload_pwd.equals(db_pwd)) {  // 비밀번호가 일치하지 않는 경우
			out.println("<script>");
			out.println("alert('비밀번호가 틀립니다. 확인 요망')");
			out.println("history.back()");
			out.println("</script>");
		}else {  // 비밀번호가 일치하는 경우
			dao.cancel(upload_no); 
			out.println("<script>");
			out.println("alert('게시물 삭제 성공')");
			out.println("location.href='listCont.do?year="+ryear+"&month="+rmonth+"&day="+rday+"'");
			out.println("</script>");
		}
		
	}

}





