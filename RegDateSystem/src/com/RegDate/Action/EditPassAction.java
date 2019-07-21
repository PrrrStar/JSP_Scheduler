package com.RegDate.Action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.RegDate.Model.UploadDAO;
import com.RegDate.Model.UploadVO;

public class EditPassAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int upload_no = Integer.parseInt(request.getParameter("upload_no"));

		UploadDAO dao = new UploadDAO();
		UploadVO vo = dao.more(upload_no);

		request.setAttribute("VO", vo);

		
	}

}
