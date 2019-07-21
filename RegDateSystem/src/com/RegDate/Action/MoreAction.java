package com.RegDate.Action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.RegDate.Model.UploadDAO;
import com.RegDate.Model.UploadVO;

public class MoreAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// get������� �Ѿ�� �۹�ȣ�� ������ �󼼳����� ��ȸ�ϴ� ��Ʈ�ѷ�
		int upload_no = Integer.parseInt(request.getParameter("no"));
		System.out.println(upload_no);
		UploadDAO dao = new UploadDAO();
		UploadVO vo = dao.more(upload_no);   // �Խù� �� ���� �޼��� ȣ��
		
		request.setAttribute("VO", vo);

	}

}