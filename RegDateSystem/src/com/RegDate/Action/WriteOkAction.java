package com.RegDate.Action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.RegDate.Model.UploadDAO;
import com.RegDate.Model.UploadVO;
//import java.io.PrintWriter;
public class WriteOkAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// upload_write.jsp ���������� �Ѿ�� �����͸� DB�� �����ϴ� ��Ʈ�ѷ�
	
		int ryear = Integer.parseInt(request.getParameter("year"));
		int rmonth = Integer.parseInt(request.getParameter("month"));
		int rday = Integer.parseInt(request.getParameter("day"));
	
		System.out.println(ryear+"�� "+rmonth+"�� "+rday+"��");
				UploadVO vo = new UploadVO();
				vo.setUpload_name(request.getParameter("upload_name"));
				vo.setUpload_class(request.getParameter("upload_class"));
				vo.setUpload_tel(request.getParameter("upload_tel"));
				vo.setUpload_start_time(request.getParameter("upload_start_time"));
				vo.setUpload_end_time(request.getParameter("upload_end_time"));
				vo.setUpload_comment(request.getParameter("upload_comment"));
				vo.setUpload_writer(request.getParameter("upload_writer"));
				vo.setUpload_pwd(request.getParameter("upload_pwd"));
				vo.setRyear(ryear);
				vo.setRmonth(rmonth);
				vo.setRday(rday);
				
				UploadDAO dao = new UploadDAO();
			
			/*	dao.write(vo, ryear, rmonth, rday);*/	
				
				int res = dao.write(vo, ryear, rmonth, rday);
			
				PrintWriter out = response.getWriter();
				if(vo.getUpload_pwd()==null||vo.getUpload_start_time()==null||vo.getUpload_end_time()==null) {  // ���̾��°��
					out.println("<script>");
					out.println("alert('�ʼ� �Է»����Դϴ�.')");
					out.println("location.href='write.do'");
					out.println("</script>");
				}else {
				if(res > 0) {  // �����Ͱ� ���������� ����� ���
					out.println("<script>");
					out.println("alert('�Խñ� �߰� ����')");
					out.println("location.href='listCont.do?year="+ryear+"&month="+rmonth+"&day="+rday+"'");
					out.println("</script>");
				}else {
					out.println("<script>");
					out.println("alert('�Խñ� �߰� ����')");
					out.println("history.back()");
					out.println("</script>");
				}
				}
	}
	
	
}